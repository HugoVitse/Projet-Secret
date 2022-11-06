
var inp = document.querySelector("#saisie");
var text =" ";
var newid = " ";
var newdisplay = "";
var guess="";
var guessid = -1;
var divguess = document.getElementById("guess");

inp.addEventListener("keydown", display);
function makeAguess(guessid){
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
            newDiv.classList.add("tryguess");
            let newC = document.createElement("div");
            newC.classList.add("essai");
            let newContent = document.createTextNode(tmp[19]);
            newC.appendChild(newContent);
            newDiv.appendChild(newC);
            for(var i=0; i< 8;i++){
                let newC = document.createElement("div");
                if(tmp[2*i+4] == 1) newC.setAttribute("style","background-color:green");
                if(tmp[2*i+4] == 2) newC.setAttribute("style","background-color:orange");
                if(tmp[2*i+4] == 3) newC.setAttribute("style","background-color:red");
                newC.classList.add("essai");
                let newP = document.createElement("p");
                let newContent = document.createTextNode(tmp[2*i+3]);
                newP.appendChild(newContent);
                newC.appendChild(newP);
                newDiv.appendChild(newC);
            }
            divguess.appendChild(newDiv);


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
            newid = "#letter" + (firstletter-97);
            newdisplay = document.querySelector(newid);
            var children = newdisplay.childNodes;
            for(var i=0; i< children.length -1;i++){
                if(children[i].classList.contains("persobox")) {
                    guess = children[i].getAttribute("id");
                    guessid = ((document.getElementById(guess).childNodes)[1]).getAttribute("id");
                    inp.value="";
                    newdisplay.classList.remove("alphabeticalopa");
                    newdisplay.classList.add("alphabetical");
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
                var children = newdisplay.childNodes
                for(var i=0; i< children.length -1;i++){
                    (children[i]).classList.add("persobox");
                    (children[i]).classList.remove("persoboxtr");
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

