-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-05-2024 a las 09:37:20
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_trebellos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `id` int(11) NOT NULL,
  `id_transaccion` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` datetime NOT NULL,
  `status` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `id_cliente` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_compra`
--

CREATE TABLE `detalle_compra` (
  `id` int(11) NOT NULL,
  `id_compra` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `mensaje` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(220) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `activo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `id_categoria`, `activo`) VALUES
(1, 'Samsung S24', '<h2>Descripción del Producto</h2>\r\n<p><strong>Diseño mejorado, IA avanzada y rendimiento excepcional.</strong></p>\r\n<h3>Personalización</h3>\r\n<p>Diseño Galaxy mejorado con opciones de personalización en One UI 6.1 y seguridad de Samsung Knox.</p>\r\n<h3>Inteligencia Artificial</h3>\r\n<p>Funcionalidades IA como Circle to Search, Web Assist, Live Translate, Chat Assist, Note Assist y Transcript Assist para una experiencia completa.</p>\r\n<h3>Cámara Profesional</h3>\r\n<p>Cámara de 50MP con IA para mejorar fotos y vídeos con zoom, efectos y correcciones automáticas.</p>\r\n<h3>Rendimiento Potente</h3>\r\n<p>Procesador Exynos 2400 de 4nm para tareas avanzadas y gaming, con tecnología Ray Tracing y sistema de refrigeración optimizado.</p>\r\n<h3>Batería Duradera</h3>\r\n<p>Batería de 4.000 mAh con IA para ajustar consumo, pantalla Dynamic AMOLED 2X adaptable y brillante.</p>\r\n<h3>Personalización de Color y Memoria</h3>\r\n<p>Disponible en Amarillo Amber, Violeta Cobalt, Gris Marble y Negro Onyx, con opciones de memoria de 8GB + 128GB o 256GB.</p>\r\n<h3>Galaxy AI</h3>\r\n<p>Funciones impulsadas por IA como Circle to Search, Photo Assist, Interpreter y Live Translate para una experiencia avanzada.</p>', '850.00', 1, 1),
(2, 'Portatil HP Gaming', '<h2>Descripción del Producto</h2>\r\n<p><strong>Rendimiento excepcional para juegos y productividad.</strong></p>\r\n<h3>Procesador AMD Ryzen™ 7</h3>\r\n<p>Procesador AMD Ryzen™ 7 7840HS con 8 núcleos y 16 hilos para juegos suaves y multitarea.</p>\r\n<h3>Almacenamiento y Memoria</h3>\r\n<p>1 TB de almacenamiento SSD para velocidades rápidas y 16 GB de RAM DDR5 para tiempos de carga reducidos.</p>\r\n<h3>Pantalla de Alto Rendimiento</h3>\r\n<p>Pantalla FHD antirreflejos de 144 Hz para una experiencia de juego suave y nítida.</p>\r\n<h3>Gráficos NVIDIA® GeForce RTX™ Serie 40</h3>\r\n<p>Tarjeta gráfica de última generación para juegos realistas y rendimiento excepcional.</p>\r\n<h3>Carga Rápida y Wi-Fi 6E</h3>\r\n<p>Carga rápida HP para una batería del 0 al 50% en unos 30 minutos y Wi-Fi 6E para una conectividad de red de alta velocidad.</p>\r\n<h3>Libertad de Elección del Sistema Operativo</h3>\r\n<p>Equipo FreeDos para elegir el sistema operativo que mejor se adapte a tus necesidades de trabajo o preferencias.</p>\r\n<h3>Producto IA Ready</h3>\r\n<p>Equipado con la infraestructura necesaria para admitir funciones de Inteligencia Artificial.</p>', '1200.00', 1, 1),
(3, 'Iphone 15', '<h2>Descripción del Producto</h2>\r\n<p><strong>El último smartphone insignia de Apple con diseño vanguardista y rendimiento superior.</strong></p>\r\n<h3>Pantalla y Cámara</h3>\r\n<p>Pantalla OLED Super Retina XDR de 6,1 pulgadas para una calidad visual incomparable. Sistema de cámara cuádruple para capturar imágenes espectaculares en cualquier entorno.</p>\r\n<h3>Rendimiento y Autonomía</h3>\r\n<p>Chip A17 Bionic de 6 núcleos para un rendimiento extraordinario. Batería de 3349 mAh para una autonomía excepcional.</p>\r\n<h3>Colores y Capacidades</h3>\r\n<p>Disponible en 5 colores: Negro, Azul, Verde, Amarillo, Rosa. Tres capacidades de memoria: 128GB, 256GB, 512GB.</p>', '930.00', 1, 1),
(4, 'Google Pixel 8', '<h2>Descripción del Producto</h2>\r\n<p><strong>Pixel 8: Velocidad, seguridad y duración de batería.</strong></p>\r\n<h3>IA de Google</h3>\r\n<p>Google Tensor G3 ofrece funciones avanzadas de fotografía y vídeo. Velocidad garantizada con 8 GB de RAM y 256 GB de almacenamiento.</p>\r\n<h3>Pantalla</h3>\r\n<p>OLED FHD+ de 6,2 pulgadas con tasa de refresco de hasta 120 Hz.</p>\r\n<h3>Batería</h3>\r\n<p>Batería Inteligente que dura más de 24 horas, con opción de Ahorro de Batería Extremo para hasta 72 horas.</p>\r\n<h3>Diseño</h3>\r\n<p>Diseño innovador y moderno con protección IP68 contra líquidos y polvo.</p>\r\n<h3>Cámara</h3>\r\n<p>Cámara Pixel actualizada con sistema dual de Gran Angular 50 MP f/1.68 + Ultra Gran Angular 12 MP f/2.2.</p>\r\n<h3>Vídeos</h3>\r\n<p>Grabación en 4K a 24, 30 y 60 FPS con audio nítido y estabilización avanzada.</p>\r\n<h3>Seguridad</h3>\r\n<p>Chip de seguridad Titan M2 para protección de datos personales.</p>\r\n<h3>Full IA</h3>\r\n<p>Dispositivo con capacidades avanzadas de Inteligencia Artificial para adaptarse a tus necesidades.</p>', '659.00', 1, 1),
(5, 'Samsung Galaxy S24 Ultra', '<h2>Descripción del Producto</h2>\r\n<p><strong>Diseño de referencia con ADN Galaxy.</strong></p>\r\n<h3>Dispositivo Inteligente</h3>\r\n<p>Galaxy S24 Ultra combina el icónico diseño de la serie Ultra con compatibilidad S Pen y tecnología One UI 6.1 para personalización y seguridad avanzada.</p>\r\n<h3>Inteligencia Artificial</h3>\r\n<p>La IA resuelve dudas, traduce llamadas y chats al instante, y ofrece herramientas como Note Assist y Transcript Assist para mejorar la productividad.</p>\r\n<h3>Fotografía Avanzada</h3>\r\n<p>Tecnología cámara premium de 200MP con Quad Zoom para capturar detalles sin perder calidad, asistido por funciones de IA para retoques profesionales.</p>\r\n<h3>Rendimiento Potente</h3>\r\n<p>Procesador Snapdragon 8 Gen 3 de 4nm para máximo rendimiento, refrigeración eficiente y compatibilidad con tecnología Ray Tracing para juegos.</p>\r\n<h3>Batería Duradera</h3>\r\n<p>Batería de 5000 mAh con IA para mejorar la duración, pantalla Dynamic AMOLED 2X adaptativa y brillante.</p>\r\n<h3>Versión Única</h3>\r\n<p>Galaxy S24 Ultra ofrece acabado en titanio, máxima capacidad de memoria y opciones de almacenamiento hasta 1 TB.</p>\r\n<h3>Galaxy AI</h3>\r\n<p>Nuevas funciones impulsadas por IA incluyendo Circle to Search with Google, Photo Assist, Interpreter y Live Translate para una experiencia avanzada.</p>', '1399.00', 1, 1),
(6, 'Xiaomi Redmi Note 13 5G', '<h2>Descripción del Producto</h2>\r\n<p><strong>Fotografía de calidad, pantalla suave y diseño elegante.</strong></p>\r\n<h3>Sistema de Cámara Triple</h3>\r\n<p>Sistema de triple cámara con cámara principal de 108 MP, ultra gran angular y macro para capturar cada momento de forma icónica.</p>\r\n<h3>Pantalla AMOLED AdaptiveSync</h3>\r\n<p>Pantalla de 120 Hz suave y con colores vibrantes para una experiencia visual excepcional en todas las actividades.</p>\r\n<h3>Estética Icónica</h3>\r\n<p>Diseño elegante y ergonómico con curvas suaves y elementos minimalistas que destacan.</p>\r\n<h3>Protección IP54</h3>\r\n<p>Clasificación IP54 para protección contra salpicaduras y polvo, con pantalla optimizada para evitar toques accidentales con agua.</p>\r\n<h3>Batería de Larga Duración</h3>\r\n<p>Batería de 5000 mAh con carga rápida de 33 W para un rendimiento duradero y recarga rápida. Cargador incluido.</p>', '269.00', 1, 1),
(7, 'Amazfit GTS 4 Mini', '<h2>Descripción del Producto</h2>\r\n<p><strong>Reloj inteligente potente y fácil de usar con funciones vanguardistas de salud y bienestar, y una autonomía de batería ultralarga.</strong></p>\r\n<h3>Características Destacadas</h3>\r\n<ul>\r\n    <li>Pantalla Ultra HD AMOLED de 1.65 pulgadas para una visualización clara en cualquier situación.</li>\r\n    <li>Cuerpo del reloj elegante y ligero, fabricado con aleación de aluminio de calidad aeronáutica.</li>\r\n    <li>Avanzado sensor biométrico BioTracker PPG 3.0 para un seguimiento preciso de la salud.</li>\r\n    <li>Control de frecuencia cardíaca durante todo el día, incluso durante la natación.</li>\r\n</ul>', '99.00', 1, 1),
(8, 'Acer Nitro 5 AN515-58-563L', '<h2>Descripción del Producto</h2>\r\n<p><strong>Disfruta de tus partidas con el portátil gaming Acer Nitro 5 AN515-58-563L fusionando potencia y calidad en sus componentes.</strong></p>\r\n<h3>Características Destacadas</h3>\r\n<ul>\r\n    <li>Procesador Intel® Core™ i5-12450H y gráficos NVIDIA® GeForce RTX™ 4060 para un rendimiento superior.</li>\r\n    <li>Almacenamiento SSD de 512 GB y 16 GB de RAM DDR5 para una experiencia de juego sin interrupciones.</li>\r\n    <li>Pantalla IPS Full-HD de 15.6\" con una frecuencia de actualización de 144 Hz para una visualización fluida.</li>\r\n    <li>Wi-Fi 6 para una conexión rápida y estable incluso con múltiples dispositivos.</li>\r\n</ul>\r\n', '999.00', 1, 1),
(9, 'Samsung Galaxy Tab S9 Ultra 5G', '<h2>Descripción del Producto</h2>\r\n<p><strong>La nueva generación de tablets de Samsung está aquí con la Galaxy Tab S9 Series, finas pero potentes.</strong></p>\r\n<h3>Características Destacadas</h3>\r\n<ul>\r\n    <li>Procesador Snapdragon 8 Gen2 para un rendimiento superior.</li>\r\n    <li>Pantalla Dynamic AMOLED 2X para una experiencia visual incomparable.</li>\r\n    <li>Resistencia al agua y al polvo con certificación IP68.</li>\r\n    <li>Modo de productividad con multitarea y soporte para S Pen.</li>\r\n    <li>Compatibilidad con aplicaciones profesionales como Clip Studio Pain y Luma Fusion.</li>\r\n    <li>Autonomía de hasta 15 horas y altavoces AKG con Dolby Atmos.</li>\r\n</ul>', '1389.00', 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
