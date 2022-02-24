<?php
    include "conectar.php";
    $id = $_GET["id"] ?? NULL;

    $consulta = "select * from produto where categoria_id = $id";
    $resultado = mysqli_query($con,$consulta);
    
 
    while ($dados = mysqli_fetch_array($resultado)){
        $id = $dados["id"];
        $nome = $dados["nome"];
        $valor = $dados["valor"];
        $descricao = $dados["descricao"];
        $imagem1 = $dados["imagem1"];
        $imagem2 = $dados["imagem2"];
        
        echo "<div class = 'imagens'><img src ='produtos/{$imagem1}'><img src ='produtos/{$imagem2}'></div>
        <p><div class = 'nome'><strong>{$nome}</strong></div></p>
        <p><div class = 'descricao'>{$descricao}</div></p>
        <p><div class = 'valor'>{$valor},00</div></p>
        <div class = 'botao'>
        <a href ='index.php?pagina=detalhes&id={$id}'>Detalhes do Produto</a>
        </div>";
    }
?>