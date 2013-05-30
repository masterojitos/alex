-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 10-05-2011 a las 21:27:33
-- Versión del servidor: 5.5.8
-- Versión de PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Base de datos: `alex`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `file` tinytext COMMENT 'image(*.jpg, *.gif, *.png) or video (*.flv)',
  `thumbnail` tinytext NOT NULL COMMENT 'image thumbail (*.jpg, *.gif, *.png)',
  `detail` tinytext,
  `content` text,
  `date` int(10) NOT NULL,
  `status` char(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcar la base de datos para la tabla `blog`
--

INSERT INTO `blog` (`id`, `name`, `file`, `thumbnail`, `detail`, `content`, `date`, `status`) VALUES
(1, 'Keiko: "Vargas Llosa no supera derrota de 1990"', '147d11_keiko.jpg', '0f13c6_thumb_keiko.jpg', '<p>La <a href="http://trome.pe/tag/904/Keiko%20Fujimori" target="_blank">candidata</a> lament&oacute; que el Premio Nobel de Literatura la califique como el "mal mayor".</p>', '<p>Durante un recorrido proselitista por Trujillo, <a href="http://trome.pe/tag/904/Keiko%20Fujimori" target="_blank">Keiko Fujimori</a> consider&oacute; injustas las declaraciones que el laureado escritor realiz&oacute;  para medios de comunicaci&oacute;n argentinos, en las cuales la calific&oacute; como  &ldquo;el mal mayor&rdquo; de las elecciones presidenciales.</p>\r\n<p>"El 80 por ciento de mi equipo es nuevo e independiente, y lamento  que opine as&iacute;, sin leer mi plan de gobierno", subray&oacute; en declaraciones a  la prensa.</p>\r\n<p>La candidata de <strong>Fuerza 2011</strong> sostuvo un encuentro  con la junta de regantes de la regi&oacute;n La Libertad y posteriormente  recorri&oacute; diversos puntos de esta ciudad.</p>\r\n<p>La agenda de <strong>Keiko Fujimori</strong> prev&eacute; para ma&ntilde;ana visitas a las localidades de <strong>Ascope, Guadalupe, Chep&eacute;n</strong> y el jueves visitar&aacute; a la <strong>Virgen de la Puerta</strong> en Otuzco.</p>', 1303323496, '1'),
(2, 'Aseguran que Twitter trae mala suerte en el amor', 'b9a65c_twitter_amor.jpg', '0a61a6_thumb_twitter_amor.jpg', '<p>Seg&uacute;n un estudio, aquellos que la utilizan todos los d&iacute;as tienen una  tendencia a las relaciones cortas</p>', '<p>Las relaciones rom&aacute;nticas de los usuarios activos de Twitter son   cortas. De acuerdo con la investigaci&oacute;n, no se mantienen por el mismo   per&iacute;odo de tiempo que las del resto de la poblaci&oacute;n.</p>\r\n<p>Seg&uacute;n un estudio de la p&aacute;gina de citas <a href="http://www.okcupid.com/home" target="_blank">OkCupid</a>, aquellos que utilizan <a href="http://www.twitter.com/" target="_blank">Twitter</a> todos los d&iacute;as tienen una tendencia a las relaciones cortas, y el   problema empeora cuando esa persona crece. Aquellos usuarios de m&aacute;s de <strong>50 a&ntilde;os</strong> perduran alrededor de <strong>15 meses en una relaci&oacute;n</strong>, mientras que aquellos que no utilizan esta red social llegan a <strong>m&aacute;s de 17 meses</strong>.</p>\r\n<p><strong>OkCupid</strong> se ocupa de analizar los datos que reciben  en su  p&aacute;gina y publican gr&aacute;ficos sobre los h&aacute;bitos sexuales de sus  millones  de usuarios. Esta p&aacute;gina determina la compatibilidad de las  citas  basadas en c&oacute;mo responden <strong>&ldquo;cientos&rdquo;</strong> de preguntas.</p>\r\n<p>La relaci&oacute;n de un joven de 18 a&ntilde;os de edad que utiliza Twitter es de unos nueve meses.</p>', 1303324403, '1'),
(3, 'Hombre más gordo de Gran Bretaña bajó 210 kilos', 'de5f73_mas_gordo_del_mundo.jpg', '5ca55d_thumb_mas_gordo_del_mundo.jpg', '<p>Pesaba casi 450 kilos y gracias a una cirug&iacute;a g&aacute;strica, ahora ya puede salir de su casa.</p>', '<p><strong>Paul Mason</strong>, que lleg&oacute; a pesar casi 450 kilos ha bajado un total 210 kilos gracias a la cirug&iacute;a g&aacute;strica a la que fue sometido el a&ntilde;o pasado y con el que salv&oacute; su vida.</p>\r\n<p>Mason, un <strong>ex cartero de 50 a&ntilde;os</strong>, consum&iacute;a alrededor de 20 mil calor&iacute;as en su d&iacute;a m&aacute;s pesado, pero gracias a la operaci&oacute;n que se realiz&oacute; pudo disminuir su peso y mejorar su salud. El hombre sostuvo que se sent&iacute;a genial por estar fuera de casa y que ya ha disfrutado de un d&iacute;a junto al r&iacute;o y dentro de poco aprender&aacute; a conducir, revel&oacute; <a href="http://www.dailymail.co.uk/news/article-1378812/Britains-fattest-man-celebrates-shedding-33-stone--visit-chippie.html" target="_blank">diario ingl&eacute;s Daily Mail</a></p>\r\n<p>El <strong>ex comedor compulsivo</strong>, hasta el a&ntilde;o pasado estaba postrado en cama, sin poder salir de un bungalow donde lo cuidaban siete personas, que ten&iacute;an tres turnos de ocho horas para cocinar su comida y limpiar el lugar. Adem&aacute;s, ten&iacute;a un asiento de inodoro reforzado y un fisioterapeuta para estirar las piernas y realizar masajes en el pecho para prevenir la trombosis venosa profunda y la neumon&iacute;a.</p>\r\n<p>Tambi&eacute;n hab&iacute;a un equipo de limpieza utilizados por los cuidadores a ba&ntilde;arlo ya que era demasiado grande para la ducha, ten&iacute;a un televisor y PlayStation para hacerle compa&ntilde;&iacute;a y un tobog&aacute;n inflable.</p>\r\n<p><strong>OPERACI&Oacute;N</strong></p>\r\n<p>Mason se someti&oacute; a una cirug&iacute;a en la que le engraparon gran parte del est&oacute;mago, permitiendo que sac&iacute;e su hambre con muy poca cantidad de comida. Los m&eacute;dicos lo pusieron en una dieta de choque para llevar su peso a un nivel seguro para la operaci&oacute;n pueda seguir adelante.</p>', 1303325154, '1'),
(4, 'Vargas Llosa: "Yo votaré por Humala"', '193e6b_Vargas_Llosa_2.flv', '7fc7a0_Thumb_Vargas_Llosa.jpg', '<p>Conf&iacute;a en que Ollanta haya dejado el modelo chavista y que, siga el de Luiz Inacio Lula da Silva.</p>', '<p>"Sin alegr&iacute;a con muchos temores yo voy a votar por <a href="http://trome.pe/tag/2800/ollanta-humala" target="_blank">Humala</a> y voy a pedir a los peruanos democr&aacute;ticos que hagan lo mismo que yo", dijo el Premio Nobel de Literarura, <a href="http://trome.pe/tag/3491/mario-vargas-llosa" target="_blank">Mario Vargas Llosa</a>, durante su disertaci&oacute;n en la <strong>Regional Meeting "The Populist Challenge to Latin America Liberty"</strong> organizada por la Mont Pelerin Society.</p>\r\n<p>El audio propalado por la p&aacute;gina <a href="http://lamula.pe/2011/04/19/vargas-llosa-yo-votare-por-humala/rafaelponc" target="_blank">lamula.pe</a> detalla, adem&aacute;s, que el laureado escritor mantiene la esperanza que lo que dice el l&iacute;der de <strong>Gana Per&uacute;</strong> "sea verdad" y conf&iacute;a en el juramento de Humala de no privatizar las empresas, no tocar los medios de comunicaci&oacute;n y que solo promover&aacute; proyectos de ayuda social y nuevos impuestos a la industria mineras, entre otros.</p>\r\n<p>"Mi esperanza es que lo que el candidato Humala dice ahora sea verdad. &Eacute;l dice que ya no tiene a Ch&aacute;vez como modelo sino a Lula", agreg&oacute;.</p>\r\n<p>Por otro lado, refiri&oacute; que <a href="http://trome.pe/tag/904/Keiko%20Fujimori" target="_blank">Keiko Fujimori</a> representa el mal mayor en estas elecciones presidenciales. "Para m&iacute; el mal mayor es el retorno de la dictadura de Alberto Fujimori", a&ntilde;adi&oacute;.</p>\r\n<p>Acot&oacute; tambi&eacute;n que de no cumplir el nacionalistam, "el d&iacute;a de ma&ntilde;ana habr&aacute; que enfrentarse al riesgo de una dictadura como nos enfrentamos a la dictadura de Fujimori".</p>\r\n<p>Lament&oacute; que tanto, PPK, Toledo y Casta&ntilde;eda no hayan concertado en un solo proyecto porque de esa manera "hubieran ganado las elecciones en primera vuelta".</p>', 1303423950, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `blog_id` int(10) NOT NULL,
  `nickname` varchar(100) NOT NULL,
  `email` tinytext NOT NULL,
  `content` text,
  `date` int(11) NOT NULL,
  `status` char(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Volcar la base de datos para la tabla `comment`
--


INSERT INTO `comment` (`id`, `blog_id`, `nickname`, `email`, `content`, `date`, `status`) VALUES
(1, 1, 'diego0', 'diego0@hotmail.com', 'VOTO VICIADO: SI CONTAMOS LOS VOTOS D LAS ULTIMAS ELECCIONES SON LOS 2/3 D VOTOS Y ANULAMOS LAS ELECCIONES. PASA LA VOZ!', 1303763868, '1'),
(2, 1, 'aldo2011', 'aldo2011@hotmail.com', 'antes de referisrte al sr. MVLL, debes presentar tu plan de gobierno de explicarlo, mostralo. no tienes nivel gorda corrupta.', 1303764868, '1'),
(3, 2, 'yeritall', 'yeritall@hotmail.com', 'por eso no uso el twiTter ........... solo facebook xD ', 1303795896, '1'),
(4, 2, 'lalokis', 'lalokis@hotmail.com', 'igualmente cerrando el twitter t me quedo con el face nomas =)', 1303797496, '1'),
(5, 1, 'lobo13', 'lobo13@hotmail.com', 'Una nueva era se acerca, gocen sus ultimas semanas de pecado, ya que despues sentiran el verdadero dolor de la abstinencia. ', 1303773996, '1'),
(6, 3, 'angeluz', 'angeluz@hotmail.com', 'como le cuelga el cuello xD ', 1303766868, '1'),
(7, 3, 'masterojitos', 'masterojitos@hotmail.com', 'test\r\nniños en el árbol\r\n\r\n\r\n\r\nbye ^^', 1305036095, '1'),
(8, 4, 'devirtual', 'info@devirtual.com', 'inject....\r\n<script>alert(''hola'');</script>\r\nbye...', 1305063494, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuration`
--

CREATE TABLE IF NOT EXISTS `configuration` (
  `name` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `configuration`
--

INSERT INTO `configuration` (`name`, `username`, `password`) VALUES
('Alex', 'admin', '123456');
