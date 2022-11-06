
var inp = document.querySelector("#saisie");
var text =" ";
var newid = " ";
var newdisplay = "";
var guess="";
var guessid = -1;

inp.addEventListener("keydown", display);
function makeAguess(guessid){
    console.log(guess);
    var data ="id="+guessid;
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
        // Typical action to be performed when the document is ready:
            console.log(xhttp.responseText);
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
            text = inp.value;
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

