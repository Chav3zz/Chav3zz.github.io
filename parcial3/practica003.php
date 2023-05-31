<!DOCTYPE html>
<html lang>
<head>
    <meta charset="UTF-8">
    <title>Practica 3 - Integración con HTML</title>
</head>
<body>
    <h1>Usando PHP dentro de un HTML</h1>
    <?php
        $alumno = "Juan Manuel";
        $edad = 18;
        $escuela = "CETIS 107";
        $especialidad = "programacion";
    ?>

    <form action="">
        <label for="">Nombre del alumno:</label>
        <input type="text" value=<?php echo $alumno; ?>>

        <label for="">Edad:</label>
        <input type="number" value=<?php echo $edad; ?>>

        <input type="submit" value=<?php echo "'Inscribirse a ".$especialidad."'"; ?>>
    </form>

    <br><br>

    <h2>Calificaciones</h2><hr>
    Cálculo Diferencial: <?php echo rand(5, 10);?> <br>
    Física: <?php echo rand(5, 10);?> <br>
    Ecología: <?php echo rand(5, 10);?> <br>
    Inglés: <?php echo rand(5, 10);?> <br>
    Programación: <?php echo rand(5, 10);?> <br>

    Promedio: <?php echo rand(5, 10);?>

</body>
</html>