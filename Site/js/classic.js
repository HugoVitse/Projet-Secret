
var inp = document.querySelector("#saisie");
var text =" ";
var newid = " ";
var newdisplay = "";
var guess="";
var guessid = -1;
var divguess = document.getElementById("guesslist");
var listtry = [];
var count = 0;
var isstarted = false;

inp.addEventListener("keydown", display);
function makeAguess(){
    console.log(guessid);
    listtry[count] = guess;
    count++;
    console.log(guess);
    var data ="id="+guessid;
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
        // Typical action to be performed when the document is ready:
            var tmp = xhttp.responseText.split(":");
            console.log(xhttp.responseText);
            console.log(tmp);
            var newDiv = document.createElement("div");
            divguess.prepend(newDiv);
            newDiv.classList.add("tryguess");
            let newC = document.createElement("div");
            newC.classList.add("essai");
            newC.setAttribute("style","background-image: url(images/"+tmp[19]+");");
            newDiv.appendChild(newC);
            for(var i=0; i< 8;i++){
                let newC = document.createElement("div");
                if(tmp[2*i+4] == 1) newC.setAttribute("style","background-color:green");
                if(tmp[2*i+4] == 2) newC.setAttribute("style","background-color:orange");
                if(tmp[2*i+4] == 3) newC.setAttribute("style","background-color:red");
                newC.classList.add("essaipreflip");
                let newP = document.createElement("p");
                let newContent = document.createTextNode(tmp[2*i+3]);
                newP.appendChild(newContent);
                newC.appendChild(newP);
                newDiv.appendChild(newC);
                setTimeout(()=>{
                    newC.classList.remove("essaipreflip");
                    newC.classList.add("essai");
                },700*i);
                
            }
            


        }
    };
    xhttp.open("POST", "guess.php", true);
    xhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xhttp.send(data);

}


function display(e){
    if(e.code == "Enter"){
        text = inp.value;
        let firstletter=0;
        if(text.length == 0) firstletter = 0;
        else firstletter = (text[0]).charCodeAt();
        if(firstletter!=0){
            if(isstarted == false){
                isstarted = true;
                document.querySelector("#forhead").classList.add("foreheadopa");
                document.querySelector("#forhead").classList.remove("foreheade");
                document.querySelector("hr").classList.add("hrrOpa");
                document.querySelector("hr").classList.remove("hrr");
    
            }
            newid = "#letter" + (firstletter-97);
            newdisplay = document.querySelector(newid);

            var children = newdisplay.childNodes;
            for(var i=0; i< children.length -1;i++){
                if(children[i].classList.contains("persobox")) {
                    guess = children[i].getAttribute("id");
                    guessid = ((document.getElementById(guess).childNodes)[3]).getAttribute("id");
                    inp.value="";
                    newdisplay.classList.remove("alphabeticalopa");
                    newdisplay.classList.add("alphabetical");
                    (children[i]).classList.remove("persobox");
                    (children[i]).classList.add("persoboxtr");
                    makeAguess(guessid);
                    break;
                }
                
            }
        }
    }
    else{
        setTimeout( ()=>{
            text = inp.value.toLowerCase();
            let firstletter=0;
            if(text.length == 0) firstletter = 0;
            else firstletter = (text[0]).charCodeAt();
            if(firstletter==0){
                if(newdisplay.length !=0){
                    newdisplay.classList.remove("alphabeticalopa");
                    newdisplay.classList.add("alphabetical");
                }
            }
            else{
                newid = "#letter" + (firstletter-97);
                newdisplay = document.querySelector(newid);
                var children = newdisplay.childNodes;
                for(var i=0; i< children.length -1;i++){
                    console.log(listtry.includes((children[i]).getAttribute("id")));
                    if(   listtry.includes((children[i]).getAttribute("id")) != true) {
                        (children[i]).classList.add("persobox");
                        (children[i]).classList.remove("persoboxtr");
                    }
                  
                }
                newdisplay.classList.remove("alphabetical");
                newdisplay.classList.add("alphabeticalopa");
                for(var i=0; i< children.length -1;i++){
                    if(children[i].getAttribute("id").toLowerCase().indexOf(text) != 0){
                        (children[i]).classList.remove("persobox");
                        (children[i]).classList.add("persoboxtr");
                    }
                }
            }
        },10);
    }

}

