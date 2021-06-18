<?php
    $code = $_POST['code'];
    $random = "output";
    $filePath = "temp/" . $random . ".java";
    $programFile = fopen($filePath, "w");
    fwrite($programFile, $code);
    fclose($programFile);