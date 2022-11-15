
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



function elementPosition (a) {
    var b = a.getBoundingClientRect();
    return (b.y || b.top);
 }

function refreshgues(){
    if(incr == tabgues.length-1) clearInterval(inter);
    else{
        console.log(incr);
        guessid=tabgues[incr]
        console.log(guessid);
        makeAguess();
        incr+=1;
    }

    


}
inp.addEventListener("keydown", display);
document.querySelector("#button").addEventListener("click",()=>{
    if(actualchild==-1)actualchild=0;
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


});

if(typeof(tabgues)!="undefined"){
    isstarted = true;
    document.querySelector("#forhead").classList.add("foreheadopa");
    document.querySelector("#forhead").classList.remove("foreheade");
    document.querySelector("hr").classList.add("hrrOpa");
    document.querySelector("hr").classList.remove("hrr");
    if(tabgues.length >1){
        refreshing=true;
        console.log(tabgues[incr]);

        inter = setInterval(refreshgues,100);

        setTimeout(()=>{
            refreshing=false;
            document.querySelector("#sucess").scrollIntoView({ behavior: 'smooth'});
        },(tabgues.length+2)*100);
        
    }
}


function acttimer(){
    var dateexp = (   Date.now() -  ((Date.now())%(24*60*60*1000))  + 24*60*60*1000 );
    var daten = new Date(dateexp-(Date.now())  - 2*60*60*1000);
    document.querySelector("#timer").textContent = daten.getHours()+"H:"+daten.getMinutes()+"M:"+daten.getSeconds()+"S";


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
        if(document.cookie.length==0) document.cookie = "guesses="+guessid+"a;expires=Thu, 31 Dec 2099 23:59:59 GMT";
        else document.cookie = "guesses="+getCookie("guesses")+guessid+"a;expires=Thu, 31 Dec 2099 23:59:59 GMT";
    }
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
			console.log(tmp);
            newC.setAttribute("style","background-image: url(images/"+tmp[22]+");");
            newC.classList.add("imgessai");
            newDiv.appendChild(newC);
            for(var i=0; i< 9;i++){
                let newC = document.createElement("div");
                if(tmp[2*i+4] == 1) newC.setAttribute("style","background-color:green");
                if(tmp[2*i+4] == 2) newC.setAttribute("style","background-color:orange");
                if(tmp[2*i+4] == 3) newC.setAttribute("style","background-color:red");
                if(refreshing == false)newC.classList.add("essaipreflip");
                let newP = document.createElement("p");
                let newContent = document.createTextNode(tmp[2*i+3]);
                newP.appendChild(newContent);
                newC.appendChild(newP);
                newDiv.appendChild(newC);
                if(refreshing == false){
                    setTimeout(()=>{
                        newC.classList.remove("essaipreflip");
                        newC.classList.add("essai");
                    },700*i);
                }
                else{
                    newC.classList.add("essai");
                }
                
            }
            if(tmp[0]=="true"){
                document.querySelector("#searchbar").classList.remove("searchbarOK");
                document.querySelector("#searchbar").classList.add("searchbarPAS");
                document.querySelector("#sucess").classList.remove("sucessd");
                document.querySelector("#sucess").classList.add("sucessap");
                document.querySelector("#nameguess").textContent = tmp[3];
                document.querySelector("#imgfel").setAttribute("src","images/"+tmp[22]);
                document.querySelector("#guess").setAttribute("style","top:45%;");
                if(refreshing==false){
                    setTimeout(()=>{
                        document.querySelector("#sucess").scrollIntoView({ behavior: 'smooth'});
                    },5600);
                    
                }


                setInterval(acttimer,1000);
                
            }
            


        }
    };
    xhttp.open("POST", "guess.php", true);
    xhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xhttp.send(data);

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

document.querySelector("#infos").addEventListener("click",()=>{
    document.querySelector("#informations").classList.add("infoss");
    document.querySelector("#informations").classList.remove("infossd");
});


document.addEventListener("mouseup",function(event){
    var obj = document.getElementById("informations");
    if ( !obj.contains(event.target) ) {
        document.querySelector("#informations").classList.add("infossd");
        document.querySelector("#informations").classList.remove("infoss");

    }

});


