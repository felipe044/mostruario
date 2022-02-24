
<?php
    //conectar com o banco de dados
    include "conectar.php";
   
    // executar a consulta de cima
    $banner = "select * from banner order by rand() limit 1";
    
    $consBanner = mysqli_query($con,$banner);
    
    //laço para separar as linhas do banco
    while($dadosBanner = mysqli_fetch_array($consBanner)){
        //separar os dados do array 
        $imgBanner = $dadosBanner["banner"];
        echo "<div class = 'banner'> <img src=imagens/{$imgBanner}> </div>";
    }
    
    $consulta = "select * from produto order by rand() limit 6";
    
    $resultado = mysqli_query($con, $consulta);
 
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
        <div class = 'botao'><a href ='index.php?pagina=detalhes&id={$id}'>Detalhes do Produto</a></div>";  
    }
?>