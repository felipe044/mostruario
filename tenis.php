<div class = 'home1'>
<h1>Produtos disponíveis</h1>
</div>
<?php
//conectar com o banco
    include "conectar.php";
    $id = $_GET["id"] ?? NULL;
    // consultar banco
    $consulta = "select * from produto where categoria_id = $id";
    $resultado = mysqli_query($con,$consulta);
?>
    

