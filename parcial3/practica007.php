<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Práctica 7</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <style>
        .casilla{
            height: 50px;
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
        <form action="">
            <div class="row">
                <?php
                    for($i=100; $i>0; $i--){
                        if($i == 4 ||$i == 9 ||$i == 20 ||$i == 28 ||$i == 40 ||$i = 63 ||$i == 71|| $i == 77|| $i == 80){
                            echo "<div class='col-1 card m-1 casilla escalera' style='background-color:".$colores[rand(0,4)].";color:".$letra."'>".($i)."</div>";
                        }else if($i == 17 ||$i == 54 ||$i == 62 ||$i == 64 ||$i == 87 ||$i == 93 ||$i == 95 ||$i == 99){
                            echo "<div class='col-1 card m-1 casilla serpiente' style='background-color:".$colores[rand(0,4)].";color:".$letra."'>".($i)."</div>";
                        }else{
                            echo "<div class='col-1 card m-1 casilla' style='background-color:".$colores[rand(0,4)].";color:".$letra."'>".($i)."</div>";
                        }
                    }
                ?>
            </div>
        </form>
    </div>
    
</body>
</html>