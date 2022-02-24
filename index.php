<DOCTYPE html>
<html lang="pt-br">
<head>
    <title>Nike. Just Do It.</title>
    <meta charset = "UTF-8">
            
    <link rel = "stylesheet" type="text/css" href="style.css">
    
</head>
<body>
<header>
    <a href = "index.php" title = "home">
    <img src = "imagens/logo.png">
        </a>
            <nav>
                <ul>
                    <li>
                        <a href="index.php?pagina=Home">Home</a>
                        </li>
                        <li>
                            <a href="index.pagina=cphp?ategoria&id=1">Tênis</a>
                        </li>
                        <li>
                            <a href="index.php?pagina=categoria&id=3">Bolsas</a>
                        </li>
                        <li> <a href="index.php?pagina=categoria&id=2">Camisetas</a>
                        </li>
                    <li>
                        <a href="index.php?pagina=contato">Contato</a>
                    </li>  
                </ul>
            </nav>
</header>
<main>
    <?php
        $pagina = $_GET['pagina'] ?? "home";
        $arquivo = "{$pagina}.php";
        if (file_exists($arquivo)){
            require $arquivo;}
    ?>
</main>
</body>
</html>