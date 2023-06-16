<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Práctica 7</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <style>
        .casilla{
            height: 50px;
            font-weight: bold;
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
    </style>
</head>
<body>
    <?php
        $colores = ["#b2d8d8", "#66b2b2", "#008080", "#006666", "#004c4c"];
        $letra = "aquamarine";
    ?>
    <div class="container">
        <h1>Práctica 7 - Tablero de serpientes y escaleras</h1><hr>
        <form action="practica007.php" method="POST">
            <input type="submit" value="Jugar" class="btn btn-success">
            <div class="row">
            <?php
                        for($i=100; $i>0; $i--){
                            if($i == 4 || $i == 9 || $i == 33 || $i == 28 || $i == 40 || $i == 80 ||$i == 71 ||$i == 77){
                                echo "<div class='col-1 card m-1 casilla escalera' style='background-color:".$colores[rand(0,4)].";'>".$i."</div>";
                            } else if($i == 17 || $i == 54 || $i == 58 || $i == 64 || $i == 87 || $i == 93 ||$i == 95 ||$i == 99 ||$i == 36){
                                echo "<div class='col-1 card m-1 casilla serpiente' style='background-color:".$colores[rand(0,4)].";'>".$i."</div>";
                            } else {
                                echo "<div class='col-1 card m-1 casilla' style='background-color:".$colores[rand(0,4)].";'>".$i."</div>";
                            }
                    }
                ?>
            </div>
        </form>
    </div>
    
</body>
</html>