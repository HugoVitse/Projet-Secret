
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
var actualchild = -1;
var refreshing = false;
var incr=0;
var inter=0;
var countguess=1;

function acttimer(){
    var dateexp = (   Date.now() -  ((Date.now())%(24*60*60*1000))  + 24*60*60*1000 );
    var daten = new Date(dateexp-(Date.now())  - 2*60*60*1000);
    document.querySelector("#timer").textContent = daten.getHours()+"H:"+daten.getMinutes()+"M:"+daten.getSeconds()+"S";


}
function refreshgues(){
    if(incr == tabgues.length-1) clearInterval(inter);
    else{
        guessid=tabgues[incr];
        guess = document.getElementById(guessid).parentElement.getAttribute("id");
        makeAguess();
        incr+=1;
    }

    


}



function getCookie(cname) {
    let name = cname + "=";
    let decodedCookie = decodeURIComponent(document.cookie);
    let ca = decodedCookie.split(';');
    for(let i = 0; i <ca.length; i++) {
      let c = ca[i];
      while (c.charAt(0) == ' ') {
        c = c.substring(1);
      }
      if (c.indexOf(name) == 0) {
        return c.substring(name.length, c.length);
      }
    }
    return "";
}




function makeAguess(){
    console.log(guessid);
    listtry[count] = guessid;
    count++;
    if(refreshing==false){
        var dateexp = new Date( (Date.now()) +172800);
        if(document.cookie.length==0) document.cookie = "guessesq="+guessid+"a;expires=Thu, 31 Dec 2099 23:59:59 GMT";
        else document.cookie = "guessesq="+getCookie("guessesq")+guessid+"a;expires=Thu, 31 Dec 2099 23:59:59 GMT";
    }
    console.log(guess);
    var data ="id="+guessid;
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
        // Typical action to be performed when the document is ready:
            var tmp = xhttp.responseText;
            console.log(tmp);
            if(tmp =="false"){
                countguess++;
                let newC = document.createElement("div");
                newC.classList.add("guesstry");
                let newImg = document.createElement("img");
                console.log(guess);
                newImg.setAttribute("src", ((document.getElementById(guess).childNodes)[5]).getAttribute("src"));
                newC.appendChild(newImg);
                let NewP = document.createElement("p");
                let newContent = document.createTextNode(((document.getElementById(guess).childNodes)[7]).textContent);
                NewP.appendChild(newContent);
                newC.appendChild(NewP);
                document.querySelector("#guesslist").prepend(newC);
            }
            if(tmp=="true"){
                var imgsuc = document.createElement("img");
                imgsuc.setAttribute("src","images/"+tss);
                imgsuc.setAttribute("id","imgsucc");
                document.querySelector("#nextin").insertAdjacentElement('beforebegin',imgsuc);
                let newC = document.createElement("div");
                newC.classList.add("guesstrysuc");
                let newImg = document.createElement("img");
                newImg.setAttribute("src", ((document.getElementById(guess).childNodes)[5]).getAttribute("src"));
                newC.appendChild(newImg);
                let NewP = document.createElement("p");
                let newContent = document.createTextNode(((document.getElementById(guess).childNodes)[7]).textContent);
                NewP.appendChild(newContent);
                newC.appendChild(NewP);
                document.querySelector("#guesslist").prepend(newC);

                document.querySelector("#searchbar").classList.remove("searchbarOK");
                document.querySelector("#searchbar").classList.add("searchbarPAS");
                document.querySelector("#sucess").classList.remove("sucessd");
                document.querySelector("#sucess").classList.add("sucessap");
                document.querySelector("#nameguess").textContent = ((document.getElementById(guess).childNodes)[7]).textContent;
                document.querySelector("#imgfel").setAttribute("src",((document.getElementById(guess).childNodes)[5]).getAttribute("src"));
                if(refreshing==false){
                    setTimeout(()=>{
                        document.querySelector("#sucess").scrollIntoView({ behavior: 'smooth'});
                    },200);
                    
                }


                setInterval(acttimer,1000);

            }
        };
        

    }
    xhttp.open("POST", "guessquote.php", true);
    xhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xhttp.send(data);
}

if(typeof(tabgues)!="undefined"){
    if(tabgues.length >1){
        refreshing=true;

        inter = setInterval(refreshgues,200);

        setTimeout(()=>{
            refreshing=false;
            document.querySelector("#sucess").scrollIntoView({ behavior: 'smooth'});
        },(tabgues.length+2)*100);
        
    }
}

