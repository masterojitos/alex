-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 25-04-2011 a las 21:14:35
-- Versión del servidor: 5.5.8
-- Versión de PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

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
(1, 'Keiko: &quot;Vargas Llosa no supera derrota de 1990&quot;', '147d11_keiko.jpg', '0f13c6_thumb_keiko.jpg', '&lt;p&gt;La &lt;a href=&quot;http://trome.pe/tag/904/Keiko%20Fujimori&quot; target=&quot;_blank&quot;&gt;candidata&lt;/a&gt; lament&amp;oacute; que el Premio Nobel de Literatura la califique como el &quot;mal mayor&quot;.&lt;/p&gt;', '&lt;p&gt;Durante un recorrido proselitista por Trujillo, &lt;a href=&quot;http://trome.pe/tag/904/Keiko%20Fujimori&quot; target=&quot;_blank&quot;&gt;Keiko Fujimori&lt;/a&gt; consider&amp;oacute; injustas las declaraciones que el laureado escritor realiz&amp;oacute;  para medios de comunicaci&amp;oacute;n argentinos, en las cuales la calific&amp;oacute; como  &amp;ldquo;el mal mayor&amp;rdquo; de las elecciones presidenciales.&lt;/p&gt;\r\n&lt;p&gt;&quot;El 80 por ciento de mi equipo es nuevo e independiente, y lamento  que opine as&amp;iacute;, sin leer mi plan de gobierno&quot;, subray&amp;oacute; en declaraciones a  la prensa.&lt;/p&gt;\r\n&lt;p&gt;La candidata de &lt;strong&gt;Fuerza 2011&lt;/strong&gt; sostuvo un encuentro  con la junta de regantes de la regi&amp;oacute;n La Libertad y posteriormente  recorri&amp;oacute; diversos puntos de esta ciudad.&lt;/p&gt;\r\n&lt;p&gt;La agenda de &lt;strong&gt;Keiko Fujimori&lt;/strong&gt; prev&amp;eacute; para ma&amp;ntilde;ana visitas a las localidades de &lt;strong&gt;Ascope, Guadalupe, Chep&amp;eacute;n&lt;/strong&gt; y el jueves visitar&amp;aacute; a la &lt;strong&gt;Virgen de la Puerta&lt;/strong&gt; en Otuzco.&lt;/p&gt;', 1303323496, '1'),
(2, 'Aseguran que Twitter trae mala suerte en el amor', 'b9a65c_twitter_amor.jpg', '0a61a6_thumb_twitter_amor.jpg', '&lt;p&gt;Seg&amp;uacute;n un estudio, aquellos que la utilizan todos los d&amp;iacute;as tienen una  tendencia a las relaciones cortas&lt;/p&gt;', '&lt;p&gt;Las relaciones rom&amp;aacute;nticas de los usuarios activos de Twitter son   cortas. De acuerdo con la investigaci&amp;oacute;n, no se mantienen por el mismo   per&amp;iacute;odo de tiempo que las del resto de la poblaci&amp;oacute;n.&lt;/p&gt;\r\n&lt;p&gt;Seg&amp;uacute;n un estudio de la p&amp;aacute;gina de citas &lt;a href=&quot;http://www.okcupid.com/home&quot; target=&quot;_blank&quot;&gt;OkCupid&lt;/a&gt;, aquellos que utilizan &lt;a href=&quot;http://www.twitter.com/&quot; target=&quot;_blank&quot;&gt;Twitter&lt;/a&gt; todos los d&amp;iacute;as tienen una tendencia a las relaciones cortas, y el   problema empeora cuando esa persona crece. Aquellos usuarios de m&amp;aacute;s de &lt;strong&gt;50 a&amp;ntilde;os&lt;/strong&gt; perduran alrededor de &lt;strong&gt;15 meses en una relaci&amp;oacute;n&lt;/strong&gt;, mientras que aquellos que no utilizan esta red social llegan a &lt;strong&gt;m&amp;aacute;s de 17 meses&lt;/strong&gt;.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;OkCupid&lt;/strong&gt; se ocupa de analizar los datos que reciben  en su  p&amp;aacute;gina y publican gr&amp;aacute;ficos sobre los h&amp;aacute;bitos sexuales de sus  millones  de usuarios. Esta p&amp;aacute;gina determina la compatibilidad de las  citas  basadas en c&amp;oacute;mo responden &lt;strong&gt;&amp;ldquo;cientos&amp;rdquo;&lt;/strong&gt; de preguntas.&lt;/p&gt;\r\n&lt;p&gt;La relaci&amp;oacute;n de un joven de 18 a&amp;ntilde;os de edad que utiliza Twitter es de unos nueve meses.&lt;/p&gt;', 1303324403, '1'),
(3, 'Hombre mÃ¡s gordo de Gran BretaÃ±a bajÃ³ 210 kilos', 'de5f73_mas_gordo_del_mundo.jpg', '5ca55d_thumb_mas_gordo_del_mundo.jpg', '&lt;p&gt;Pesaba casi 450 kilos y gracias a una cirug&amp;iacute;a g&amp;aacute;strica, ahora ya puede salir de su casa.&lt;/p&gt;', '&lt;p&gt;&lt;strong&gt;Paul Mason&lt;/strong&gt;, que lleg&amp;oacute; a pesar casi 450 kilos ha  bajado un total 210 kilos gracias a la cirug&amp;iacute;a g&amp;aacute;strica a la que fue  sometido el a&amp;ntilde;o pasado y con el que salv&amp;oacute; su vida.&lt;/p&gt;\r\n&lt;p&gt;Mason, un &lt;strong&gt;ex cartero de 50 a&amp;ntilde;os&lt;/strong&gt;, consum&amp;iacute;a alrededor  de 20 mil calor&amp;iacute;as en su d&amp;iacute;a m&amp;aacute;s pesado, pero gracias a la operaci&amp;oacute;n  que se realiz&amp;oacute; pudo disminuir su peso y mejorar su salud. El hombre  sostuvo que se sent&amp;iacute;a genial por estar fuera de casa y que ya ha  disfrutado de un d&amp;iacute;a junto al r&amp;iacute;o y dentro de poco aprender&amp;aacute; a conducir,  revel&amp;oacute; &lt;a href=&quot;http://www.dailymail.co.uk/news/article-1378812/Britains-fattest-man-celebrates-shedding-33-stone--visit-chippie.html&quot; target=&quot;_blank&quot;&gt;diario ingl&amp;eacute;s Daily Mail&lt;/a&gt;&lt;/p&gt;\r\n&lt;p&gt;El &lt;strong&gt;ex comedor compulsivo&lt;/strong&gt;, hasta el a&amp;ntilde;o pasado  estaba postrado en cama, sin poder salir de un bungalow donde lo  cuidaban siete personas, que ten&amp;iacute;an tres turnos de ocho horas para  cocinar su comida y limpiar el lugar. Adem&amp;aacute;s, ten&amp;iacute;a un asiento de  inodoro reforzado y un fisioterapeuta para estirar las piernas y  realizar  masajes en el pecho para prevenir la trombosis venosa profunda  y la neumon&amp;iacute;a.&lt;/p&gt;\r\n&lt;p&gt;Tambi&amp;eacute;n hab&amp;iacute;a un equipo de limpieza utilizados por los cuidadores a  ba&amp;ntilde;arlo ya que era demasiado grande para la ducha, ten&amp;iacute;a un televisor y  PlayStation para hacerle compa&amp;ntilde;&amp;iacute;a y un tobog&amp;aacute;n inflable.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;OPERACI&amp;Oacute;N&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Mason se someti&amp;oacute; a una cirug&amp;iacute;a en la que le engraparon gran parte  del est&amp;oacute;mago, permitiendo que sac&amp;iacute;e su hambre con muy poca cantidad de  comida. Los m&amp;eacute;dicos lo pusieron en una dieta de choque para llevar su  peso a un nivel seguro para la operaci&amp;oacute;n pueda seguir adelante.&lt;/p&gt;', 1303325154, '1'),
(4, 'Vargas Llosa: &quot;Yo votarÃ© por Humala&quot;', '193e6b_Vargas_Llosa_2.flv', '7fc7a0_Thumb_Vargas_Llosa.jpg', '&lt;p&gt;Conf&amp;iacute;a en que Ollanta haya dejado el modelo chavista y que, siga el de Luiz Inacio Lula da Silva.&lt;/p&gt;', '&lt;p&gt;&quot;Sin alegr&amp;iacute;a con muchos temores yo voy a votar por &lt;a href=&quot;http://trome.pe/tag/2800/ollanta-humala&quot; target=&quot;_blank&quot;&gt;Humala&lt;/a&gt; y voy a pedir a los peruanos democr&amp;aacute;ticos que hagan lo mismo que yo&quot;, dijo el Premio Nobel de Literarura, &lt;a href=&quot;http://trome.pe/tag/3491/mario-vargas-llosa&quot; target=&quot;_blank&quot;&gt;Mario Vargas Llosa&lt;/a&gt;, durante su disertaci&amp;oacute;n en la &lt;strong&gt;Regional Meeting &quot;The Populist Challenge to Latin America Liberty&quot;&lt;/strong&gt; organizada por la Mont Pelerin Society.&lt;/p&gt;\r\n&lt;p&gt;El audio propalado por la p&amp;aacute;gina &lt;a href=&quot;http://lamula.pe/2011/04/19/vargas-llosa-yo-votare-por-humala/rafaelponc&quot; target=&quot;_blank&quot;&gt;lamula.pe&lt;/a&gt; detalla, adem&amp;aacute;s, que el laureado escritor mantiene la esperanza que lo que dice el l&amp;iacute;der de &lt;strong&gt;Gana Per&amp;uacute;&lt;/strong&gt; &quot;sea verdad&quot; y conf&amp;iacute;a en el juramento de Humala de no privatizar las  empresas, no tocar los medios de comunicaci&amp;oacute;n y que solo promover&amp;aacute;  proyectos de ayuda social y nuevos impuestos a la industria mineras,  entre otros.&lt;/p&gt;\r\n&lt;p&gt;&quot;Mi esperanza es que lo que el candidato Humala dice ahora sea  verdad. &amp;Eacute;l dice que ya no tiene a Ch&amp;aacute;vez como modelo sino a Lula&quot;,  agreg&amp;oacute;.&lt;/p&gt;\r\n&lt;p&gt;Por otro lado, refiri&amp;oacute; que &lt;a href=&quot;http://trome.pe/tag/904/Keiko%20Fujimori&quot; target=&quot;_blank&quot;&gt;Keiko Fujimori&lt;/a&gt; representa el mal mayor en estas elecciones presidenciales. &quot;Para m&amp;iacute; el  mal mayor es el retorno de la dictadura de Alberto Fujimori&quot;, a&amp;ntilde;adi&amp;oacute;.&lt;/p&gt;\r\n&lt;p&gt;Acot&amp;oacute; tambi&amp;eacute;n que de no cumplir el nacionalistam, &quot;el d&amp;iacute;a de ma&amp;ntilde;ana  habr&amp;aacute; que enfrentarse al riesgo de una dictadura como nos enfrentamos a  la dictadura de Fujimori&quot;.&lt;/p&gt;\r\n&lt;p&gt;Lament&amp;oacute; que tanto, PPK, Toledo y Casta&amp;ntilde;eda no hayan concertado en un  solo proyecto porque de esa manera &quot;hubieran ganado las elecciones en  primera vuelta&quot;.&lt;/p&gt;', 1303423950, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `blog_id` int(10) NOT NULL,
  `nickname` varchar(100) NOT NULL,
  `content` text,
  `date` int(11) NOT NULL,
  `status` char(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcar la base de datos para la tabla `comment`
--

INSERT INTO `comment` (`id`, `blog_id`, `nickname`, `content`, `date`, `status`) VALUES
(1, 1, 'masterojitos', '<p>abc</p>', 1303763868, '0');

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
