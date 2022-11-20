<html>
    <?php
        //if(!(isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on')) header("Location:https://onedle.rf.gd/bounty.php");
        if(isset($_COOKIE["guessesb"])) {
            $vart = $_COOKIE["guessesb"];
            echo "<script> var cook = '".$vart."';</script>";
        }
        include "connexion.php";
        include "dailyguess.php";
        $requete = "SELECT bountyid From dailyid";
        $result = mysqli_query($connexion,$requete);
        $row = mysqli_fetch_assoc($result);
        $name = $row["bountyid"];
        $requete2 = "SELECT name,image FROM persosprime WHERE id=$name";
        $result2 = mysqli_query($connexion,$requete2);
        $row2 = mysqli_fetch_assoc($result2);
        $name2 = $row2["name"];
        $img = $row2["image"];
        $phr = "background-image:url('images/$img')";
    ?>
    <head>
        <link rel="stylesheet" href="css/bounty.css">
        <title> Onedle </title>
    </head>


    <body>
        <img id="background" src="images/bg.png">
        <a href="index.php" id="logo"><img  src="images/logo.png"></a>
        <div id="indications">
            <p>Devinez la prime du jour !</p>
        </div>
        <img class="arrow" id="green"src="images/greenarrow.png">
        <img class="arrow" id="red" src="images/redarrow.png">
        <div id="wanted">
            <img src="images/wanted.png">
            <?php echo"
            <div id='imgpost' data-img =$img data-id=$name style=$phr></div>
            <p id='name'> $name2 </p>";
            mysqli_close($connexion);
            ?>
            <p id="bounty">?</p>
        </div>

        <div id="actualguess">
            <p id="i1"> Dernière proposition </p>
            <div id="montant">
                <div id="i2"><?php if(isset($_COOKIE["guessesb"])) echo $_COOKIE["guessesb"] ?></div>
                <img id="berry" src="images/berry.png">
            </div>
            
        </div>

        <div class="sucessd" id="sucess">
            <p id="msgfel"> Bien joué ! </p>
            <img src="images/luffy.png" id="imgfel">
            <p id="youguess"> Vous avez trouvé :&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp </p>
            <p id="nameguess">Monkey D. Luffy </p>
            <p id="nextin"> Prochain perso dans </p>
            <p id="timer"></p>
            <a id="lobby" href="quote.php">
                <img src="images/quote.png">
                <p id="nextgame"> Citation </p>
            </a>

        </div>

       <script>
            let coef =(1/2*((document.querySelector("body").clientHeight)))/ (document.querySelector("#wanted").clientHeight);
                let hei = (document.querySelector("#wanted").clientHeight) - coef*(document.querySelector("#wanted").clientHeight);
                let newz = "transform:translate(-50%, -"+hei/2+"px) scale("+coef+")";
                document.querySelector("#green").setAttribute("style","transform:translateY(-"+hei/2+"px) scale("+coef+"); left:"+(document.querySelector("#wanted").offsetLeft -0.5*(document.querySelector("#wanted").clientWidth) - 550 )+"px;");
                document.querySelector("#red").setAttribute("style","transform:translateY(-"+hei/2+"px) scale("+coef+"); right:"+(document.querySelector("#wanted").offsetLeft -0.5*(document.querySelector("#wanted").clientWidth)- 550 )+"px;");
                document.querySelector("#wanted").setAttribute("style",newz);
            addEventListener("resize", (event) => {
                let coef =(1/2*((document.querySelector("body").clientHeight)))/ (document.querySelector("#wanted").clientHeight);
                let hei = (document.querySelector("#wanted").clientHeight) - coef*(document.querySelector("#wanted").clientHeight);
                let newz = "transform:translate(-50%, -"+hei/2+"px) scale("+coef+")";
                document.querySelector("#wanted").setAttribute("style",newz);
                document.querySelector("#green").setAttribute("style","transform:translateY(-"+hei/2+"px) scale("+coef+"); left:"+(document.querySelector("#wanted").offsetLeft -0.5*(document.querySelector("#wanted").clientWidth) - 550 )+"px;");
                document.querySelector("#red").setAttribute("style","transform:translateY(-"+hei/2+"px) scale("+coef+"); right:"+(document.querySelector("#wanted").offsetLeft -0.5*(document.querySelector("#wanted").clientWidth)- 550 )+"px;");


            });
        </script>

        <script src="js/bounty.js"></script>
        
    </body>


</html>