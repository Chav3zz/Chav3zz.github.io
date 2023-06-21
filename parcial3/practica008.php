<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Practica 8</title>
    <link rel="stylesheet" href="css/bootstrap.css">
</head>
<body>
    <div class="container">
        <h1>Juego de la Lotería</h1>
        <form action="practica008.php" method="POST">
            <input type="submit" value="Dar Carta" name="carta" class="btn btn-primary">
            <div class="row">
                <div class="col-6">
                    <div class="row m-1">
                        <?php
                            //Pintar Carta 1
                            for($i=0;$i<16;$i++){
                                $numero = rand(1,54);
                                echo "<div class='col-3 p-0'><img src='fotos_loteria/".$numero.".jpeg' class='img-thumbnail'></div>";
                            }
                        ?> 
                    </div>
                </div>
                <div class="col-6">
                    <div class="row m-1">
                        <?php
                            //Pintar Carta 2
                            for($i=0;$i<16;$i++){
                                $numero = rand(1,54);
                                echo "<div class='col-3 p-0'><img src='fotos_loteria/".$numero.".jpeg' class='img-thumbnail'></div>";
                            }
                        ?>
                    </div>
                </div>
            </div>
        </form>
    </div>
</body>
</html>