function display(e){
    if(e.code=="ArrowDown"){
        listchildr = newdisplay.childNodes;
        if(actualchild-5 >=0){
            console.log("ok");
            newdisplay.scrollTop = (actualchild-4)*44;
            console.log(newdisplay.scrollTop);
        }
        
        let k = 1;
        if(actualchild==-1){
            while(listchildr[actualchild+k].classList.contains("persoboxtr")){
                if(k+1 < listchildr.length) k++;
            } 
            actualchild+=k;
            ((listchildr[actualchild].childNodes)[7]).classList.add("paraselect");
            ((listchildr[actualchild].childNodes)[7]).classList.remove("paraguess");
        }
        else{
            var l = listchildr.length -2;
            while(l>=0 && listchildr[l].classList.contains("persoboxtr")) l--;
         


            if(actualchild < l){
                ((listchildr[actualchild].childNodes)[7]).classList.remove("paraselect");
                ((listchildr[actualchild].childNodes)[7]).classList.add("paraguess");
                console.log(l);
                while((listchildr[actualchild+k].classList.contains("persoboxtr"))){
                    console.log(actualchild)
                    if(actualchild+k+1 <= l) k++;
                }
                actualchild+=k;
                ((listchildr[actualchild].childNodes)[7]).classList.add("paraselect");
                ((listchildr[actualchild].childNodes)[7]).classList.remove("paraguess");
                
            }

            
        }
        
        
    }
    else{
        if(e.code=="ArrowUp"){
            listchildr = newdisplay.childNodes;
            let k = 1;
            if(actualchild+5 < listchildr.length){
                console.log("ok");
                newdisplay.scrollTop = (actualchild-1)*44;
                console.log(newdisplay.scrollTop);
            }
            if(actualchild!=-1){
                var l = 0;
                console.log(listchildr.length);

                while(listchildr[l].classList.contains("persoboxtr")) l++;
                /*
                for(var t=0; t<listchildr.length-2;t++){
                    if(listchildr[t].classList.contains("persoboxtr"))l= t;
                }*/
                console.log(l);
                if(actualchild > l){
                    console.log("ok");
                    ((listchildr[actualchild].childNodes)[7]).classList.remove("paraselect");
                    ((listchildr[actualchild].childNodes)[7]).classList.add("paraguess");
                    while(listchildr[actualchild-k].classList.contains("persoboxtr")){
                        console.log(k);
                        if(actualchild-k-1 >= l) k++;
                        console.log(k);
                    }
                    actualchild-=k;
                    ((listchildr[actualchild].childNodes)[7]).classList.add("paraselect");
                    ((listchildr[actualchild].childNodes)[7]).classList.remove("paraguess");
                }
               
                
                
            }
         
            
            
            
        }
        else{
            if(e.code == "Enter" || e.code == "NumpadEnter"){
                if(actualchild==-1)actualchild=0;
                text = inp.value;
                let firstletter=0;
                if(text.length == 0) firstletter = 0;
                else firstletter = (text[0]).charCodeAt();
                if(firstletter!=0){
                    
                    newid = "#letter" + (firstletter-97);
                    newdisplay = document.querySelector(newid);

                    var children = newdisplay.childNodes;
                    if(actualchild==0){
                        for(var i=0; i< children.length -1;i++){
                    
                            if(children[i].classList.contains("persobox")) {
                                guess = children[i].getAttribute("id");
                                guessid = ((document.getElementById(guess).childNodes)[3]).getAttribute("id");
                                inp.value="";
                                newdisplay.classList.remove("alphabeticalopa");
                                newdisplay.classList.add("alphabetical");
                                actualchild=-1;
                                newdisplay.scrollTop =0;
                                (children[i]).classList.remove("persobox");
                                (children[i]).classList.add("persoboxtr");
                                makeAguess(guessid);
                                break;
                            }
                        }
                    }
                    else{
                        guess = children[actualchild].getAttribute("id");
                        guessid = ((document.getElementById(guess).childNodes)[3]).getAttribute("id");
                        inp.value="";
                        newdisplay.classList.remove("alphabeticalopa");
                        newdisplay.classList.add("alphabetical");
                        
                        (children[actualchild]).classList.remove("persobox");
                        (children[actualchild]).classList.add("persoboxtr");
                        actualchild=-1;
                        newdisplay.scrollTop =0;
                    
                        makeAguess(guessid);
                    }
                        
                        
                    
                }
            }
            else{
                setTimeout( ()=>{
                    text = inp.value.toLowerCase();
                    let firstletter=0;
                    if(text.length == 0) firstletter = 0;
                    else firstletter = (text[0]).charCodeAt();
                    if(firstletter <97 || firstletter > (97+25)) firstletter=0;
                    if(firstletter==0){
                        if(newdisplay.length !=0){
                            newdisplay.classList.remove("alphabeticalopa");
                            newdisplay.classList.add("alphabetical");
                            actualchild=-1;
                            newdisplay.scrollTop =0;
                        }
                    }
                    else{
                        newid = "#letter" + (firstletter-97);
                        newdisplay = document.querySelector(newid);
                        var children = newdisplay.childNodes;
                        for(var i=0; i< children.length -1;i++){
                            console.log(listtry);
                            if(   listtry.includes((((children[i]).childNodes)[3]).getAttribute("id")) != true) {
                                (children[i]).classList.add("persobox");
                                (children[i]).classList.remove("persoboxtr");
                                ((children[i].childNodes)[7]).classList.remove("paraselect");
                                ((children[i].childNodes)[7]).classList.add("paraguess");
                            }
                            else{
                                (children[i]).classList.remove("persobox");
                                (children[i]).classList.add("persoboxtr");
                            }
                        
                        }
                        newdisplay.classList.remove("alphabetical");
                        newdisplay.classList.add("alphabeticalopa");
                        for(var i=0; i< children.length -1;i++){
                            var alname = children[i].getAttribute("id").split(" ");
                            console.log(alname);
                            var testo = false;
                            for(var j=0; j< alname.length-1;j++){ 
                                if((alname[j]).toLowerCase().indexOf(text) == 0){
                                    testo = true;
                                }
                            }
                            console.log(testo);
                            if(testo == false){
                                (children[i]).classList.remove("persobox");
                                (children[i]).classList.add("persoboxtr");
                            }
                            
                        }
                    }
                },10);
            }

        }
    }
}

inp.addEventListener("keydown", display);

inp.addEventListener('focusout', ()=>{
    if((newdisplay)!=""){
        setTimeout( ()=>{
            newdisplay.classList.remove("alphabeticalopa");
            newdisplay.classList.add("alphabetical");
            actualchild=-1;
            newdisplay.scrollTop =0;
            inp.value="";
        },50);
        
    }
});


