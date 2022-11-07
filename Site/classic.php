<html>
    <?php
        include "connexion.php";
        include "dailyguess.php";
        $requete = "SELECT * From persos";
        $result = mysqli_query($connexion,$requete);
        $size = mysqli_num_rows($result);
        $i=0;
        while($row = mysqli_fetch_assoc($result)){

            $persos[$i] = $row;
            $i++;
        
        }

    
    
    ?>

    <head>
        <link rel="stylesheet" href="css/classic.css">
    </head>


    <body>
        <img id="background" src="images/bg.png">
        <a href="index.php" id="logo"><img  src="images/logo.png"></a>
        <div id="indications">
            <p>Devinez le personnage du jour !</p>
        </div>
        <div id="searchbar">
            <img src="images/searchbar.png">
            <input id="saisie" type="text">
            <img id ="button" src="images/button.png">
            <?php
            
                for($i=0;$i<26;$i++){
                    echo"
                        <div class='alphabetical' id='letter$i'>";
                            for($j=0; $j<$size;$j++){
                                $actrow = $persos[$j];
                                $actname = $actrow['nom'];
                                $actid = $actrow['id'];
                                if((strtolower($actname))[0] == chr($i+97)){
                                    echo "<div class='persobox' id='$actname'>
                                            <div id='$actid' style='display:none'></div>
                                            <p> $actname </p>


                                          </div>";
                                }
                            }

                    echo"
                        </div>
                    
                    
                    
                    ";
                }
                mysqli_close($connexion);
            ?>
        </div>

        <div id="guess">
           <div class ="foreheade" id="forhead">
                <p class="entete">Personnage</p>
                <p class="entete">Nom</p>
                <p class="entete">Fruit du Démon</p>
                <p class="entete">Haki</p>
                <p class="entete">Genre</p>
                <p class="entete">Occupation</p>
                <p class="entete">Espèce</p>
                <p class="entete">Océan d'origine</p>
                <p class="entete">Style de combat</p>
           </div>
           <hr class="hrr">
           <div id="guesslist">
            </div>
            <div id="resaux">
                <a id="twitter">
                    <img src="images/twitter.png">
                </a>
                <div id="infos">
                    <img src="images/infos.png">

                </div>
                <p id="copyright"> Onedle - 2022 </p>
            </div>
        </div>

        
        <script src="js/classic.js"></script>
    </body>



</html>