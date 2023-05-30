<?php

    $nombre = $_GET["nombre"];
    echo "Nombre: " .$nombre ."<br>";

    $edad = $_GET["edad"];
    echo "Edad: " .$edad ."<br>";

    $escuela = $_GET["escuela"];
    echo "Escuela: " .$escuela ."<br>";

    $fecha_ingreso = $_GET["fecha_ingreso"];
    echo "Fecha de ingreso: " .$fecha_ingreso ."<br>";

    $direccion = $_GET["direccion"];
    echo "Dirección: " .$direccion ."<br><br><br>";
    
    if($edad >= 18){
        echo $nombre . " es mayor de edad" ."<br>";
    }else{
        echo $nombre . " es menor de edad" ."<br>";
    }

    if($escuela == "CETIS 107"){
        echo "<div style='background-color:blue;'>CETIS 107</div>" ."<br>";
    }else if($escuela == "CBTIS 224"){
        echo "<div style='background-color:red;'>CBTIS 224</div>" ."<br>";
    }else if($escuela == "COBEAS"){
        echo "<div style='background-color:green;'>COBAES</div>" ."<br>";
    }
?>