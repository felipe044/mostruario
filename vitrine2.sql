-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Tempo de geração: 06-Out-2021 às 13:12
-- Versão do servidor: 5.7.32
-- versão do PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Banco de dados: `vitrine2`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `banner` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `banner`
--

INSERT INTO `banner` (`id`, `banner`) VALUES
(1, 'banner1.jpeg'),
(2, 'banner2.jpeg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`id`, `nome`) VALUES
(1, 'Tenis'),
(2, 'Camisetas'),
(3, 'Bolsas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `valor` double NOT NULL,
  `descricao` text NOT NULL,
  `imagem1` varchar(100) NOT NULL,
  `imagem2` varchar(100) NOT NULL,
  `categoria_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`id`, `nome`, `valor`, `descricao`, `imagem1`, `imagem2`, `categoria_id`) VALUES
(1, 'Tênis Nike ZoomX Vaporfly Next% 2 Feminino', 1700, 'Continue a próxima evolução da velocidade com um tênis de corrida feito para ajudar a alcançar novas metas e recordes. O Nike ZoomX Vaporfly Next% 2 baseia-se no modelo adorado por corredores de todo o mundo. Ele apresenta conforto e respirabilidade aprimorados com uma parte de cima reformulada. Seja para corridas ou maratonas, a nova versão ainda conta com o amortecimento ágil e a sustentação segura para que você atinja seu potencial máximo.', 'DJ5458-100-1-11625230606.jpeg', 'tenis-nike-zoomx-vaporfly-next-2-feminino-DJ5458-100-3-31625230608.jpeg', 1),
(2, 'Tênis Nike Air Max 90 Feminino', 770, 'Linhas clean, versáteis e atemporais. O tênis das pessoas volta com o Nike Air Max 90. Com a mesma icônica sola em waffle, sobreposições costuradas e detalhes clássicos em TPU que você adora, esses tênis permitem que você caminhe entre os deuses do Air.', 'tenis-nike-air-max-90-feminino-CQ2560-001-1.jpeg', 'tenis-nike-air-max-90-feminino-CQ2560-001-4.jpeg', 1),
(3, 'Tênis Nike Dunk High SE Feminino', 900, 'Criado para as quadras e aclamado nas ruas, o ícone do basquete está de volta para celebrar os 50 anos do Swoosh. Os toques luxuosos de suede na parte de cima e a boca macia tornam o Nike Dunk High SE uma peça moderna essencial, enquanto o design do Swoosh original ornamenta a parte lateral. Para aumentar seu brilho, uma agulheta do Swoosh removível enfeita os cadarços, permitindo que você canalize a história do esporte de volta às ruas.', 'tenis-nike-dunk-high-se-feminino-DH6758-100-1-11624544581.jpeg', 'tenis-nike-dunk-high-se-feminino-DH6758-100-5-51624544585.jpeg', 1),
(4, 'Camiseta Nike Barcelona 2021/22 Stadium Third Masculina', 500, 'Como outras camisas da nossa coleção Stadium, a Camisa FC Barcelona combina os detalhes do modelo réplica com tecido que absorve o suor para proporcionar um visual pronto para o jogo, inspirado em seu time favorito. Esse produto é feito com fibras 100% poliéster reciclado', 'camiseta-nike-barcelona-202122-stadium-third-masculina-DB5896-406-1-11631107507.jpeg', 'camiseta-nike-barcelona-202122-stadium-third-masculina-DB5896-406-2-21631107508.jpeg', 2),
(5, 'Regata Nike Luka Doncic Mavericks Icon Edition 2020', 500, 'A camisa Icon Edition representa a rica herança e a identidade icônica da franquia, expressas por meio das cores marcantes do time. A camisa Nike NBA Swingman Icon Edition do Dallas Mavericks é inspirada na que os craques usam nos jogos. O tecido em malha dupla premium tem uma construção de camisa clássica e um caimento perfeito para os fãs. Este produto é 100% feito com fibras de poliéster reciclado.', 'camiseta-sem-manga-dal-m-nk-swgmn-jsy-ic-CW3662-489-1-11621540315.jpeg', 'camiseta-sem-manga-dal-m-nk-swgmn-jsy-ic-CW3662-489-2-21621540316.jpeg', 2),
(6, 'Mochila Nike Utility Power Masculina', 600, 'A mochila Nike Utility Power mantém seu equipamento seguro e organizado enquanto se desloca entre as sessões de treinamento. As alças acolchoadas proporcionam conforto para levá-la a qualquer lugar, e a sacola é aberta para fácil acesso às suas necessidades.', 'mochila-nike-utility-power-masculina-CK2663-010-2.jpeg', 'mochila-nike-utility-power-masculina-CK2663-010-1.jpeg', 3),
(7, 'Mochila Nike Utility Heat Masculina', 350, 'A mochila Nike Utility Heat deixa você preparado para o seu treino. Ela tem espaço para um laptop e muito mais espaço para tênis e roupas. As alças de ombro com amortecimento Max Air mantêm você confortável para o transporte durante todo o dia.\r\n\r\n', 'mochila-nk-utility-heat-bkpk-gfx-su21-CZ1361-410-2-21621540474.jpeg', 'mochila-nk-utility-heat-bkpk-gfx-su21-CZ1361-410-1-11621540474.jpeg', 3),
(8, 'Pochete Nike SB Icon Unissex', 170, '', 'pochete-nk-sb-icon-waist-pack-ufw-DB0638-020-2-21621541218.jpeg', 'pochete-nk-sb-icon-waist-pack-ufw-DB0638-020-1-11621541217.jpeg', 3);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria_id` (`categoria_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
