<?php
//conectar com o banco
    $servidor = 'localhost';
    $usuario = 'root';
    $senha = '';
    $banco = 'vitrine2';

    $con = mysqli_connect($servidor, $usuario, $senha, $banco) or die ("ERRO AO CONECTAR");
?>


