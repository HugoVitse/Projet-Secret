var bounty = "";
var bountyint = "";
var refreshing = false;

function acttimer(){
    var dateexp = (   Date.now() -  ((Date.now())%(24*60*60*1000))  + 24*60*60*1000 );
    var daten = new Date(dateexp-(Date.now())  - 2*60*60*1000);
    document.querySelector("#timer").textContent = daten.getHours()+"H:"+daten.getMinutes()+"M:"+daten.getSeconds()+"S";


}

function makeAguess(){
    var data="id="+document.getElementById("imgpost").getAttribute("data-id")+"&bounty="+Number(bountyint);
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var tmp = xhttp.responseText
            console.log(tmp);
            document.getElementById("green").classList.add("arrow");
            document.getElementById("green").classList.remove("arrowbright");
            document.getElementById("red").classList.remove("arrowbright");
            document.getElementById("red").classList.add("arrow");
            setTimeout( ()=>{
                if(tmp =="1"){
                    document.getElementById("green").classList.add("arrowbright");
                    document.getElementById("green").classList.remove("arrow");
                    bounty = "";
                    bountyint="";
                    document.getElementById("bounty").innerText= "?";
    
                }
                if(tmp =="2"){
                    document.getElementById("red").classList.add("arrowbright");
                    document.getElementById("red").classList.remove("arrow");
                    document.getElementById("green").classList.add("arrow");
                    document.getElementById("green").classList.remove("arrowbright");
                    bounty = "";
                    bountyint="";
                    document.getElementById("bounty").innerText= "?";
    
                }
                if(tmp =="3"){
                    document.getElementById("green").classList.add("arrowbright");
                    document.getElementById("green").classList.remove("arrow");
                    document.getElementById("red").classList.add("arrowbright");
                    document.getElementById("red").classList.remove("arrow");
                    document.getElementById("bounty").innerText= bounty;
                    setTimeout(  ()=>{
                        document.getElementById("green").setAttribute("style", document.getElementById("green").getAttribute("style").slice(0, document.getElementById("green").getAttribute("style").length -11));
                        document.getElementById("red").setAttribute("style", document.getElementById("red").getAttribute("style").slice(0, document.getElementById("red").getAttribute("style").length -11));
                        document.getElementById("green").classList.add("arrowdisl");
                        document.getElementById("green").classList.remove("arrowbright");
                        document.getElementById("red").classList.add("arrowdisr");
                        document.getElementById("red").classList.remove("arrowbright");
                    },500);

                    setTimeout(  ()=>{
                        document.getElementById("wanted").setAttribute("style", document.getElementById("wanted").getAttribute("style") + ";border:2px solid #a38e16;");
                        document.getElementById("bounty").setAttribute("style", "color:#a38e16");

                        document.querySelector("#sucess").classList.remove("sucessd");
                        document.querySelector("#sucess").classList.add("sucessap");
                        document.querySelector("#nameguess").textContent = document.getElementById("name").textContent;
                        document.querySelector("#imgfel").setAttribute("src","images/"+document.getElementById("imgpost").getAttribute("data-img"));
                        //document.querySelector("#guess").setAttribute("style","top:45%;");
                        setTimeout(()=>{
                            document.querySelector("#sucess").scrollIntoView({ behavior: 'smooth'});
                        },600);
                    
                    


                        setInterval(acttimer,1000);
                    },1000);

                    
    
                }
            },200);
            

        }
    }
    xhttp.open("POST", "guessbounty.php", true);
    xhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xhttp.send(data);
    document.getElementById("i2").innerText = bounty;
    document.cookie = "guessesb="+bounty+";expires=Thu, 31 Dec 2099 23:59:59 GMT";
    
   

}

document.querySelector("html").addEventListener("keydown", (e)=>{

    if(e.code=="Enter" || e.code=="NumpadEnter"){
        makeAguess();
    }
    if(e.code=="Backspace"){
        if(bountyint.length > 0){
            bountyint = bountyint.slice(0,bountyint.length-1);
            bounty="";
            let compt=0;
            let compt2=0;
            while(compt2 < bountyint.length){
                if(  ((bountyint.length) > 3 && ( compt2  == (bountyint.length -3)) ) || ((bountyint.length) > 6 && ( compt2  == (bountyint.length -6)) ) || ((bountyint.length) > 9 && ( compt2  == (bountyint.length -9)) )  ){
                    bounty+=".";
                    compt++;
                }
                bounty += bountyint[compt2];
                compt2++;
                compt++;


            }
            if(bounty.length==0) document.getElementById("bounty").innerText= "?";
            else document.getElementById("bounty").innerText= bounty;
        }
    }
    if(bounty.length <13){
        bounty="";
        var currentletter="";

        if( (e.getModifierState('CapsLock') && (String.fromCharCode(e.keyCode).charCodeAt() >= 48 && String.fromCharCode(e.keyCode).charCodeAt() <=57) )  || ( e.code.includes("Numpad") && (e.code.charCodeAt(6)>= 48 && e.code.charCodeAt(6) <= 57 )  )){
            if( e.code.includes("Numpad")){
                currentletter = e.code.charCodeAt(6) -48;
            }
            else{
                currentletter = String.fromCharCode(e.keyCode).charCodeAt() -48;
            }
            bountyint+=currentletter;
            let compt=0;
            let compt2=0;
            while(compt2 < bountyint.length){
                if(  ((bountyint.length) > 3 && ( compt2  == (bountyint.length -3)) ) || ((bountyint.length) > 6 && ( compt2  == (bountyint.length -6)) ) || ((bountyint.length) > 9 && ( compt2  == (bountyint.length -9)) )  ){
                    bounty+=".";
                    compt++;
                }
                bounty += bountyint[compt2];
                compt2++;
                compt++;


            }
            document.getElementById("bounty").innerText= bounty;

        }
    }

})

if(typeof(cook) != undefined){
    console.log("ok");
    bounty = cook;
    for(var i=0; i< bounty.length;i++){
        if(bounty[i]!=".")bountyint+=bounty[i];
    }
    bountyint = Number(bountyint);
    makeAguess();
}