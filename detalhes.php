<div class = 'detalhesprod'><h1>Detalhes do produto</h1></div>
<?php
    include "conectar.php";
    // recuperar id enviado pelo get
    $id  = $_GET["id"] ?? NULL;
    //verificar se o id esta vazio
    if ( empty ($id) ){
        echo "<p>Produto invalido</p>";
    }else{
        $id = (int)$id;
        $consulta = "select * from produto where id = $id";
        $resultado = mysqli_query ($con, $consulta);
        $dados = mysqli_fetch_array($resultado);
    }

    if ( empty ($dados ["nome"])){
        echo '<p>Produto não encontrado</p>';
    }else{

        $id = $dados["id"];
        $nome = $dados["nome"];
        $valor = $dados["valor"];
        $descricao = $dados["descricao"];
        $imagem1 = $dados["imagem1"];
        $imagem2 = $dados["imagem2"];
        
        echo "<div class = 'imagens'><img src ='produtos/{$imagem1}'><img src = 'produtos/{$imagem2}'></div>
        
        <p><div class = 'nome'><strong>{$nome}</strong></div></p>
        
        <p><div class = 'descricao'>{$descricao}</div></p>
        
        <p><div class = 'valor'>{$valor},00</div></p></div>";
    }
    ?>
