<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Práctica 7</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <style>
        .casilla{
            height: 50px;
            /* font-weight: bold; */
        }
        .escalera{
            background-image: url('Escalerilla.png');
            background-size: cover;
        }
        .serpiente{
            background-image: url('serpiente.png');
            background-size: contain;
            background-repeat: no-repeat;
            background-position: center;
        }
        .ficha{
            background-image: url('ficha.png');
            background-size: contain;
            background-repeat: no-repeat;
            background-position: center;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Práctica 7 - Tablero de serpientes y escaleras</h1><hr>
        <form action="practica007.php" method="POST">
            <input type="submit" value="Jugar" class="btn btn-success"><hr>
            <div class="row">
            <?php
                $colores = ["#b2d8d8", "#66b2b2", "#008080", "#006666", "#004c4c"];
                $letra = "aquamarine";
                if(isset($_POST["casilla"])){
                    $dado = rand(1,12);
                    echo "<h2> Resutado del DADO = ".$dado."</h2>";
                    $casilla = $dado + intval($_POST["casilla"]);
                    echo "<h3>El jugador estaba en la casilla ".intval($_POST["casilla"])." y pasó a la casilla ".$casilla."</h3>";
                    if($casilla == 100){
                        echo "<h1> El jugador ganó</h1>";
                        $casilla = 100;
                    }else if($casilla > 100){
                        $casilla = 100 - ($casilla - 100);
                        echo "<h3>El jugador estaba en la casilla ".intval($_POST["casilla"])." y se pasó por ".(100 - $casilla)." casillas y pasó a la casilla ".$casilla."</h3>";
                    }
                    if($casilla == 4){ 
                        $casilla = 15;
                        echo "<h3> El jugador cayó en una escalera y subió a la casilla 15 </h3>";
                    }
                    if($casilla == 9){
                        $casilla = 20;
                        echo "<h3> El jugador cayó en una escalera y subió a la casilla 20 </h3>";
                    }
                    if($casilla == 28){
                        $casilla = 39;
                        echo "<h3> El jugador cayó en una escalera y subió a la casilla 39 </h3>";
                    }
                    if($casilla == 33){
                        $casilla = 44;
                        echo "<h3> El jugador cayó en una escalera y subió a la casilla 44 </h3>";
                    }
                    if($casilla == 40){
                        $casilla = 51;
                        echo "<h3> El jugador cayó en una escalera y subió a la casilla 51 </h3>";
                    }
                    if($casilla == 71){
                        $casilla = 82;
                        echo "<h3> El jugador cayó en una escalera y subió a la casilla 82 </h3>";
                    }
                    if($casilla == 77){
                        $casilla = 88;
                        echo "<h3> El jugador cayó en una escalera y subió a la casilla 88 </h3>";
                    }
                    if($casilla == 80){
                        $casilla = 91;
                        echo "<h3> El jugador cayó en una escalera y subió a la casilla 91 </h3>";
                    }
                    if($casilla == 17){
                        $casilla = 6;
                        echo "<h3> El jugador cayó en una serpiente y bajó a la casilla 6 </h3>";
                    }
                    if($casilla == 36){
                        $casilla = 25;
                        echo "<h3> El jugador cayó en una serpiente y bajó a la casilla 25 </h3>";
                    }
                    if($casilla == 54){
                        $casilla = 43;
                        echo "<h3> El jugador cayó en una serpiente y bajó a la casilla 43 </h3>";
                    }
                    if($casilla == 58){
                        $casilla = 47;
                        echo "<h3> El jugador cayó en una serpiente y bajó a la casilla 47 </h3>";
                    }
                    if($casilla == 64){
                        $casilla = 53;
                        echo "<h3> El jugador cayó en una serpiente y bajó a la casilla 53 </h3>";
                    }
                    if($casilla == 87){
                        $casilla = 76;
                        echo "<h3> El jugador cayó en una serpiente y bajó a la casilla 76 </h3>";
                    }
                    if($casilla == 93){
                        $casilla = 82;
                        echo "<h3> El jugador cayó en una serpiente y bajó a la casilla 82 </h3>";
                    }
                    if($casilla == 95){
                        $casilla = 84;
                        echo "<h3> El jugador cayó en una serpiente y bajó a la casilla 84 </h3>";
                    }
                    if($casilla == 99){
                        $casilla = 88;
                        echo "<h3> El jugador cayó en una serpiente y bajó a la casilla 88 </h3>";
                    }
                }else{
                    $casilla = 0;
                }
                for($i=100; $i>0; $i--){
                    if($casilla == $i){
                        echo "<div class='col-1 card m-1 casilla ficha' style='background-color:".$colores[rand(0,4)].";color:".$letra."'>".$i."</div>";
                    }else if($i == 4 || $i == 9 || $i == 33 || $i == 28 || $i == 40 || $i == 80 ||$i == 71 ||$i == 77){
                        echo "<div class='col-1 card m-1 casilla escalera' style='background-color:".$colores[rand(0,4)].";color:".$letra."'>".$i."</div>";
                    } else if($i == 17 || $i == 54 || $i == 58 || $i == 64 || $i == 87 || $i == 93 ||$i == 95 ||$i == 99 ||$i == 36){
                        echo "<div class='col-1 card m-1 casilla serpiente' style='background-color:".$colores[rand(0,4)].";color:".$letra."'>".$i."</div>";
                    } else {
                        echo "<div class='col-1 card m-1 casilla' style='background-color:".$colores[rand(0,4)].";color:".$letra."'>".$i."</div>";
                    }
                }
                ?>
            </div>
            <input type="hidden" name="casilla" value="<?php echo $casilla; ?>">
        </form>
    </div>
    
</body>
</html>