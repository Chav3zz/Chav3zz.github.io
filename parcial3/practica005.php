<?php

    $cuadros = $_POST["cuadro"];

    //Validar que solo lleve "X" y "O"

    for($i = 0; $i < count($cuadros); $i++){
        
        if(($i+1) % 3 == 0){
            echo $cuadros[$i].", <br>";
        }else{
            echo $cuadros[$i].", ";
        }
        if($cuadros[$i] != "X" && $cuadros[$i] != "O"){
            echo "<h2>Solo se permiten X y/o O</h2>";
            return;
        }
    }



    if($cuadros[0] == "X" && $cuadros[1] == "X" && $cuadros[2] == "X"){
        echo "<h3>Ganaron las X</h3><br>";
        echo "<h2>[X][X][X]<br>[ ][ ][ ]<br>[ ][ ][ ]</h2>";
        return;
    }else if($cuadros[0] == "O" && $cuadros[1] == "O" && $cuadros[2] == "O"){
        echo "<h3>Ganaron las O</h3><br>";
        echo "<h2>[O][O][O]<br>[ ][ ][ ]<br>[ ][ ][ ]</h2>";
        return;
    }

    if($cuadros[3] == "X" && $cuadros[4] == "X" && $cuadros[5] == "X"){
        echo "<h3>Ganaron las X</h3><br>";
        echo "<h2>[ ][ ][ ]<br>[X][X][X]<br>[ ][ ][ ]</h2>";
        return;
    }else if($cuadros[3] == "O" && $cuadros[4] == "O" && $cuadros[5] == "O"){
        echo "<h3>Ganaron las O</h3><br>";
        echo "<h2>[ ][ ][ ]<br>[O][O][O]<br>[ ][ ][ ]</h2>";
        return;
    }

    if($cuadros[6] == "X" && $cuadros[7] == "X" && $cuadros[8] == "X"){
        echo "<h3>Ganaron las X</h3><br>";
        echo "<h2>[ ][ ][ ]<br>[ ][ ][ ]<br>[X][X][X]</h2>";
        return;
    }else if($cuadros[6] == "O" && $cuadros[7] == "O" && $cuadros[8] == "O"){
        echo "<h3>Ganaron las O</h3><br>";
        echo "<h2>[ ][ ][ ]<br>[ ][ ][ ]<br>[O][O][O]</h2>";
        return;
    }

    if($cuadros[0] == "X" && $cuadros[3] == "X" && $cuadros[6] == "X"){
        echo "<h3>Ganaron las X</h3><br>";
        echo "<h2>[X][ ][ ]<br>[X][ ][ ]<br>[X][ ][ ]</h2>";
        return;
    }else if($cuadros[0] == "O" && $cuadros[3] == "O" && $cuadros[6] == "O"){
        echo "<h3>Ganaron las O</h3><br>";
        echo "<h2>[O][ ][ ]<br>[O][ ][ ]<br>[O][ ][ ]</h2>";
        return;
    }

    if($cuadros[1] == "X" && $cuadros[4] == "X" && $cuadros[7] == "X"){
        echo "<h3>Ganaron las X</h3><br>";
        echo "<h2>[ ][X][ ]<br>[ ][X][ ]<br>[ ][X][ ]</h2>";
        return;
    }else if($cuadros[1] == "O" && $cuadros[4] == "O" && $cuadros[7] == "O"){
        echo "<h3>Ganaron las O</h3><br>";
        echo "<h2>[ ][O][ ]<br>[ ][O][ ]<br>[ ][O][ ]</h2>";
        return;
    }

    if($cuadros[2] == "X" && $cuadros[5] == "X" && $cuadros[8] == "X"){
        echo "<h3>Ganaron las X</h3><br>";
        echo "<h2>[ ][ ][X]<br>[ ][ ][X]<br>[ ][ ][X]</h2>";
        return;
    }else if($cuadros[2] == "O" && $cuadros[5] == "O" && $cuadros[8] == "O"){
        echo "<h3>Ganaron las O</h3><br>";
        echo "<h2>[ ][ ][O]<br>[ ][ ][O]<br>[ ][ ][O]</h2>";
        return;
    }

    if($cuadros[0] == "X" && $cuadros[4] == "X" && $cuadros[8] == "X"){
        echo "<h3>Ganaron las X</h3><br>";
        echo "<h2>[X][ ][ ]<br>[ ][X][ ]<br>[ ][ ][X]</h2>";
        return;
    }else if($cuadros[0] == "O" && $cuadros[4] == "O" && $cuadros[8] == "O"){
        echo "<h3>Ganaron las O</h3><br>";
        echo "<h2>[O][ ][ ]<br>[ ][O][ ]<br>[ ][ ][O]</h2>";
        return;
    }

    if($cuadros[2] == "X" && $cuadros[4] == "X" && $cuadros[6] == "X"){
        echo "<h3>Ganaron las X</h3><br>";
        echo "<h2>[ ][ ][X]<br>[ ][X][ ]<br>[X][ ][ ]</h2>";
        return;
    }else if($cuadros[2] == "O" && $cuadros[4] == "O" && $cuadros[6] == "O"){
        echo "<h3>Ganaron las O</h3><br>";
        echo "<h2>[ ][ ][O]<br>[ ][O][ ]<br>[O][ ][ ]</h2>";
        return;
    }

?>