-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 26, 2024 at 01:26 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsgo`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint UNSIGNED NOT NULL,
  `state_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `state_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Maroa', NULL, NULL),
(2, 1, 'Puerto Ayacucho', NULL, NULL),
(3, 1, 'San Fernando de Atabapo', NULL, NULL),
(4, 2, 'Anaco', NULL, NULL),
(5, 2, 'Aragua de Barcelona', NULL, NULL),
(6, 2, 'Barcelona', NULL, NULL),
(7, 2, 'Boca de Uchire', NULL, NULL),
(8, 2, 'Cantaura', NULL, NULL),
(9, 2, 'Clarines', NULL, NULL),
(10, 2, 'El Chaparro', NULL, NULL),
(11, 2, 'El Pao Anzoátegui', NULL, NULL),
(12, 2, 'El Tigre', NULL, NULL),
(13, 2, 'El Tigrito', NULL, NULL),
(14, 2, 'Guanape', NULL, NULL),
(15, 2, 'Guanta', NULL, NULL),
(16, 2, 'Lechería', NULL, NULL),
(17, 2, 'Onoto', NULL, NULL),
(18, 2, 'Pariaguán', NULL, NULL),
(19, 2, 'Píritu', NULL, NULL),
(20, 2, 'Puerto La Cruz', NULL, NULL),
(21, 2, 'Puerto Píritu', NULL, NULL),
(22, 2, 'Sabana de Uchire', NULL, NULL),
(23, 2, 'San Mateo Anzoátegui', NULL, NULL),
(24, 2, 'San Pablo Anzoátegui', NULL, NULL),
(25, 2, 'San Tomé', NULL, NULL),
(26, 2, 'Santa Ana de Anzoátegui', NULL, NULL),
(27, 2, 'Santa Fe Anzoátegui', NULL, NULL),
(28, 2, 'Santa Rosa', NULL, NULL),
(29, 2, 'Soledad', NULL, NULL),
(30, 2, 'Urica', NULL, NULL),
(31, 2, 'Valle de Guanape', NULL, NULL),
(32, 3, 'Achaguas', NULL, NULL),
(33, 3, 'Biruaca', NULL, NULL),
(34, 3, 'Bruzual', NULL, NULL),
(35, 3, 'El Amparo', NULL, NULL),
(36, 3, 'El Nula', NULL, NULL),
(37, 3, 'Elorza', NULL, NULL),
(38, 3, 'Guasdualito', NULL, NULL),
(39, 3, 'Mantecal', NULL, NULL),
(40, 3, 'Puerto Páez', NULL, NULL),
(41, 3, 'San Fernando de Apure', NULL, NULL),
(42, 3, 'San Juan de Payara', NULL, NULL),
(43, 4, 'Barbacoas', NULL, NULL),
(44, 4, 'Cagua', NULL, NULL),
(45, 4, 'Camatagua', NULL, NULL),
(46, 4, 'Choroní', NULL, NULL),
(47, 4, 'Colonia Tovar', NULL, NULL),
(48, 4, 'El Consejo', NULL, NULL),
(49, 4, 'La Victoria', NULL, NULL),
(50, 4, 'Las Tejerías', NULL, NULL),
(51, 4, 'Magdaleno', NULL, NULL),
(52, 4, 'Maracay', NULL, NULL),
(53, 4, 'Ocumare de La Costa', NULL, NULL),
(54, 4, 'Palo Negro', NULL, NULL),
(55, 4, 'San Casimiro', NULL, NULL),
(56, 4, 'San Mateo', NULL, NULL),
(57, 4, 'San Sebastián', NULL, NULL),
(58, 4, 'Santa Cruz de Aragua', NULL, NULL),
(59, 4, 'Tocorón', NULL, NULL),
(60, 4, 'Turmero', NULL, NULL),
(61, 4, 'Villa de Cura', NULL, NULL),
(62, 4, 'Zuata', NULL, NULL),
(63, 5, 'Barinas', NULL, NULL),
(64, 5, 'Barinitas', NULL, NULL),
(65, 5, 'Barrancas', NULL, NULL),
(66, 5, 'Calderas', NULL, NULL),
(67, 5, 'Capitanejo', NULL, NULL),
(68, 5, 'Ciudad Bolivia', NULL, NULL),
(69, 5, 'El Cantón', NULL, NULL),
(70, 5, 'Las Veguitas', NULL, NULL),
(71, 5, 'Libertad de Barinas', NULL, NULL),
(72, 5, 'Sabaneta', NULL, NULL),
(73, 5, 'Santa Bárbara de Barinas', NULL, NULL),
(74, 5, 'Socopó', NULL, NULL),
(75, 6, 'Caicara del Orinoco', NULL, NULL),
(76, 6, 'Canaima', NULL, NULL),
(77, 6, 'Ciudad Bolívar', NULL, NULL),
(78, 6, 'Ciudad Piar', NULL, NULL),
(79, 6, 'El Callao', NULL, NULL),
(80, 6, 'El Dorado', NULL, NULL),
(81, 6, 'El Manteco', NULL, NULL),
(82, 6, 'El Palmar', NULL, NULL),
(83, 6, 'El Pao', NULL, NULL),
(84, 6, 'Guasipati', NULL, NULL),
(85, 6, 'Guri', NULL, NULL),
(86, 6, 'La Paragua', NULL, NULL),
(87, 6, 'Matanzas', NULL, NULL),
(88, 6, 'Puerto Ordaz', NULL, NULL),
(89, 6, 'San Félix', NULL, NULL),
(90, 6, 'Santa Elena de Uairén', NULL, NULL),
(91, 6, 'Tumeremo', NULL, NULL),
(92, 6, 'Unare', NULL, NULL),
(93, 6, 'Upata', NULL, NULL),
(94, 7, 'Bejuma', NULL, NULL),
(95, 7, 'Belén', NULL, NULL),
(96, 7, 'Campo de Carabobo', NULL, NULL),
(97, 7, 'Canoabo', NULL, NULL),
(98, 7, 'Central Tacarigua', NULL, NULL),
(99, 7, 'Chirgua', NULL, NULL),
(100, 7, 'Ciudad Alianza', NULL, NULL),
(101, 7, 'El Palito', NULL, NULL),
(102, 7, 'Guacara', NULL, NULL),
(103, 7, 'Guigue', NULL, NULL),
(104, 7, 'Las Trincheras', NULL, NULL),
(105, 7, 'Los Guayos', NULL, NULL),
(106, 7, 'Mariara', NULL, NULL),
(107, 7, 'Miranda', NULL, NULL),
(108, 7, 'Montalbán', NULL, NULL),
(109, 7, 'Morón', NULL, NULL),
(110, 7, 'Naguanagua', NULL, NULL),
(111, 7, 'Puerto Cabello', NULL, NULL),
(112, 7, 'San Joaquín', NULL, NULL),
(113, 7, 'Tocuyito', NULL, NULL),
(114, 7, 'Urama', NULL, NULL),
(115, 7, 'Valencia', NULL, NULL),
(116, 7, 'Vigirimita', NULL, NULL),
(117, 8, 'Aguirre', NULL, NULL),
(118, 8, 'Apartaderos Cojedes', NULL, NULL),
(119, 8, 'Arismendi', NULL, NULL),
(120, 8, 'Camuriquito', NULL, NULL),
(121, 8, 'El Baúl', NULL, NULL),
(122, 8, 'El Limón', NULL, NULL),
(123, 8, 'El Pao Cojedes', NULL, NULL),
(124, 8, 'El Socorro', NULL, NULL),
(125, 8, 'La Aguadita', NULL, NULL),
(126, 8, 'Las Vegas', NULL, NULL),
(127, 8, 'Libertad de Cojedes', NULL, NULL),
(128, 8, 'Mapuey', NULL, NULL),
(129, 8, 'Piñedo', NULL, NULL),
(130, 8, 'Samancito', NULL, NULL),
(131, 8, 'San Carlos', NULL, NULL),
(132, 8, 'Sucre', NULL, NULL),
(133, 8, 'Tinaco', NULL, NULL),
(134, 8, 'Tinaquillo', NULL, NULL),
(135, 8, 'Vallecito', NULL, NULL),
(136, 9, 'Tucupita', NULL, NULL),
(137, 24, 'Caracas', NULL, NULL),
(138, 24, 'El Junquito', NULL, NULL),
(139, 10, 'Adícora', NULL, NULL),
(140, 10, 'Boca de Aroa', NULL, NULL),
(141, 10, 'Cabure', NULL, NULL),
(142, 10, 'Capadare', NULL, NULL),
(143, 10, 'Capatárida', NULL, NULL),
(144, 10, 'Chichiriviche', NULL, NULL),
(145, 10, 'Churuguara', NULL, NULL),
(146, 10, 'Coro', NULL, NULL),
(147, 10, 'Cumarebo', NULL, NULL),
(148, 10, 'Dabajuro', NULL, NULL),
(149, 10, 'Judibana', NULL, NULL),
(150, 10, 'La Cruz de Taratara', NULL, NULL),
(151, 10, 'La Vela de Coro', NULL, NULL),
(152, 10, 'Los Taques', NULL, NULL),
(153, 10, 'Maparari', NULL, NULL),
(154, 10, 'Mene de Mauroa', NULL, NULL),
(155, 10, 'Mirimire', NULL, NULL),
(156, 10, 'Pedregal', NULL, NULL),
(157, 10, 'Píritu Falcón', NULL, NULL),
(158, 10, 'Pueblo Nuevo Falcón', NULL, NULL),
(159, 10, 'Puerto Cumarebo', NULL, NULL),
(160, 10, 'Punta Cardón', NULL, NULL),
(161, 10, 'Punto Fijo', NULL, NULL),
(162, 10, 'San Juan de Los Cayos', NULL, NULL),
(163, 10, 'San Luis', NULL, NULL),
(164, 10, 'Santa Ana Falcón', NULL, NULL),
(165, 10, 'Santa Cruz De Bucaral', NULL, NULL),
(166, 10, 'Tocopero', NULL, NULL),
(167, 10, 'Tocuyo de La Costa', NULL, NULL),
(168, 10, 'Tucacas', NULL, NULL),
(169, 10, 'Yaracal', NULL, NULL),
(170, 11, 'Altagracia de Orituco', NULL, NULL),
(171, 11, 'Cabruta', NULL, NULL),
(172, 11, 'Calabozo', NULL, NULL),
(173, 11, 'Camaguán', NULL, NULL),
(174, 11, 'Chaguaramas Guárico', NULL, NULL),
(175, 11, 'El Socorro', NULL, NULL),
(176, 11, 'El Sombrero', NULL, NULL),
(177, 11, 'Las Mercedes de Los Llanos', NULL, NULL),
(178, 11, 'Lezama', NULL, NULL),
(179, 11, 'Onoto', NULL, NULL),
(180, 11, 'Ortíz', NULL, NULL),
(181, 11, 'San José de Guaribe', NULL, NULL),
(182, 11, 'San Juan de Los Morros', NULL, NULL),
(183, 11, 'San Rafael de Laya', NULL, NULL),
(184, 11, 'Santa María de Ipire', NULL, NULL),
(185, 11, 'Tucupido', NULL, NULL),
(186, 11, 'Valle de La Pascua', NULL, NULL),
(187, 11, 'Zaraza', NULL, NULL),
(188, 12, 'Aguada Grande', NULL, NULL),
(189, 12, 'Atarigua', NULL, NULL),
(190, 12, 'Barquisimeto', NULL, NULL),
(191, 12, 'Bobare', NULL, NULL),
(192, 12, 'Cabudare', NULL, NULL),
(193, 12, 'Carora', NULL, NULL),
(194, 12, 'Cubiro', NULL, NULL),
(195, 12, 'Cují', NULL, NULL),
(196, 12, 'Duaca', NULL, NULL),
(197, 12, 'El Manzano', NULL, NULL),
(198, 12, 'El Tocuyo', NULL, NULL),
(199, 12, 'Guaríco', NULL, NULL),
(200, 12, 'Humocaro Alto', NULL, NULL),
(201, 12, 'Humocaro Bajo', NULL, NULL),
(202, 12, 'La Miel', NULL, NULL),
(203, 12, 'Moroturo', NULL, NULL),
(204, 12, 'Quíbor', NULL, NULL),
(205, 12, 'Río Claro', NULL, NULL),
(206, 12, 'Sanare', NULL, NULL),
(207, 12, 'Santa Inés', NULL, NULL),
(208, 12, 'Sarare', NULL, NULL),
(209, 12, 'Siquisique', NULL, NULL),
(210, 12, 'Tintorero', NULL, NULL),
(211, 13, 'Apartaderos Mérida', NULL, NULL),
(212, 13, 'Arapuey', NULL, NULL),
(213, 13, 'Bailadores', NULL, NULL),
(214, 13, 'Caja Seca', NULL, NULL),
(215, 13, 'Canaguá', NULL, NULL),
(216, 13, 'Chachopo', NULL, NULL),
(217, 13, 'Chiguara', NULL, NULL),
(218, 13, 'Ejido', NULL, NULL),
(219, 13, 'El Vigía', NULL, NULL),
(220, 13, 'La Azulita', NULL, NULL),
(221, 13, 'La Playa', NULL, NULL),
(222, 13, 'Lagunillas Mérida', NULL, NULL),
(223, 13, 'Mérida', NULL, NULL),
(224, 13, 'Mesa de Bolívar', NULL, NULL),
(225, 13, 'Mucuchíes', NULL, NULL),
(226, 13, 'Mucujepe', NULL, NULL),
(227, 13, 'Mucuruba', NULL, NULL),
(228, 13, 'Nueva Bolivia', NULL, NULL),
(229, 13, 'Palmarito', NULL, NULL),
(230, 13, 'Pueblo Llano', NULL, NULL),
(231, 13, 'Santa Cruz de Mora', NULL, NULL),
(232, 13, 'Santa Elena de Arenales', NULL, NULL),
(233, 13, 'Santo Domingo', NULL, NULL),
(234, 13, 'Tabáy', NULL, NULL),
(235, 13, 'Timotes', NULL, NULL),
(236, 13, 'Torondoy', NULL, NULL),
(237, 13, 'Tovar', NULL, NULL),
(238, 13, 'Tucani', NULL, NULL),
(239, 13, 'Zea', NULL, NULL),
(240, 14, 'Araguita', NULL, NULL),
(241, 14, 'Carrizal', NULL, NULL),
(242, 14, 'Caucagua', NULL, NULL),
(243, 14, 'Chaguaramas Miranda', NULL, NULL),
(244, 14, 'Charallave', NULL, NULL),
(245, 14, 'Chirimena', NULL, NULL),
(246, 14, 'Chuspa', NULL, NULL),
(247, 14, 'Cúa', NULL, NULL),
(248, 14, 'Cupira', NULL, NULL),
(249, 14, 'Curiepe', NULL, NULL),
(250, 14, 'El Guapo', NULL, NULL),
(251, 14, 'El Jarillo', NULL, NULL),
(252, 14, 'Filas de Mariche', NULL, NULL),
(253, 14, 'Guarenas', NULL, NULL),
(254, 14, 'Guatire', NULL, NULL),
(255, 14, 'Higuerote', NULL, NULL),
(256, 14, 'Los Anaucos', NULL, NULL),
(257, 14, 'Los Teques', NULL, NULL),
(258, 14, 'Ocumare del Tuy', NULL, NULL),
(259, 14, 'Panaquire', NULL, NULL),
(260, 14, 'Paracotos', NULL, NULL),
(261, 14, 'Río Chico', NULL, NULL),
(262, 14, 'San Antonio de Los Altos', NULL, NULL),
(263, 14, 'San Diego de Los Altos', NULL, NULL),
(264, 14, 'San Fernando del Guapo', NULL, NULL),
(265, 14, 'San Francisco de Yare', NULL, NULL),
(266, 14, 'San José de Los Altos', NULL, NULL),
(267, 14, 'San José de Río Chico', NULL, NULL),
(268, 14, 'San Pedro de Los Altos', NULL, NULL),
(269, 14, 'Santa Lucía', NULL, NULL),
(270, 14, 'Santa Teresa', NULL, NULL),
(271, 14, 'Tacarigua de La Laguna', NULL, NULL),
(272, 14, 'Tacarigua de Mamporal', NULL, NULL),
(273, 14, 'Tácata', NULL, NULL),
(274, 14, 'Turumo', NULL, NULL),
(275, 15, 'Aguasay', NULL, NULL),
(276, 15, 'Aragua de Maturín', NULL, NULL),
(277, 15, 'Barrancas del Orinoco', NULL, NULL),
(278, 15, 'Caicara de Maturín', NULL, NULL),
(279, 15, 'Caripe', NULL, NULL),
(280, 15, 'Caripito', NULL, NULL),
(281, 15, 'Chaguaramal', NULL, NULL),
(282, 15, 'Chaguaramas Monagas', NULL, NULL),
(283, 15, 'El Furrial', NULL, NULL),
(284, 15, 'El Tejero', NULL, NULL),
(285, 15, 'Jusepín', NULL, NULL),
(286, 15, 'La Toscana', NULL, NULL),
(287, 15, 'Maturín', NULL, NULL),
(288, 15, 'Miraflores', NULL, NULL),
(289, 15, 'Punta de Mata', NULL, NULL),
(290, 15, 'Quiriquire', NULL, NULL),
(291, 15, 'San Antonio de Maturín', NULL, NULL),
(292, 15, 'San Vicente Monagas', NULL, NULL),
(293, 15, 'Santa Bárbara', NULL, NULL),
(294, 15, 'Temblador', NULL, NULL),
(295, 15, 'Teresen', NULL, NULL),
(296, 15, 'Uracoa', NULL, NULL),
(297, 16, 'Altagracia', NULL, NULL),
(298, 16, 'Boca de Pozo', NULL, NULL),
(299, 16, 'Boca de Río', NULL, NULL),
(300, 16, 'El Espinal', NULL, NULL),
(301, 16, 'El Valle del Espíritu Santo', NULL, NULL),
(302, 16, 'El Yaque', NULL, NULL),
(303, 16, 'Juangriego', NULL, NULL),
(304, 16, 'La Asunción', NULL, NULL),
(305, 16, 'La Guardia', NULL, NULL),
(306, 16, 'Pampatar', NULL, NULL),
(307, 16, 'Porlamar', NULL, NULL),
(308, 16, 'Puerto Fermín', NULL, NULL),
(309, 16, 'Punta de Piedras', NULL, NULL),
(310, 16, 'San Francisco de Macanao', NULL, NULL),
(311, 16, 'San Juan Bautista', NULL, NULL),
(312, 16, 'San Pedro de Coche', NULL, NULL),
(313, 16, 'Santa Ana de Nueva Esparta', NULL, NULL),
(314, 16, 'Villa Rosa', NULL, NULL),
(315, 17, 'Acarigua', NULL, NULL),
(316, 17, 'Agua Blanca', NULL, NULL),
(317, 17, 'Araure', NULL, NULL),
(318, 17, 'Biscucuy', NULL, NULL),
(319, 17, 'Boconoito', NULL, NULL),
(320, 17, 'Campo Elías', NULL, NULL),
(321, 17, 'Chabasquén', NULL, NULL),
(322, 17, 'Guanare', NULL, NULL),
(323, 17, 'Guanarito', NULL, NULL),
(324, 17, 'La Aparición', NULL, NULL),
(325, 17, 'La Misión', NULL, NULL),
(326, 17, 'Mesa de Cavacas', NULL, NULL),
(327, 17, 'Ospino', NULL, NULL),
(328, 17, 'Papelón', NULL, NULL),
(329, 17, 'Payara', NULL, NULL),
(330, 17, 'Pimpinela', NULL, NULL),
(331, 17, 'Píritu de Portuguesa', NULL, NULL),
(332, 17, 'San Rafael de Onoto', NULL, NULL),
(333, 17, 'Santa Rosalía', NULL, NULL),
(334, 17, 'Turén', NULL, NULL),
(335, 18, 'Altos de Sucre', NULL, NULL),
(336, 18, 'Araya', NULL, NULL),
(337, 18, 'Cariaco', NULL, NULL),
(338, 18, 'Carúpano', NULL, NULL),
(339, 18, 'Casanay', NULL, NULL),
(340, 18, 'Cumaná', NULL, NULL),
(341, 18, 'Cumanacoa', NULL, NULL),
(342, 18, 'El Morro Puerto Santo', NULL, NULL),
(343, 18, 'El Pilar', NULL, NULL),
(344, 18, 'El Poblado', NULL, NULL),
(345, 18, 'Guaca', NULL, NULL),
(346, 18, 'Guiria', NULL, NULL),
(347, 18, 'Irapa', NULL, NULL),
(348, 18, 'Manicuare', NULL, NULL),
(349, 18, 'Mariguitar', NULL, NULL),
(350, 18, 'Río Caribe', NULL, NULL),
(351, 18, 'San Antonio del Golfo', NULL, NULL),
(352, 18, 'San José de Aerocuar', NULL, NULL),
(353, 18, 'San Vicente de Sucre', NULL, NULL),
(354, 18, 'Santa Fe de Sucre', NULL, NULL),
(355, 18, 'Tunapuy', NULL, NULL),
(356, 18, 'Yaguaraparo', NULL, NULL),
(357, 18, 'Yoco', NULL, NULL),
(358, 19, 'Abejales', NULL, NULL),
(359, 19, 'Borota', NULL, NULL),
(360, 19, 'Bramon', NULL, NULL),
(361, 19, 'Capacho', NULL, NULL),
(362, 19, 'Colón', NULL, NULL),
(363, 19, 'Coloncito', NULL, NULL),
(364, 19, 'Cordero', NULL, NULL),
(365, 19, 'El Cobre', NULL, NULL),
(366, 19, 'El Pinal', NULL, NULL),
(367, 19, 'Independencia', NULL, NULL),
(368, 19, 'La Fría', NULL, NULL),
(369, 19, 'La Grita', NULL, NULL),
(370, 19, 'La Pedrera', NULL, NULL),
(371, 19, 'La Tendida', NULL, NULL),
(372, 19, 'Las Delicias', NULL, NULL),
(373, 19, 'Las Hernández', NULL, NULL),
(374, 19, 'Lobatera', NULL, NULL),
(375, 19, 'Michelena', NULL, NULL),
(376, 19, 'Palmira', NULL, NULL),
(377, 19, 'Pregonero', NULL, NULL),
(378, 19, 'Queniquea', NULL, NULL),
(379, 19, 'Rubio', NULL, NULL),
(380, 19, 'San Antonio del Tachira', NULL, NULL),
(381, 19, 'San Cristobal', NULL, NULL),
(382, 19, 'San José de Bolívar', NULL, NULL),
(383, 19, 'San Josecito', NULL, NULL),
(384, 19, 'San Pedro del Río', NULL, NULL),
(385, 19, 'Santa Ana Táchira', NULL, NULL),
(386, 19, 'Seboruco', NULL, NULL),
(387, 19, 'Táriba', NULL, NULL),
(388, 19, 'Umuquena', NULL, NULL),
(389, 19, 'Ureña', NULL, NULL),
(390, 20, 'Batatal', NULL, NULL),
(391, 20, 'Betijoque', NULL, NULL),
(392, 20, 'Boconó', NULL, NULL),
(393, 20, 'Carache', NULL, NULL),
(394, 20, 'Chejende', NULL, NULL),
(395, 20, 'Cuicas', NULL, NULL),
(396, 20, 'El Dividive', NULL, NULL),
(397, 20, 'El Jaguito', NULL, NULL),
(398, 20, 'Escuque', NULL, NULL),
(399, 20, 'Isnotú', NULL, NULL),
(400, 20, 'Jajó', NULL, NULL),
(401, 20, 'La Ceiba', NULL, NULL),
(402, 20, 'La Concepción de Trujllo', NULL, NULL),
(403, 20, 'La Mesa de Esnujaque', NULL, NULL),
(404, 20, 'La Puerta', NULL, NULL),
(405, 20, 'La Quebrada', NULL, NULL),
(406, 20, 'Mendoza Fría', NULL, NULL),
(407, 20, 'Meseta de Chimpire', NULL, NULL),
(408, 20, 'Monay', NULL, NULL),
(409, 20, 'Motatán', NULL, NULL),
(410, 20, 'Pampán', NULL, NULL),
(411, 20, 'Pampanito', NULL, NULL),
(412, 20, 'Sabana de Mendoza', NULL, NULL),
(413, 20, 'San Lázaro', NULL, NULL),
(414, 20, 'Santa Ana de Trujillo', NULL, NULL),
(415, 20, 'Tostós', NULL, NULL),
(416, 20, 'Trujillo', NULL, NULL),
(417, 20, 'Valera', NULL, NULL),
(418, 21, 'Carayaca', NULL, NULL),
(419, 21, 'Litoral', NULL, NULL),
(420, 25, 'Archipiélago Los Roques', NULL, NULL),
(421, 22, 'Aroa', NULL, NULL),
(422, 22, 'Boraure', NULL, NULL),
(423, 22, 'Campo Elías de Yaracuy', NULL, NULL),
(424, 22, 'Chivacoa', NULL, NULL),
(425, 22, 'Cocorote', NULL, NULL),
(426, 22, 'Farriar', NULL, NULL),
(427, 22, 'Guama', NULL, NULL),
(428, 22, 'Marín', NULL, NULL),
(429, 22, 'Nirgua', NULL, NULL),
(430, 22, 'Sabana de Parra', NULL, NULL),
(431, 22, 'Salom', NULL, NULL),
(432, 22, 'San Felipe', NULL, NULL),
(433, 22, 'San Pablo de Yaracuy', NULL, NULL),
(434, 22, 'Urachiche', NULL, NULL),
(435, 22, 'Yaritagua', NULL, NULL),
(436, 22, 'Yumare', NULL, NULL),
(437, 23, 'Bachaquero', NULL, NULL),
(438, 23, 'Bobures', NULL, NULL),
(439, 23, 'Cabimas', NULL, NULL),
(440, 23, 'Campo Concepción', NULL, NULL),
(441, 23, 'Campo Mara', NULL, NULL),
(442, 23, 'Campo Rojo', NULL, NULL),
(443, 23, 'Carrasquero', NULL, NULL),
(444, 23, 'Casigua', NULL, NULL),
(445, 23, 'Chiquinquirá', NULL, NULL),
(446, 23, 'Ciudad Ojeda', NULL, NULL),
(447, 23, 'El Batey', NULL, NULL),
(448, 23, 'El Carmelo', NULL, NULL),
(449, 23, 'El Chivo', NULL, NULL),
(450, 23, 'El Guayabo', NULL, NULL),
(451, 23, 'El Mene', NULL, NULL),
(452, 23, 'El Venado', NULL, NULL),
(453, 23, 'Encontrados', NULL, NULL),
(454, 23, 'Gibraltar', NULL, NULL),
(455, 23, 'Isla de Toas', NULL, NULL),
(456, 23, 'La Concepción del Zulia', NULL, NULL),
(457, 23, 'La Paz', NULL, NULL),
(458, 23, 'La Sierrita', NULL, NULL),
(459, 23, 'Lagunillas del Zulia', NULL, NULL),
(460, 23, 'Las Piedras de Perijá', NULL, NULL),
(461, 23, 'Los Cortijos', NULL, NULL),
(462, 23, 'Machiques', NULL, NULL),
(463, 23, 'Maracaibo', NULL, NULL),
(464, 23, 'Mene Grande', NULL, NULL),
(465, 23, 'Palmarejo', NULL, NULL),
(466, 23, 'Paraguaipoa', NULL, NULL),
(467, 23, 'Potrerito', NULL, NULL),
(468, 23, 'Pueblo Nuevo del Zulia', NULL, NULL),
(469, 23, 'Puertos de Altagracia', NULL, NULL),
(470, 23, 'Punta Gorda', NULL, NULL),
(471, 23, 'Sabaneta de Palma', NULL, NULL),
(472, 23, 'San Francisco', NULL, NULL),
(473, 23, 'San José de Perijá', NULL, NULL),
(474, 23, 'San Rafael del Moján', NULL, NULL),
(475, 23, 'San Timoteo', NULL, NULL),
(476, 23, 'Santa Bárbara Del Zulia', NULL, NULL),
(477, 23, 'Santa Cruz de Mara', NULL, NULL),
(478, 23, 'Santa Cruz del Zulia', NULL, NULL),
(479, 23, 'Santa Rita', NULL, NULL),
(480, 23, 'Sinamaica', NULL, NULL),
(481, 23, 'Tamare', NULL, NULL),
(482, 23, 'Tía Juana', NULL, NULL),
(483, 23, 'Villa del Rosario', NULL, NULL),
(484, 21, 'La Guaira', NULL, NULL),
(485, 21, 'Catia La Mar', NULL, NULL),
(486, 21, 'Macuto', NULL, NULL),
(487, 21, 'Naiguatá', NULL, NULL),
(488, 25, 'Archipiélago Los Monjes', NULL, NULL),
(489, 25, 'Isla La Tortuga y Cayos adyacentes', NULL, NULL),
(490, 25, 'Isla La Sola', NULL, NULL),
(491, 25, 'Islas Los Testigos', NULL, NULL),
(492, 25, 'Islas Los Frailes', NULL, NULL),
(493, 25, 'Isla La Orchila', NULL, NULL),
(494, 25, 'Archipiélago Las Aves', NULL, NULL),
(495, 25, 'Isla de Aves', NULL, NULL),
(496, 25, 'Isla La Blanquilla', NULL, NULL),
(497, 25, 'Isla de Patos', NULL, NULL),
(498, 25, 'Islas Los Hermanos', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint UNSIGNED NOT NULL,
  `state_id` bigint UNSIGNED DEFAULT NULL,
  `city_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rif` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position_contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `state_id`, `city_id`, `name`, `rif`, `address`, `phone_number1`, `phone_number2`, `email`, `contact_person`, `position_contact`, `comment`, `active`, `created_at`, `updated_at`) VALUES
(1, 24, 137, 'COLOMBINA DE VENEZUELA, C.A.', 'J-00014426-5', 'AVDA ORINOCO URB LAS MERCEDES EDIF TORREO UNO PISO 5 OFIC PH-5 CARACAS DC', '02122573724', '', '', '', '', 'RIF. J-00014426-5', '0', '2018-04-10 18:25:10', '2008-08-04 21:19:55'),
(2, NULL, NULL, 'ARCLAD DE VENEZUELA C.A.', '', 'KM1, CARR NAL CHARALLAVE CUA FTE REST EL GRANDE', '04144922030', '02392488149', 'eliseg29@hotmail.com', 'ELIZABETH SEGNINI', 'JEFE DE IMPORTACIONE', '', '0', '2012-07-02 17:25:24', '2008-08-04 21:19:55'),
(3, NULL, NULL, 'C.I. ABRACOL S.A.', '', 'AV. PRINCIPAL DE LA URBINA CON CALLE 7 EDIFICIO ABRACOL', '02122432845', '02122432845', 'luzfalopez@cantv.net', 'LUZ LOPEZ', 'JEFE DE IMPORTACIONE', '', '0', '2012-02-07 01:42:03', '2008-08-04 23:22:23'),
(4, NULL, NULL, 'DISTRIBUIDORA DIEFERCA S.A.', '', 'URB INDUSTRIAL LA YAGUARA, 2DA TRANSVERSAL, CARACAS', '02124716464', '02124716464', 'jeannette@dieferca.com', 'JANETH ALVAREZ', '', '', '0', '2008-08-05 00:39:09', '2008-08-05 00:39:09'),
(5, NULL, NULL, 'EXPOCON, C.A.', '', 'CALLE 62 N. 14-40 QUINTA SAN ANTONIO', '04127867852', '02122324938', 'expocon_c.a@hotmail.com', '', '', '', '0', '2008-08-05 00:47:28', '2008-08-05 00:47:28'),
(6, NULL, NULL, 'INDUSTRIAS FAACA C.A.', '', 'AV ORINOCO QTA MARIANA N. 32-11 CARACAS', '02129931211', '02129934833', 'mpericana@faaca.com', 'ZULAY ESCALONA', '', '', '0', '2008-08-05 00:59:08', '2008-08-05 00:59:08'),
(7, NULL, NULL, 'METALURGICA CARABOBO, S.A.', '', '1RA AV. ZONA INDUSTRIAL SUR VALENCIA, CARABOBO', '02418130399', '0241-8130399', 'mlopez@metalcar.com.ve', 'MARIA ELENA LOPEZ', '', '', '0', '2008-08-05 01:13:57', '2008-08-05 01:13:57'),
(8, 24, 137, 'FERTIQUIM, C.A.', 'J000946639', 'AVDA RIO CAURA URB PRADOS DEL ESTE EDIF TORRE HUMBOLDT PISO 16 OFIC 07 CARACAS DC', '0212-9765768', '0212-9750322', NULL, NULL, NULL, NULL, '0', '2018-04-10 18:27:06', '2024-01-25 17:10:25'),
(9, NULL, NULL, 'NORTH AMERICA INTERNATIONAL', '', 'VALENCIA', '', '', 'northam@telcel.net.ve', 'ELIGIO GOTERA', '', '', '0', '2012-01-09 22:34:53', '2008-08-05 06:00:54'),
(10, NULL, NULL, 'SOLVEN C.A.', '', '', '', '', 'belkys_bolivar@cantv.net', 'BELKIS BOLIVAR', '', '', '0', '2008-08-05 06:08:21', '2008-08-05 06:08:21'),
(11, NULL, NULL, 'SOPLATEX. C.A.', '', 'URBANIZACION IND. VARENGA, AV. PRINCIPAL, EDF. YAKELLINE CHARALLAVE EDO. MIRANDA', '( 0239 ) 248-0071', '( 0239 ) 248-0071', 'soplatex@hotmail.com', 'MIGUEL MORA', '', '', '0', '2013-04-03 22:58:21', '2008-09-05 00:41:44'),
(12, NULL, NULL, 'TUBERIAS RIGIDAS DE PVC', '', '', '', '', 'ldiaz@tubrica.com', '', 'LUISA DIAZ', '', '0', '2012-02-04 01:00:57', '2008-08-05 06:23:29'),
(13, NULL, NULL, 'UNION QUIMICA', '', 'VALENCIA', '', '', 'operac_planific@unionquimica.com.ve', 'EDGAR MEDINA', '', '', '0', '2008-08-05 06:41:57', '2008-08-05 06:41:57'),
(14, NULL, NULL, 'INDUSTRIAS VENPET, C.A.', '', 'AVENIDA LAS INDUSTRIAS CON CALLE EL TRIGO, ZONA INDUSTRIAL VALENCIA', '', '', 'petlatino@cantv.net', 'MARCELINO GARCIA', '', '', '0', '2012-03-06 01:49:44', '2008-08-06 00:08:30'),
(15, NULL, NULL, 'TEMACO PUNTO FIJO C.A.', '', 'AVENIDA PRONCIPAL TROPICANA DIAGONAL A LA PLACITA PUNTO FIJO', '', '', 'temacopf@cantv.net', '', '', '', '0', '2012-01-24 16:37:16', '2008-08-11 20:02:16'),
(16, NULL, NULL, 'INDUSTRIALES SUPPLY, C.A.', '', 'CALLE 66 CON SECTOR PARAISO, NO. 22-64 MARACAIBO EDO. ZULIA', '0261-783-4690', '0261-783-4690', 'gasubelcharif@hotmail.com', 'GASUBEL CHARIF', '', '', '0', '2015-06-19 19:47:50', '2008-09-23 19:06:33'),
(17, NULL, NULL, 'TOTAL PLASTIC, C.A.', '', 'ZONA INDUSTRIAL SAN VICENTE CC LOS TEQUE', '', '', 'totalplastic@cantv.net', 'KARIN ROSALES', '', '', '0', '2008-08-13 01:02:15', '2008-08-13 01:02:15'),
(18, NULL, NULL, 'SADI, C.A.', '', 'CALLE5, CRA 5 BARRIO PUEBLO NUEVO EDF. EL WAGON OF. 7 UREÑA', '0245-5648565', '', 'sadi-guacara@cantv.net', 'Belkis Bolivar', '', '', '0', '2012-07-02 17:41:59', '2008-08-21 19:00:57'),
(19, NULL, NULL, 'INDUSTRIAL PARAISO, C.A.', '', 'SAN MARTIN ESQUINA, CALLEJON AGROPSA, EDIFICIO YARDEN', '02124615511', '02124616019', 'importacion@colchonesparadise.com', 'WILLIAM YISRAEL', '', '', '0', '2008-08-21 21:46:51', '2008-08-21 21:46:51'),
(20, NULL, NULL, 'ACABADOS COLMENARES MORA C.A.', '', 'AVE 5 CLL 4 # 4-76 BARRIO LA GUAJIRA UREÑA', '', '', 'gmora@colmo.com.ve', '', '', '', '0', '2009-03-31 19:31:19', '2008-08-25 20:25:22'),
(21, NULL, NULL, 'GABRIEL DE VENEZUELA, C.A.', '', 'URB. IND. EL RECREO, CALLE A PARCELA 18', '0241-878-3863', '0241-878-0691', 'ELENA.LEON@ARVINMERITOR.COM', '', 'LUIS DANIEL / YANILDA RAMIREZ', '', '0', '2008-08-28 00:21:53', '2008-08-28 00:21:53'),
(22, NULL, NULL, 'TOPFLIGHT DE VENEZUELA C.A.', '', 'AV LUIS DE CAMOENZ Y CALLE EL ARENAL', '0212-9414711', '', 'asalas@tovencavzla.net', '', '', '', '0', '2012-07-30 20:21:35', '2008-08-29 20:48:53'),
(23, NULL, NULL, 'ALJON SUMINISTRO, C.A.', '', '', '', '', 'algo2@hotmail.com', '', '', '', '0', '2018-04-11 00:15:38', '2008-09-01 20:06:36'),
(24, NULL, NULL, 'VENEZOLANA DE MODULARES, C.A.', '', '', '', '', 'algo3@hotmail.com', '', '', '', '0', '2018-04-11 00:16:14', '2008-09-02 21:40:45'),
(25, NULL, NULL, 'CENTRO ACEROS, C.A.', '', '', '', '', 'algo4@hotmail.com', '', '', '', '0', '2018-04-10 18:27:55', '2008-09-03 19:52:10'),
(26, NULL, NULL, 'ABRAFERR DE VENEZUELA', '', 'CALLE 8 CON CALLE 3 EDIF, CANEY, 1er PISO LA URBINA, CARACAS DTTO. FEDERAL', '(0212) 243-2845', '', 'lufalopez@cantv.net', 'LUZ LOPEZ', '', '', '0', '2012-07-06 22:53:12', '2008-09-03 20:26:38'),
(27, NULL, NULL, 'FERRE-ACEROS, C.A.', '', 'FINAL AV. ROMULO GALLEGOS,No. 4-150, ZONA IND. 1 GALPON 4-150 BARQUISIMETO EDO. LARA', '(0251) 237-3693', '(0251) 237-5476', 'ferre_acerosca@cantv.net', 'VICTOR ISAAC', '', '', '0', '2008-09-23 19:49:01', '2008-09-23 19:49:01'),
(28, NULL, NULL, 'PIRELLI DE VENEZUELA, C.A.', '', 'CARRETERA NACIONAL GUACARA  EDO. CARABOBO', '(0245) 400-1211', '', 'giovanni.mattias@pirelli.com', 'giovanni mattias', '', '', '0', '2015-06-19 19:58:21', '2008-09-23 21:07:36'),
(29, NULL, NULL, 'GLEASON & CIA, S.A.', '', 'ZONA INDUSTRIAL LAS VEGAS, CALLE MARCOS BERACASA, GALPON 116 CAGUA EDO. ARAGUA', '(0244) 395-8589', '(0244) 447-4424', 'gleasoncia@cantv.net', 'ING. LOREDANA ROSATO', '', '', '0', '2013-03-15 23:03:49', '2008-09-24 19:24:32'),
(30, NULL, NULL, 'C. I.  COLOMBOANDINA', '', 'AV. INTERNACIONAL SIMON BOLIVAR NO. 10-26 L-8   UREÑA EDO. TACHIRA', '0276 416-4296', '', 'colomboandina@gmail.com', 'ERNANDO ARANGO', '', '', '0', '2008-10-03 23:56:09', '2008-10-03 23:56:09'),
(31, NULL, NULL, 'CARPINTERIA EL  PINO', '', 'CARRETERA PETARE SANTA LUCIA, KM. 9 LOCAL G-30 SECTOR LA CANDELARIA MARICHES, CARACAS', '0212 532-0053', '', 'carpinteriaelpinoca@hotmail.com', 'YELITZA CHACON', '', '', '0', '2008-10-07 01:07:29', '2008-10-07 01:07:29'),
(32, NULL, NULL, 'INDUSTRIAS DEMATORCA, C.A.', '', 'CARRETERA MARACAY TURMERO, SECTOR EL MACARO, PARCELA No. 7 GALPON 1 Y 2, TURMERO EDO.  ARAGUA', '0244 663-8840', '0244 663-9740', 'DEMATORCA@CANTV.NET', 'ING. ALEJANDRO DE MARCO', '', '', '0', '2008-10-08 21:28:01', '2008-10-08 21:28:01'),
(33, NULL, NULL, 'TECNOEQUIP C.A.', '', 'EDIFICIO PARQUE CRISTAL, TORRE OESTE', '04241767964', '', 'jairoa@hotmail.com', '', '', '', '0', '2008-10-14 21:48:38', '2008-10-14 21:48:38'),
(34, NULL, NULL, 'ANVIAGUA,C.A.', '', 'CARRETERA NAC.ENTRE S Y SAN JOSE DE LOS ALTOS .EDO MIRANDA.', '04142418932', '', 'ANVIAGUA@GMAIL.COM', 'SRA.ROSA MORENO.', '', '', '0', '2008-10-15 20:18:29', '2008-10-15 19:29:07'),
(35, NULL, NULL, 'INDUSTRIAS EL CARMEN', '', 'ZONA IND. CARABOBO,, 8VA. TRANSV. PARCELA Q3-Q4', '0241 832-6544', '', 'icdpadmon@cantv.net', 'SRA. MARIELVIN', '', '', '0', '2014-04-14 23:28:55', '2008-10-24 00:43:27'),
(36, NULL, NULL, 'ELECTROCONDUCTORES, C.A.', '', 'AV., VALENCIA QUINTA ELECON, URB, LAS INDUSTRIAS,  CARCAS', '0212-7823411', '', 'ivanohernandez1@cantv.net', '', 'ARACELIS VILLA', '', '0', '2012-04-11 18:11:16', '2008-10-31 20:13:52'),
(37, NULL, NULL, 'EMBOTELLADORA CRISTAL, C.A', '', 'AV. PPAL. DE LA COOPERATIVA, DETRAS DE MALATIOLOGIA, LAS DELICIAS, EDO. ARAGUA', '0243 241-3177', '', 'elopez@aguacristal.com.ve', '', 'EDUARDO LOPEZ', '', '0', '2008-11-10 20:26:12', '2008-11-10 20:26:12'),
(38, NULL, NULL, 'CENTRAL ELECTRICA, S.A.', '', 'AV. AYACUCHO PRIMERA N-123 MARACAY EDO. ARAGUA', '(0243) 554-5501', '', 'centralelectrica@cantv.net', 'MARIA QUINTERO', '', '', '0', '2012-09-05 18:31:41', '2008-12-02 01:54:55'),
(39, NULL, NULL, 'ENVASES VILLAPET C.A.', '', '', '0244-3889727', '', 'villapet05@yahoo.es', 'Aurelina Villalobos', '', '', '0', '2012-01-19 18:27:57', '2008-12-10 20:38:15'),
(40, NULL, NULL, 'INVERSIONES SINTERCON DE VZLA', '', 'AV. FCO. DE MIRANDA, EDIF. ILSE, NIVEL MEZZANINA OFIC. 18 LOS RUICES CARACAS', '0212 239-8865', '', 'sintercon@gmail.com', 'JHON JAIRO SALCEDO JIMENES', '', '', '0', '2008-12-17 23:44:26', '2008-12-17 23:44:26'),
(41, NULL, NULL, 'CALIBRADOS DE VZULA., S.A. CAVENSA', '', 'CALLE 30 ENTRE CARRERA 4 Y 5 , GALPON No. 63 ZONA INDUSTRIAL BARQUISIMETO', '(0251) 237-1762', '', 'cavensa@cantv.net', 'SR. JOAQUIN PREPER', '', '', '0', '2012-07-06 23:04:08', '2009-01-29 22:27:19'),
(42, NULL, NULL, 'PETROFERT C.A', '', 'AV. RIO CAURA TORRE HUMBOLDT CARACAS - VENEZUELA', '02129750322', '', 'eca@behrens.com.ve', 'EILIN ALVAREZ', 'GERENTE', '', '0', '2012-07-30 18:43:32', '2009-02-13 00:19:01'),
(43, NULL, NULL, 'QUALAVEN C.A.', '', 'AV IRIBAREN BORGES PARCELA 7-11 VALENCIA', '', '', 'PRUEBA@PRUEBA.COM', '', '', '', '0', '2009-02-20 00:30:45', '2009-02-20 00:30:45'),
(44, NULL, NULL, 'REPRESENTACIONES DEL HOGAR', '', 'ZONA INDUST. 11 AVENIDA FERDINADO ENTRE 6 Y 7', '582512692502', '', 'PRUEBA1@PRUEBA.COM', '', '', '', '0', '2015-06-19 20:00:20', '2009-02-25 18:54:30'),
(45, NULL, NULL, 'FABRITEXCA C.A.', '', 'CALLE VARGAS, BOLEITA CARACAS VENEZUELA', '', '', 'PRUEBA2@PRUEBA.COM', '', '', '', '0', '2009-02-25 23:43:46', '2009-02-25 23:43:46'),
(46, NULL, NULL, 'IMPORTAD. VENTECH', '', 'URB. MONTALBANN3 CARACAS', '5821247266', '', 'PRUEBA3@PRUEBA.COM', '', '', '', '0', '2009-03-03 00:44:33', '2009-03-03 00:44:33'),
(47, NULL, NULL, 'GRUPO MELCA C4 C.A', '', 'SANBIL LOC. A- R22 NIVEL AUT CARACAS', '58212265', '', 'PRUEBA4@PRUEBA.COM', '', '', '', '0', '2009-03-03 17:16:57', '2009-03-03 17:16:57'),
(48, NULL, NULL, 'INVERSIONES CRAIVEN C.A', '', 'ZONA INDUSTRIAL II BARQUISIMETO', '', '', 'PRUEBA5@PRUEBA.COM', '', '', '', '0', '2013-11-14 18:12:53', '2009-03-05 01:17:04'),
(49, NULL, NULL, 'INVERSIONES PALESTRA', '', 'CL LOS VEGAS EDIFICIO BONACA CARACAS', '582129491111', '', 'PRUEBA6@PRUEBA.COM', '', '', '', '0', '2009-03-05 20:04:14', '2009-03-05 20:04:14'),
(50, NULL, NULL, 'INFRA', '', 'URB. COLINAS DE LA CALIFORNIA, AV. SAN FCO. C.C. STA. ROSA CARACAS', '0212-257-9910', '0212- 257-9834', 'iquintero@infrarad.com', '', '', '', '0', '2009-03-09 20:38:31', '2009-03-09 20:38:31'),
(51, NULL, NULL, 'DISTRIBUIDORA ADELANTE C.A.', '', '1RA AV ZONA INDUSTRIAL GUARENAS MIRANDA', '25744644', '', 'PRUEBA7@PRUEBA.COM', '', '', '', '0', '2009-03-10 02:58:31', '2009-03-10 02:58:31'),
(52, NULL, NULL, 'TOPS AND BOTTONS ', '', '', '', '', 'algo5@hotmail.com', '', '', '', '0', '2018-01-17 23:25:40', '2009-03-12 17:59:42'),
(53, NULL, NULL, 'SUSAETA EDICIONES S.A', '', 'IRA CALLE LA INDUSTRIA CARACAS', '0212-251-42-44', '', 'PRUEBA8@PRUEBA.COM', '', '', '', '0', '2009-03-21 01:26:56', '2009-03-21 01:26:56'),
(54, NULL, NULL, 'COMERCIALIZADORA 190305, C.A.', '', 'AV. 5 CALLE 4 No. 4-76 BARRIO GUAJIRA UREÑA EDO. TACHIRA', '', '', 'algo@colmo.com.ve', '', '', '', '0', '2009-03-31 19:33:56', '2009-03-31 19:33:56'),
(55, NULL, NULL, 'CONSORCIO LINEA II', '', 'CTRA PANAMERICANA KM23 LA MACARENA', '58-212-2193581', '', 'PRUEBA9@PRUEBA.COM', '', '', '', '0', '2009-03-24 23:58:07', '2009-03-24 23:58:07'),
(56, NULL, NULL, 'JEANTEX S.A', '', 'SANTA CRUS ARAGUA', '663667', '', 'PRUEBAA1@PRUEBA.COM', '', '', '', '0', '2009-03-27 01:21:49', '2009-03-27 01:21:49'),
(57, NULL, NULL, 'COMERCIALIZADORA EL FARO 12385 C.A', '', 'AVENIDA MATURIN GUARENAS ESTADO MIRANDA', '', '', 'PRUEBAB@PRUEBA.COM', '', '', '', '0', '2009-03-31 18:01:57', '2009-03-31 18:01:57'),
(58, NULL, NULL, 'INDUSTRIA ALIMENTICIA HERMO', '', 'AVENIDA LAMAS MIRANDA VENEZUELA', '', '', 'PRUEBAC@PRUEBA.COM', '', '', '', '0', '2009-04-21 19:15:42', '2009-04-21 19:15:42'),
(59, NULL, NULL, 'HERRAMIENTAS HERRAGRO C.A', '', 'AVEN. SUCRE 4A Y 5A TRANVESASL CARACAS', '00580212 2853105', '', 'PRUEBAD@PRUEBA.COM', '', '', '', '0', '2009-04-24 19:44:05', '2009-04-24 19:44:05'),
(60, NULL, NULL, 'PRODUCTOS CENTRAL C.A.', '', 'CARRETERA NACIONAL GUACARA SAN JUAQUIN', '', '', 'productosventas@productoscentral.com', 'KELLY DURAN', 'ADM. DE COMPRAS', '', '0', '2009-05-15 22:23:58', '2009-05-15 22:23:58'),
(61, NULL, NULL, 'IMPREGILO S.P.A', '', 'AV BOSQUE CON AV SANTA LUCIA CARACAS', '0582129530843', '', 'PRUEBA10@PRUEBA.COM', '', '', '', '0', '2009-05-27 01:03:12', '2009-05-27 01:03:12'),
(62, NULL, NULL, 'SUMINISTRO VENEZOLANOS', '', 'CARACAS DE VENEZUELA', '58-212 578 3141', '', 'PRUEBA11@PRUEBA.COM', '', '', '', '0', '2009-05-28 00:26:40', '2009-05-28 00:26:40'),
(63, NULL, NULL, 'REPUESTO SUCRE C.A', '', 'CALLE VARGAS NO 145 EDO SUCRE', '', '', 'PRUEBA12@PRUEBA.COM', '', '', '', '0', '2009-06-10 17:57:44', '2009-06-02 19:14:41'),
(64, NULL, NULL, 'FACATI C.A.', '', 'AV. CIRCUN. OESTE, C.C. Y PROFESIONAL CERAVICA', '', '', 'facati@cantv.net', 'www.facati.com', '', '', '0', '2009-06-03 21:24:31', '2009-06-03 21:24:31'),
(65, NULL, NULL, 'TELESISTEMAS ELECON', '', 'SANTA LUCIA ESTADO MIRANDA', '2318427', '', 'PRUEBA13@PRUEBA.COM', '', '', '', '0', '2009-07-06 18:55:45', '2009-07-06 18:55:45'),
(66, NULL, NULL, 'MX3 C.A', '', 'AVENIDA TURMERO MARACAY', '2432693059', '', 'PRUEBA14@PRUEBA.COM', '', '', '', '0', '2009-07-09 17:49:10', '2009-07-09 17:49:10'),
(67, NULL, NULL, 'TADEINCA', '', 'FRANSISCO DE MIRANDA CARACAS', '2126351', '', 'PRUEBA15@PRUEBA.COM', '', '', '', '0', '2009-07-17 18:29:03', '2009-07-17 18:29:03'),
(68, NULL, NULL, 'CARIS GROUP, C.A.', '', 'CALLE USLAR CC. USLAR NIVEL 8', '0414-3306074', '', 'sergio_ivan_gutierrez@hotmail.com', '', 'SERGIO GUTIERREZ', '', '0', '2012-01-24 00:29:46', '2009-08-21 22:05:38'),
(69, NULL, NULL, 'COMERCIALIZADORA DE GOLOSINAS CANAIMA, C.A.', '', 'CARRETERA PANAMERICANA KM14 CARACAS', '0212-3736880', '0212-3736880', 'comercioexterior.super@gmail.com', '', 'MARIA GUERRERO', 'JEFE COMERCIO', '0', '2009-12-04 21:31:38', '2009-09-02 19:53:37'),
(70, NULL, NULL, 'DISTRIBUIDORA PORCELLANITE, C.A.', '', 'URB. IND CLUB HIPICO SECTOR CERRITOS, VENEZUELA', '0414-1111733', '', 'comercial2@cordicargas.com.ve', '', '', '', '0', '2012-02-08 23:21:25', '2009-09-11 20:56:49'),
(71, NULL, NULL, 'QUIMICA CMV, C.A.', '', '', '', '', '', '', '', '', '0', '2018-04-10 18:29:01', '2009-09-21 20:17:26'),
(72, NULL, NULL, 'AGRICOLA LA NONA IXL,C.A', '', 'EL VIGIA', '0275-8818315', '', 'asist.02.rrhh.agrolanona@gmail.com', 'nayelis gonzalez', '', '', '0', '2009-09-16 01:54:45', '2009-09-16 01:54:45'),
(73, NULL, NULL, 'INVERSIONES 1995, C.A.', '', 'CALLE PASAJE ACUADUCTO ENTRE CARRERAS 15 y 16 No.15-61 SECTOR BARRIO OBRERO - SAN CRISTOBAL', '0276-3424379', '', 'fervelca2@hotmail.com', '', '', '', '0', '2010-09-08 18:37:52', '2010-09-08 18:37:52'),
(74, NULL, NULL, 'PINTURAS EVEREST, C.A.', '', 'AV. ESTE-OESTE N° 61-1021 GALPON B PARCELA 286 ZONA IND. MUNICIPAL NORTE VALENCIA', '0241-8332049', '0241-8332049', 'dquintero@une.net.co', '', '', '', '0', '2012-02-29 00:38:27', '2009-10-22 23:35:02'),
(75, NULL, NULL, 'ILLUSIONS ANGEL CORPORATION C.A.', '', 'AV. 58 Y 59 CON CALLE 114B NRO.  58-206 SECTOR LOS RPBLES', '', '', 'mayerlin.urdaneta@illusionscorporation.com', '', '', '', '0', '2012-07-12 00:43:46', '2009-11-10 20:17:41'),
(76, NULL, NULL, 'INVERSIONES J.N.G. C.A.', '', 'CR 19 ENTRE 44 Y 45 CASA NRO 44-66 BARQUISIMETO', '', '', 'leojanet@hotmail.com', 'JANET MUÑOS', 'JEFE', '', '0', '2009-11-21 01:18:17', '2009-11-21 01:18:17'),
(77, NULL, NULL, 'CORPORACION GONCALVES EX-IMPORT 2007,CA', '', 'AV.20 ENTRE CALLES 19 Y 20 3ER NIVEL OF. 5 SECTOR CENTRO BARQUISIMETO', '', '', 'JMGONCALVES72@HOTMAIL.COM', 'JUAN MANUEL GONCALVES', '', '', '0', '2009-11-23 21:45:40', '2009-11-23 21:45:40'),
(78, NULL, NULL, 'DISTRIBUIDORA ALGALOPE, C.A.', '', 'CALLE LAS VEGAS, EDIFICIO BONACA', '0212-9491013', '', 'MMARQUEZ@GRAFFITI.COM.VE', 'MARIA MARQUEZ', '', '', '0', '2009-11-23 21:51:22', '2009-11-23 21:51:22'),
(79, NULL, NULL, 'ENVASES MAXIPLAST C.A.', '', 'CALLE H NRO 3-A SECTOR LOS TANQUES', '', '', 'villapet06@yahoo.es', 'AURELIZA', 'JEFE DE IMPORTACIONE', '', '0', '2009-12-02 19:31:57', '2009-12-02 19:31:57'),
(80, NULL, NULL, 'COMERCIALIZADORA  GOLOSINAS C.A.', '', '', '', '', 'comer@comer.com.ve', '', '', '', '0', '2009-12-14 21:18:30', '2009-12-14 21:18:30'),
(81, NULL, NULL, 'TEMACO CORO C.A', '', 'AV PRICIPAL TROPICANA DIAGONAL A LA PLACITA DE PUNTO FIJO', 'TEL 02692471983', '', 'temacopf1@cantv.net', 'GUSTAVO ALMERA', 'PRESIDENTE', '', '0', '2010-02-08 20:24:11', '2010-02-08 20:24:11'),
(82, NULL, NULL, 'FABRICA DE ESPONJA MARA S.A.', '', 'CALLE 13 #25A-278 EK MANZANILLO', '0261-7625695', '0261-7621076', 'gasubelcharif1@hotmail.com', 'GASUBEL CHARIF', 'PRESIDENTE', '', '0', '2012-04-11 18:12:11', '2010-02-12 19:04:28'),
(83, NULL, NULL, 'COMERCIALIZADORA ATLANTIC C.A.', '', 'CALLE 113 NO113A-49 SECTOR LOS ROBLES, MARACAIBO', '0261-7363054', '0261-7363054', 'coatlantic@gmail.com', 'PLACIDA PIÑA REYES', 'DIR. COMPRAS INTERNA', '', '0', '2010-02-18 18:10:17', '2010-02-18 18:10:17'),
(84, NULL, NULL, 'INVERSIONES ANIMESE, S.A.', '', 'CALLE 148, SECTOR ZONA INDUSTRIAL SUR 1RA ETAPA', '', '', 'leonel.albarran@grupophoenix.com', 'LEONEL ALBARRAN', 'GERENTE  DE PROYECTO', '', '0', '2012-06-08 17:30:25', '2010-02-18 18:48:29'),
(85, NULL, NULL, 'SPRAY QUIMICA, C.A.', '', 'CALLE SUR EDIF. GALPON N. 14 PISO  OF. 1', '0244-3223297', '', 'sprayquimica@cantv.net', 'JOSE PONS', 'GERENTE', '', '0', '2012-05-29 00:26:55', '2010-02-26 20:47:23'),
(86, NULL, NULL, 'POWER SUPPLY, C.A.', '', 'AV. CIRCUNVALACION 2 CC CIRCUNVALACION 2 NIVEL PB LOCAL 2', '', '', 'northam@telcel.net.ve', 'MIGUEL VELASQUEZ', 'GERENTE', '', '0', '2010-03-01 20:21:13', '2010-03-01 20:21:13'),
(87, NULL, NULL, 'CORPOSISTEMAS,C.A.', '', 'URB.UNARE.EDIFICIO DM.PISO 1 .PUERTO ORDAZ.', '0286-9627324', '', 'COMPRAS@CORPOSISTEMAS.NET', 'JOSE  RUBIALES', 'GERENTE', '', '0', '2010-03-03 20:28:23', '2010-03-03 20:28:23'),
(88, NULL, NULL, 'SUPER CERAMICA, C.A', '', 'CALLE 3 EDIF SUPER CERAMICA PISO 1 LOCAL SUPER CERAMICA URB. ATLANTIDA SUR.', '04166444032', '', 'comercial@cordicargas.com.ve', 'NORA PIÑA', 'JEFE OPERACIONES', '', '0', '2013-07-11 20:25:50', '2010-03-18 21:31:14'),
(89, NULL, NULL, 'ABRAZADERAS DE OCCIDENTE, C.A', '', 'CALLE 61 ENTRE CARRERAS 14A Y 14B CASA NRO S/N ZONA OSTE', '0251-2668480', '', 'abrazaderasdeoccidenteca@hotmail.com', 'DIEGO TORREALBA', 'JEFE OPERACIONES', '', '0', '2012-03-31 00:48:05', '2010-03-23 20:35:12'),
(90, NULL, NULL, 'SARIVAM,C.A.', '', 'AV.ANTON PHILLIPS,ZONA IND.SAN VICENTE I MARACAY EDO ARAGUA.', '0243-5537181.', '0243-5537440', 'EXPORTACIONES@SAVIRAM.COM', 'CHRISTOPHER RIVAS EVANS', 'PRESIDENTE', '', '0', '2010-04-12 20:09:36', '2010-04-10 01:39:14'),
(91, NULL, NULL, 'INDUSTRIAS LATINFLEX,C.A.', '', 'ZONA IND.APARAY.CIUDAD CUA EDO. MIRANDA.', '0239-5005477', '', 'LATINFLEX@GMAIL.COM', 'ABDO BARAKAT', 'PRESIDENTE', '', '0', '2010-05-11 21:40:00', '2010-05-11 21:40:00'),
(92, NULL, NULL, 'MONTACARGAS, C.A', '', 'AUTOPISTA CAMPO DE CARABOBO SECTOR SAN LUIS   VALENCIA', '0241-8357645', '0241-8353676', 'MONTACARGAS@MONTACARGAS.COM', '', '', '', '0', '2010-06-02 21:06:46', '2010-06-02 21:01:12'),
(93, NULL, NULL, 'GEOIMEX TRADE C.A', '', 'CALLE 2 GALPON 1-2 PB LOCA 1 ZONA INDUSTRIAL DEL ESTE GUARENA-EDO-MIRANDA.', '', '', 'GEOIMEX@HOTMAIL.COM', '', '', '', '0', '2010-06-08 20:13:51', '2010-06-08 20:13:51'),
(94, NULL, NULL, 'CORPORACION ENDULSA, C.A', '', 'CARRETERA NACIONAL GUARENAS GUATIRE, SECTOR EL INGENIO.', '212-2853617', '', 'ENDULSA@HOTMAIL.COM', '', '', '', '0', '2012-02-07 01:46:00', '2010-07-02 00:22:23'),
(95, NULL, NULL, 'QUIMICOLOR, C.A.', '', 'CALLE GEMINIS CASA NRO. 90-71', '0241-8788552', '', 'a_p_k@hotmail.com', 'SRA. ANGELA PEREIRA', 'PRESIDENTE', '', '0', '2010-10-01 00:52:57', '2010-10-01 00:52:57'),
(96, NULL, NULL, 'CORPORACION PURO DISENO S.A.', 'J-31450206-9', 'DIRECCION: AVENIDA SAN MARTIN CC SAN MARTIN NIVEL 10 B LOCAL 10-11 URBANIZACION LAS AMERICAS', '0212-2355124', '', 'corporacion@hotmail.com', 'Att. Sr. LEON MUGRABI', 'PRESIDENTE', 'J-31450206-9', '0', '2011-03-29 22:55:44', '2010-10-05 02:42:21'),
(97, NULL, NULL, 'GRUPO BTN 25-12 C.A', '', '', '', '', 'btn@hotmail.com', '', '', '', '0', '2010-10-07 17:22:26', '2010-10-07 17:22:26'),
(98, NULL, NULL, 'CONFECCIONES J&J JEAN C.A', '', '', '', '', 'jean@hotmail.com', '', '', '', '0', '2010-10-07 17:23:08', '2010-10-07 17:23:08'),
(99, NULL, NULL, 'GRUPO TANGO 712  C.A', '', '', '', '', 'tango@hotmail.com', '', '', '', '0', '2010-10-07 17:24:04', '2010-10-07 17:24:04'),
(100, NULL, NULL, 'CORPORACION REGY MARIANT', '', '', '', '', 'mariant@hotmail.com', '', '', '', '0', '2013-11-19 23:56:43', '2010-10-07 17:25:18'),
(101, NULL, NULL, 'GRUPO E.M.R C.A', 'J30983595-5', 'DIRECCION : AV. NUEVA GRANADA EDIF NAPOLCAR PISO PB APT 3 URB LOS ROSALES', '', '', 'grupoemr@hotmail.com', '', '', 'RIF   J 30983595-5', '0', '2010-10-21 02:13:25', '2010-10-21 02:13:25'),
(102, NULL, NULL, 'MANUFACTURA GLOBALTEX, C.A.', 'J-29572959-6', 'CALLLE TIUNA EDIFICIO TONY PISO 2 - CARACAS D.C.', '', '', 'x@x.xxx', '', '', 'RIF J-29572959-6', '0', '2010-10-27 20:48:37', '2010-10-27 20:48:37'),
(103, NULL, NULL, 'ACCIONA AGUA S.A.U', '', 'CALLE FALCON S/N SECTOR LA BOTIJA PUNTO CARDON ZONA POSTAL 4102 PUNTO FIJO-FALCON-VENEZUELA.', '34-94-6050780', 'XXXXXXX', 'XXXXXX@XXXXXXX.COM', 'ANGELA LOPEZ NIETO', 'JEFE DE IMPORTACION', '', '0', '2010-11-02 23:10:59', '2010-11-02 23:10:59'),
(104, NULL, NULL, 'DISTRIBUCIONES COLDIS DE VENEZUELA, C.A.', '', 'CALLE SAN MARINO CON AVENIDA PRINCIPAL CC', '0414-1402176', '', 'oacasio@colombina.com.co', 'ORLANDO ACASIO', 'JEFE DE IMPORTACIONE', '', '0', '2015-06-19 19:44:55', '2010-11-19 23:33:51'),
(105, NULL, NULL, 'NENIS MODAS', '', 'DIRECCION PELOTA  ABANICO EDF DON RAUL PISO 2 CARACAS', '', '', '145@NENISMODAS.COM', '', 'JEFE DE IMPORTACIONE', '', '0', '2010-11-22 18:57:13', '2010-11-22 18:57:13'),
(106, NULL, NULL, 'CONFECCIONES BERAJAS', '', '', '02129447175', '02129447175', 'CAMISASOPUS@YAHOO.COM', '', 'JEFE DE IMPORTACIONE', '', '0', '2010-11-22 20:28:19', '2010-11-22 20:28:19'),
(107, NULL, NULL, 'BUHITO', 'RIF. J-30138781-3', 'ZONA INDUSTRIAL DE LOS CUROS ROMAN EDUARDO  SANDIA CALLE 01 GALPON 05', '', '', 'x@x.xxx', '', '', '', '0', '2010-11-29 17:35:52', '2010-11-29 17:35:52'),
(108, NULL, NULL, 'FIBRO CEMENTO DEL CENTRO (FICECA)', '', 'CALLE URAPE CON SAN RAFAEL CC PLAZA', '0412-6228328', '', 'jgutierrez@ficeca.net', 'GERENTE', 'JOSE VICENTE', '', '0', '2012-05-08 02:18:54', '2010-11-29 17:40:48'),
(109, NULL, NULL, 'M & M INUFORMES, C.A.', 'J-30712973-5', 'AV. SUR 5 SALVADOR DE LEON A CUJI EDIF PORTUGAL PB LOCAL 1 URB. CATEDRAL - ZONA POSTAL 1010', '', '', 'x@x.xxx', '', '', 'RIF. J-30712973-5', '0', '2010-12-01 17:57:42', '2010-12-01 17:57:42'),
(110, NULL, NULL, 'DISTRIBUIDORA METEX, C.A.', 'J-00361494-7', 'AV. SUR 5 SALVADOR DE LEON A CUJI EDIF PORTUGAL PISO 3 OFIC 33 URB. CATEDRAL - ZONA POSTAL 1010', '', '', 'x@x.xxx', '', '', 'RIF. J-00361494-7', '0', '2010-12-01 18:00:32', '2010-12-01 18:00:32'),
(111, NULL, NULL, ' M & M 10 UNIFORMES C.A', 'J307129735', 'CUJI A SALVADOR DE LEON , EDF PORTUGAL LOCAL P - B.', '', '', 'info@uniformes.com', '', '', 'M & M 10 UNIFORMES C.A Direccion : CUJI A SALVADOR DE LEON , EDF PORTUGAL LOCAL P - B. RIF J 307129735. CARACAS VENEZUELA', '0', '2010-12-13 19:00:33', '2010-12-13 19:00:33'),
(112, NULL, NULL, 'DISTRIBUIDORA METEX C.A', 'J0003614947', 'ESQ SALVADOR DE LEON A CUJI URB, CATEDRAL EDF PORTUGAL P- 3 OFC 33', '', '', 'info@metex.com', '', '', 'DISTRIBUIDORA METEX C.A Direccione: ESQ SALVADOR DE LEON A CUJI URB, CATEDRAL EDF PORTUGAL P- 3 OFC 33 Rif   J 0003614947 CARACAS VENEZUELA', '0', '2010-12-13 19:01:39', '2010-12-13 19:01:39'),
(113, NULL, NULL, 'MAGENTA GRAFICA C.A', 'J-00178153-6', 'CALLE PROLONGACION CALLE LOS BAÑOS GALPON DIALPER NR 1 URB LAS CLAVELLINAS', '02123620790', '', 'info@magenta.com', '', '', 'MAGENTA GRAFICA C.A TELEFONO 02123620790 CORREO RICARDOBARON@MAGENTAGRAFICA RIF J-00178153-6', '0', '2010-12-17 01:48:23', '2010-12-17 01:48:23'),
(114, NULL, NULL, 'INTERAMERICANA DE CABLES, S.A.', '', 'AV. LIZANDRO ALVARADO VALENCIA', '', '', 'eliesca@interacables.com.ve', 'ELIAN ESCALONA', 'ANALISTA DE CONTROL', '', '0', '2011-01-12 01:28:05', '2011-01-12 01:28:05'),
(115, NULL, NULL, 'GRUPO DISCAGUA', 'J-31258456-4', 'AV. MIRANDA QUINTA ELVELYA URB. WASHINTON EL PARAISO - CARACAS DC', '0416-6063369', '', 'venpetlatino@gmail.com', '', '', '', '0', '2011-02-12 01:32:32', '2011-01-24 19:49:51'),
(116, NULL, NULL, 'DISTRIBUIDORA BASICO K-LA, C.A.', 'J-29840287-0', 'AV. URDANETA ENT. ESO PUNCERES A P. ESPAÑA EDIF 37 PISO 4 OFC 4-A URB. ALTAGRACIA - CARACAS DC', '0000-0000000', '0000-0000000', 'x@xxx.xxx', '', '', 'RIF J-29840287-0', '0', '2011-01-24 19:53:32', '2011-01-24 19:53:32'),
(117, NULL, NULL, 'SHULTZ DE VENEZUELA, C.A.', '', 'AV SUR 2 BIS, GAL´PON N. 5 QUINTA CRESPO', '0414-2480290', '', 'obadia.d@shultzven.com', 'DAVID OBADIA', 'PRESIDENTE', '', '0', '2011-01-31 22:20:05', '2011-01-31 22:20:05'),
(118, NULL, NULL, 'IMPORTADORA Y DISTRIBUIDORA SEA, C.A.', '', '', '', '', '', '', 'PRESIDENTE', '', '0', '2018-04-11 00:29:00', '2011-02-03 17:56:16'),
(119, NULL, NULL, 'INDUSTRIA VENEZOLANA DE GAS INVEGAS, C.A.', '', '', '', '', '', '', '', '', '0', '2018-04-10 18:30:31', '2011-02-03 20:55:14'),
(120, NULL, NULL, 'DISTRIBUIDORA GASOIL 64 C.A', 'J30880227-1', 'AVENIDA SANTIAGO DE CHILE URBANIZACION LOS CAOBOS, QUINTA FLOR , PLANTA ALTA CARACAS', '', '', 'gasoil64@hotmail.com', '', '', 'DIRECCIÓN AVENIDA SANTIAGO DE CHILE URBANIZACION LOS CAOBOS, QUINTA FLOR , PLANTA ALTA CARACAS RIF J30880227-1', '0', '2011-02-08 00:18:59', '2011-02-08 00:18:59'),
(121, NULL, NULL, 'TEXTILES PDV C.A', 'J29443615-3', 'CALLE 8 ENTRE CRR 24 Y 25 CASA 24 25 ZONA CENTRO BARQUISIMETO VENEZUELA', '', '', 'textilespdv@hotmail.com', '', '', 'RIF J29443615-3 DIRECCION CALLE 8 ENTRE CRR 24 Y 25 CASA 24 25 ZONA CENTRO BARQUISIMETO VENEZUELA', '0', '2011-02-08 00:22:13', '2011-02-08 00:22:13'),
(122, NULL, NULL, 'FABRICA DE VIDRIOS INDUCRISTAL C.A', 'J085318623', 'P . 233 ZONA INDUSTRIAL 2 CL 4 ENTRE CRA 6 Y  7 BARQUISIMETO - ESTADO LARA', '', '', 'vidriosinducristal@hotmail.com', '', '', 'P . 233 ZONA INDUSTRIAL 2 CL 4 ENTRE CRA 6 Y  7 BARQUISIMETO - ESTADO LARA TELEFONO 0251- 2692502 RIF J085318623', '0', '2011-02-09 00:42:08', '2011-02-09 00:42:08'),
(123, NULL, NULL, 'DISTRIBUIDORA BOTIN MARINES, C.A.', '', 'CALLE EL PALMAR, EDIF RESIDENCIA LOS SAMANES', '', '', 'obadia.d@shultzven.com', 'DAVID OBADIA', 'PRESIDENTE', '', '0', '2011-02-23 01:37:58', '2011-02-23 01:37:58'),
(124, NULL, NULL, 'DISTRIBUIDORA BASICO K- LA C.A', 'J29810287-0', 'DIRRECION AVENIDA URDANETA EDIFICIO 37, PISO 4 , LOCAL 4A, URBANIZACION ALTAGRACIA,', '', '', 'distr@kalca.com', '', '', 'DISTRIBUIDORA BASICO K- LA C.A DIRRECION AVENIDA URDANETA EDIFICIO 37, PISO 4 , LOCAL 4A, URBANIZACION ALTAGRACIA, RIF J29810287-0', '0', '2011-03-01 17:51:17', '2011-03-01 17:51:17'),
(125, NULL, NULL, 'MANUFACTURAS E INVERSIONES TEXTILES, C.A.', 'J31217596-6', 'DIRECCION CALLE MERIDA CRUCE CON AVENIDA  RICAURTE SECTOR CENTRO EDIFICIO CHARLES PISO 2 BARINAS', '', '', 'info@manufactinver.com', '', '', '', '0', '2011-03-01 17:57:45', '2011-03-01 17:57:45'),
(126, NULL, NULL, 'UNIPARTS, C.A.', '', '', '', '', '', '', '', '', '0', '2018-04-11 00:30:04', '2011-03-05 01:38:17'),
(127, NULL, NULL, 'CONFECCIONES ARARAT C.A', 'J000429243', 'DIRECCIONES AVENIDA FUERZA ARMADAS CRUCECITA A SAN MIGUEL EDIFICIO LOIS, PLANTA BAJA, CARACAS', '', '', 'cofecciones@hotmail.com', '', '', '', '0', '2011-03-23 17:05:21', '2011-03-23 17:05:21'),
(128, NULL, NULL, 'TIPECA', '', '', '', '', '', '', '', '', '0', '2018-04-10 18:31:46', '2011-04-06 01:31:11'),
(129, NULL, NULL, 'INVERSIONES GIOVANNI MODA IN ITALY C.A ', 'J30886239-8', 'Edificio lecuna avenida lecula N 6 frente parque central ', '0000000', '0000000', '', '', '', 'INVERSIONES GIOVANNI MODA IN ITALY C.A Direccion Edificio lecuna avenida lecula N 6 frente parque central Rif J- 30886239-8  Caracas', '0', '2011-04-08 18:43:14', '2011-04-08 18:43:14'),
(130, NULL, NULL, 'UNIFORME LPW', 'J30104846-0', 'Zona Industrial los naranjos calle maturin  edificio topas Guarenas ', '00000', '00000', '', '', '', 'UNIFORME LPW Direccion Zona Industrial los naranjos calle maturin  edificio topas Guarenas Rif J30104846-0 Caracas', '0', '2011-04-08 18:47:46', '2011-04-08 18:47:46'),
(131, NULL, NULL, 'INVERSIONES RSTORY & ASOCIADOS, S.A', '', 'CALLE 169, CENTRO COMERCIAL MAÃ‘ONGO #90-20 mezzanina 1 Municipio Naguanagua Edo Carabobo', '', '', '', '', '', '', '0', '2011-04-14 01:33:16', '2011-04-14 01:33:16'),
(132, NULL, NULL, 'GRUPO TEXTIL BOYCO, C.A.', 'J31017977-8', 'CRUCESITA A SAN MIGUEL - EDIF LOIS - PISO 5 AVDA FUERZAS ARMADAS', '0000-0000000', '0000-0000000', 'X@X.XXX', '', '', '', '0', '2011-04-29 17:52:01', '2011-04-29 17:52:01'),
(133, NULL, NULL, 'CREACIONES FILOMAR', '', '', ' 0212 2323989-04166271', '0212-2378963', ' filomarf @cantv.net', 'PASQUAL', '', 'CREACIONES FILOMAR TELEFONO: 0212 2323989-2378963 -04166271390 Persona encargada : PASQUAL Correo: filomarf @cantv.net.', '0', '2011-05-02 17:47:15', '2011-05-02 17:47:15'),
(134, NULL, NULL, 'LUCATEX', 'J31654361-7', 'AV. PRINCIPAL DE SEBUCAN URB SEBUCAN EDIFICIO PORTAL SEBUCAN II , PISO 5 APTO 5A CARACAS', '', '', '', '', '', '', '0', '2011-05-02 17:49:32', '2011-05-02 17:49:32'),
(135, NULL, NULL, 'SIGNAL VENEZUELA C.A.', 'J31310740-2', 'AV BUENA AVENTURA NIVEL 2', '', '', '', '', '', '', '0', '2011-05-09 17:43:53', '2011-05-09 17:43:53'),
(136, NULL, NULL, 'TEXTIL S.J MELCRIS C.A', 'J31029444-5', 'CALLE BRANGER CON EL PASEO EDIF FRANCISCO JAVIER PISO 1', '02122382144', '', '', 'LUZ MARINA', '', '', '0', '2011-05-12 18:35:47', '2011-05-12 18:35:47'),
(137, NULL, NULL, 'DISTRIBUIDORA POWERLUB, C.A.', 'J-30934116-2', '', '', '', '', '', '', '', '0', '2012-02-10 17:33:39', '2012-02-10 17:33:39'),
(138, NULL, NULL, 'REPRESENTACIONES NUTRE, C.A.', 'J-08507522-4', '', '', '', '', '', '', '', '0', '2011-05-12 23:11:28', '2011-05-12 23:11:28'),
(139, NULL, NULL, 'COMERCIALIZADORA BRENA BAJA, C.A.', '', 'CARRETERA NACIONAL VIA NARICUAL SECTOR PELE EL OJO', '04143292273', '04143089431', 'comercioexterior.super@gmail.com', 'MELISSA', 'JEFE DE IMPORTACIONES', '', '0', '2011-06-02 22:44:14', '2011-06-02 22:44:14'),
(140, NULL, NULL, 'MANUFACTURAS MATEXCA, C.A.', '', 'AV. PANTEON CON AV FUERZAS ARMADAS EDIF ROFRIMER PISO 10', '02125643683', '02125643683', 'matexcatextil@cantv.net', 'CESAR ALVAREZ', 'JEFE DE IMPORTACION', '', '0', '2013-09-05 18:28:34', '2013-09-05 18:28:34'),
(141, NULL, NULL, 'INVERSIONES 201017, C.A.', '', 'EDIFICIO POPPLEMINT EL LLANITO - CARACAS DC', '0212-2581315', '', 'maryuriypaezm@hotmail.com', '', '', '', '0', '2011-06-09 23:50:37', '2011-06-09 23:50:37'),
(142, NULL, NULL, 'SEGUVEN, C.A.', '', 'AVDA PRINCIPAL CENTRO COMERCIAL 321 LOCAL No.08 - ZONA INDUSTRIAL 321 - PUERTO ORDAZ', '0286-9942136', '', 'seguvenca@gmail.com', '', '', '', '0', '2013-07-19 18:21:14', '2013-07-19 18:21:14'),
(143, NULL, NULL, 'DISTRIBUIDORA HIG STAKES 18, C.A.', 'J29608432-7', 'AVENIDA LOS SAMANES CASA No.19 URBANIZACION LA FLORIDA - CARACAS DC', '0212-0000000', '', '', '', '', '', '0', '2011-06-16 17:47:20', '2011-06-16 17:47:20'),
(144, NULL, NULL, 'SAINT GOBAIN SEKURIT VZLA, S.A.', '', 'CALLE 86 AVENIDA CIRCUNVALACION ', '41718177', '41718177', '', 'JOEL MIERES', 'VENDEDOR', '', '0', '2013-07-19 18:21:17', '2013-07-19 18:21:17'),
(145, NULL, NULL, 'POLITO DE VENEZUELA, C.A.', '', 'AV. LA LIMPIA CALLE 79 ', '6752362', '', '', 'JAVIER', 'GERENTE', '', '0', '2011-06-18 01:08:46', '2011-06-18 01:08:46'),
(146, NULL, NULL, 'INVERSIONES RODRIMER, C.A.', 'J00069093-6', 'AV. FUERZAS ARMADAS CON AV. PANTEON ESQ. SAN MIGUEL - EDIF RODRIMER - PISO 2 APTO 2-B - SAN JOSE CARACAS DC', '', '', '', '', '', '', '0', '2011-06-27 17:38:13', '2011-06-27 17:38:13'),
(147, NULL, NULL, 'DERIVADOS PLASTICOS, C.A.', '', 'AV 67 (NORTE SUR 3) PARCELA NRO 92-150 ZONA INDUSTRIAL', '0251-2501827', '0251-2501827', '', 'MILENA ZUBILLAGA', 'JEFE DE COMERCIO EXTERIOR', '', '0', '2011-06-28 17:51:54', '2011-06-28 17:51:54'),
(148, NULL, NULL, 'TRACTO CAMIONES EL ARCA, C.A.', '', 'MARACAY ESTADO ARAGUA', '', '', '', 'MIGUEL VELAZQUE', 'LOGISTICA DE IMPORTACIONES', '', '0', '2012-06-22 18:16:36', '2012-06-22 18:16:36'),
(149, NULL, NULL, 'IMPORTADORA SURAMERICA, C.A.', '', 'URB MONTE BELLO CALLE K, MARACAIBO', '0261-7415296', '0261-7415296', 'c.ugarte@maeocca.com', 'CARLOS UGARTE', '', '', '0', '2012-02-27 21:10:42', '2012-02-27 21:10:42'),
(150, NULL, NULL, 'CORPORACION CYCLES, C.A.', 'J30893922-6', 'CALLE 8 EDIFICIO LAVAREDO PISO 2 - SECTOR LA URBINA - CARACAS DC', '0212-0000000', '', '', '', '', '', '0', '2011-07-18 18:52:41', '2011-07-18 18:52:41'),
(151, NULL, NULL, 'ALMACENES ROPHAS, C.A. ', '', 'AVDA FUERZAS ARMADAS EDIF 18-13 PISO PB SECTOR SAN RAMON A CANONIGOS - CARACS DC', 'CANTV: 0212-5643238', '0212-2639923', 'matexcatextil@cantv.net.ve', 'SR. CESAR ALVAREZ', '', '', '0', '2011-07-27 16:58:27', '2011-07-27 16:58:27'),
(152, NULL, NULL, 'INDUSTRIA NACIONAL DE LEVADURA LEVAPAN', '', 'CARRERA 6 CON CALLE 1 ZONA INDUSTRIAL II EDIF LEVAPAN', '', '', 'cesar.ortiz@levapan.com.ve', 'CESAR ORTIZ', 'GERENTE', '', '0', '2011-08-10 00:53:14', '2011-08-10 00:53:14'),
(153, NULL, NULL, 'INVERSIONES 10108 C.A', 'J30630669-2', 'DIRECCIONES : CARRETERA PANAMERICANA KM 21 CC LA CASCADA NIVEL P.B LOCAL 36 SECTOR CARRIZAL LOS TEQUES ', '000000', '000000', 'inversiones@hotmail.com', 'sc', 'sc', 'INVERSIONES 10108 C.A RIF J30630669-2 DIRECCIONES : CARRETERA PANAMERICANA KM 21 CC LA CASCADA NIVEL P.B LOCAL 36 SECTOR CARRIZAL LOS TEQUES ESTADO MIRANDA Nota este cliente es de FABRICATO ', '0', '2011-08-12 19:10:51', '2011-08-12 19:10:51'),
(154, NULL, NULL, 'INDUSTRIAS VETUSIL, C.A.', '', 'AV F-82 30 ZONA INDUSTRIAL', '', '', '', 'KARINA', 'JEFE DE IMPORTACIONES', '', '0', '2012-01-24 22:45:51', '2012-01-24 22:45:51'),
(155, NULL, NULL, 'ACERO GAL, C.A.', '', 'FINAL AV ROMULO GALLEGO ', '0251-2373693', '0251-2375476', 'victorisaac@homtail.com', 'VICTOR ISAAC', 'PRESIDENTE', '', '0', '2012-06-27 17:59:34', '2012-06-27 17:59:34'),
(156, NULL, NULL, 'INVERSIONES BARAND C.A', '', 'AVENIDA INTERCOMUNAL QUINTA HORTENSIA PLANTA  BAJA BARCELONA ESTADO DE ANZOATEQUI', '0000-0000000', '', '', '', '', 'este cliente es de FABRICATO', '0', '2011-09-05 18:26:50', '2011-09-05 18:26:50'),
(157, NULL, NULL, 'IMPORTADORA PIE CONFORT C.A.', '', 'AV. CASANOVA CC EL RECREO NIVEL CASANOVA LOCAL C-25', '', '', '', '', 'DERLY ', '', '0', '2012-02-07 23:50:12', '2012-02-07 23:50:12'),
(158, NULL, NULL, 'PRODUCTORA TEXTIL DS 1207, C.A.', '', 'CALLE 7 EDIFICIO LOS ROBLES PISO 01 LOCAL UNO, URBANIZACION LA URBINA - CARACAS DC', '0212-0000000', '0212-0000000', 'x@xx.xxx', '', '', 'RIF - 31497307 ESTE CLIENTE ES DE FABRICATO', '0', '2011-10-10 23:40:57', '2011-10-10 23:40:57'),
(159, NULL, NULL, 'MIXER, C.A.', '', 'CALLE 18 ENTRE AV 64 Y 67', '0261-3233727', '', '', '', 'PRESIDENTE', '', '0', '2011-10-14 20:48:27', '2011-10-14 20:48:27'),
(160, NULL, NULL, 'DISTRIBUIDORA J MARACAIBO, C.A.', '', 'URB CANTA CLARO CALLE 50 N. 11-117', '0261-7425001', '', 'aclv@hotmail.com', 'ADOLFO LOZANO', 'PRESIDENTE', '', '0', '2012-09-06 20:00:10', '2012-09-06 20:00:10'),
(161, NULL, NULL, 'ALGO MAS QUE COCINA, C.A.', '', '', '', '', '', '', '', '', '0', '2018-04-11 00:31:01', '2018-04-11 00:31:01'),
(162, NULL, NULL, 'MODA PREMIER, C.A.', '', 'CALLE SANTA ELENA EDIF. BOLLACA OFIC. 2 CARACAS', '0424-1713541', '', '', 'DERLY QUINTO', '', '', '0', '2012-05-03 16:51:03', '2012-05-03 16:51:03'),
(163, NULL, NULL, 'HERRERA ,CA', '', 'CIUDAD BOLIVAR', '', '', 'HERRERA@HOTMAIL.COM', 'HERRERA.', '', '', '0', '2012-05-22 17:48:48', '2012-05-22 17:48:48'),
(164, NULL, NULL, 'METAL ACERO ARAGUA', '', 'CALLE CARABOBO MARACAY', '0243-5530616', '', 'metalaceroaragua@cantv.net', 'ELISA', '', '', '0', '2011-11-25 19:50:41', '2011-11-25 19:50:41'),
(165, NULL, NULL, 'REPRESENTACIONES  RM 29', 'J30861804-7', 'AV. JOSE ANGEL  LAMAS EDIF. CC PALO GRANDE CARACAS', '02124515340', '', 'representaciones@hotmail.com', 'JOSE ROSENTOL ', '', 'REPRESENTACIONES  RM 29 RIF J30861804-7 TELEFONO:  02124515340 persona encargada JOSE ROSENTOL DIRECCION : AV. JOSE ÃNGEL  LAMAS EDIF. CC PALO GRANDE CARACAS', '0', '2011-11-28 19:04:11', '2011-11-28 19:04:11'),
(166, NULL, NULL, 'QUIMICO JATA  C.A ', '', 'AV. sur EDIF mi rancho piso PB local c URB santa teresa ', '0000000', '', 'quimicojata@hotmail.com', '', '', '', '0', '2012-07-12 00:24:16', '2012-07-12 00:24:16'),
(167, NULL, NULL, 'IMPORTACIONES Y DISTRIBUCIONES LA VICTORIA, C.A.', '', '', '', '', '', '', '', '', '0', '2018-04-10 18:32:55', '2018-04-10 18:32:55'),
(168, NULL, NULL, 'TECHOMAT METROPOLITANO, C.A.', '', 'AV INTERCOMUNAL TURMERO N. 1 SECTOR LA PROVIDENCIA', '0243-2698290', '', 'techmat_adm@cantv.net', 'YASMIN RIVAS', 'ASISTENTE DE IMPORTACIONES', '', '0', '2011-12-15 19:57:51', '2011-12-15 19:57:51'),
(169, NULL, NULL, 'TEJIDOS INDUSTRIALES DE VENEZUELA. C.A.', 'J07571116-5', 'no', '0212-2382144', '0212-2382144', 'tejidos@hotmail.com', '', '', 'tejidos industriales de venezuela, c.a RIF J-07571116-5 TELF 0212-2382144', '0', '2012-01-10 22:32:24', '2012-01-10 22:32:24'),
(170, NULL, NULL, 'DISTRIBUIDORA DE ALIMENTOS LELIS CARVALLO, C.A.', '', 'CALLE 1 ENTRE CRA 6 Y 7 CENTRO EMPRESARIAL OMEGA CARACAS', '', '', 'colemenarez.fa@grupodialca.com.ve', 'Franck Colmenarez ', 'GERENTE DE FINANZAS', '', '0', '2013-03-11 17:30:41', '2013-03-11 17:30:41'),
(171, NULL, NULL, 'PROSUMAL, C.A.', '', 'AV 10 DE DIC LOCAL N. 116', '2334197', '2334197', 'infotecnica@prosumal.com', 'DIOMAR GONZALES', 'GERENTE DE IMPORTACIONES', '', '0', '2012-02-10 17:39:19', '2012-02-10 17:39:19'),
(172, NULL, NULL, 'Productora Mazatlan', 'J30117617-0', 'Avenida 2 entre Calles B y C, Zona Industrial de Paramillo  San CristÃ³bal - Estado TÃ¡chira - Venezuela', '0058-276-3562924 356599', '0058-276-3562111', 'productoramazatlan@hotmail.com', 'Dr. Manuel Suescun', '', 'Rif: J-30117617-0', '0', '2012-02-15 19:40:37', '2012-02-15 19:40:37'),
(173, NULL, NULL, 'SUN COLLECTION, C.A.', 'J40007901-2', 'CALLE PAISANA QUINTA No. 16 URB. MACARACUAY - CARACAS DC', '0212-6354710', '0212-7615128', 'x@x.xxx', 'SRA. OLGA MENESES', 'REPRESENTANTE', 'RIF J-40007901-2', '0', '2012-03-09 17:15:33', '2012-03-09 17:15:33'),
(174, NULL, NULL, 'TOTAL EVENT, C.A.', '', 'URB. CANTA CLARO, CALLE 50 # 11-117', '58-261-7425001', '000000', 'djmllc@hotmail.com', '', '', '', '0', '2012-03-31 00:47:39', '2012-03-31 00:47:39'),
(175, NULL, NULL, 'DISTRIBUIDORA KAY 2000, C.A.', 'J30537405-8', 'NO', 'NO', '', 'NO', '', '', 'J-30537405-8', '0', '2012-04-12 16:36:24', '2012-04-12 16:36:24'),
(176, NULL, NULL, 'DISTRIBUIDORA GASUB C.A', '', 'CALLE 60 NO 60-01 SECTOR LOS OLIVOS', '0216-7546658', '000000', '', '', '', '', '0', '2012-04-12 16:35:44', '2012-04-12 16:35:44'),
(177, NULL, NULL, 'CORPORACION QUIMSOLVEN, C.A', '', 'AV. JOSE ANTONIO PAEZ EDIF. CENTRO PROFESIONAL PARAISO PISO 5', '00000000', '00000000', 'cp@cp.com', '', '', '', '0', '2012-04-12 16:35:44', '2012-04-12 16:35:44'),
(178, NULL, NULL, 'MATERIALES Y EQUIPOS DE OCCIDENTE, C.A. MAEOCCA', '', '', '', '', '', '', '', '', '0', '2018-04-11 00:32:20', '2018-04-11 00:32:20'),
(179, NULL, NULL, 'INDUSTRIAS LA MARAVILLA, C.A.', '', '', '0212-2355124', '0212-2355124', '', 'LEON MUGRABI', 'PRESIDENTE', '', '0', '2012-04-26 17:00:37', '2012-04-26 17:00:37'),
(180, NULL, NULL, 'SUR AMERICA INTERNACIONAL S.A', '', 'AV ESTE OESTE 2, CALLE 67 CC AVILA NIVEL 1 LOCAL 1 URB INDUSTRIAL MUNICIPAL NORTE', '00000', '00000', 'sincorreo@hotmail.com', '', '', '', '0', '2012-05-08 02:19:52', '2012-05-08 02:19:52'),
(181, NULL, NULL, 'CORPORACION VISION CARS, S.A.', '', 'CALLE COLONIA AGRICOLA DE BARBULA GALPON LA LUZ', '0241-8661059', '', 'visioncars88@hotmail.com', 'LUIS GONAZALEZ', 'IMPORTACIONES', '', '0', '2012-04-26 18:06:57', '2012-04-26 18:06:57'),
(182, NULL, NULL, 'COMERCIALIZADORA LOS ROQUES, C.A.', '', '', '', '', '', '', '', '', '0', '2018-04-11 00:33:17', '2018-04-11 00:33:17'),
(183, NULL, NULL, 'APECHEM, C.A.', '', '', '', '', '', '', '', '', '0', '2018-04-10 18:33:33', '2018-04-10 18:33:33'),
(184, NULL, NULL, 'DISTRIBUIDORA DIALCAVAL, C.A.', '', 'AVENIDA 66 PARCELA 51 CASTILLITO VALENCIA', '', '', '', '', '', '', '0', '2012-05-08 02:18:25', '2012-05-08 02:18:25'),
(185, NULL, NULL, 'SERVITEXTIL 11298 C.A ', '', 'PELOTA A ABANICO EDIFICIO DON RAUL PISO 7 LOCAL 1 SECTOR ALTAGRACIA  - CARACAS DC', '0212-5612266', '', '', 'SR. DOMINGO HERNANDEZ ', '', '', '0', '2012-04-25 17:58:06', '2012-04-25 17:58:06'),
(186, NULL, NULL, 'TEXTILES AVANGARD  C.A ', 'J31244319-7', 'AVENIDA PRINCIPAL URBANIZACION LEBRUM ED. REPCA LOCAL 1 A , PETARE - CARACAS D.C.', '0212-0000000', '0212-0000000', 'x@xxx.xxx', '', '', 'RIF J31244319-7 ', '0', '2012-05-16 18:15:56', '2012-05-16 18:15:56'),
(187, NULL, NULL, 'GRUPO EMPRESARIAL STRADHA, C.A.', '', 'CR 23 CON CALES 9 Y 10 CC RESIDENCIAS PLAZA SAN CRISTOBAL', '', '', '', 'DANIEL LIMAS', 'PRESIDENTE', '', '0', '2012-09-05 01:56:16', '2012-09-05 01:56:16'),
(188, NULL, NULL, 'COVENPROCOM, C.A.', 'J29642327-0', 'CALLE 12B No. 106-A-20 CIVICO C.C. MEDITERRANEA PLAZA L P 4', '0000000', '0000000', '', 'WENDY FALCON', '', 'RIF J-29642327-0', '0', '2012-07-17 17:57:35', '2012-07-17 17:57:35'),
(189, NULL, NULL, 'PARABRISAS Y GOMAS SAN JUDAS TADEO, C.A.', '', 'AV. CONSTITUCION OESTE N. 200 SECTOR 23 DE ENERO', '0241-6358744', '', 'joel.mieres@saint-gobaint.com', 'JOEL MIERES', 'IMPORTACIONES', '', '0', '2012-09-03 17:45:55', '2012-09-03 17:45:55'),
(190, NULL, NULL, 'CLIEN, C.A.', '', 'AV TEO CAPRILES CC CIUDAD PAEZ NOVEL 1 OF PISO 1', '', '', '', 'YORMAN LIENDO', 'IMPORTACIONES', '', '0', '2012-07-20 00:06:17', '2012-07-20 00:06:17'),
(191, NULL, NULL, 'CRISTALERIA CAURA, C.A.', '', 'AV GUARAPICHE CON PASEO CARONI SECTOR UNARE', '', '', 'mieresjoel@yahoo.com', 'JOEL MIERES', 'COORDINADOR LOGISTICO', '', '0', '2012-09-03 23:40:00', '2012-09-03 23:40:00'),
(192, NULL, NULL, 'HILADOS GUATEX, C.A.', '', 'CALLE LUIS DE CAMOENS ED CENTRO CLOVER OF 3', '0414-3243138', '', '', 'JUAN FELSMANN ', 'PRESIDENTE', '', '0', '2012-09-04 19:32:12', '2012-09-04 19:32:12'),
(193, NULL, NULL, 'DISTRIBUIDORA DE MATERIALES PISOS Y ACCESORIOS DEL ZULIA, C.A.', '', 'CALLE 94 ENTRE AV 108, CASA N. 108 A-426', '0261-7110171', '', 'dismzulia@gmail.com, jalvarez.dismzulia@gmail.com', 'JOHANA ALVAREZ', 'PRESIDENTE', '', '0', '2013-01-30 00:27:46', '2013-01-30 00:27:46'),
(194, NULL, NULL, 'QUEZADA, C.A.', '', 'CARRERA 1 ENTRE CALLES 1 Y 2 ZONA INDUSTRIAL III', '', '', '', 'RAUL QUEZADA', 'PRESIDENTE', '', '0', '2012-09-06 20:20:15', '2012-09-06 20:20:15'),
(195, NULL, NULL, 'EMBOTELLADORA DEL CENTRO, C.A.', '', 'AV PRINCIPAL LA COOPERATIVA MARACAY', '0243-2411420', '', '', 'ZAHANDRA ARANDA', 'ANALISTA DE IMPORTACION', '', '0', '2012-10-01 19:40:41', '2012-10-01 19:40:41'),
(196, NULL, NULL, 'NAI, C.A.', '', 'AV 7MA TRANSVERSAL DE MARIPEREZ', '021274226586', '', '', 'MIGUEL ', 'ENCARGADO DE IMPORTACION', '', '0', '2012-09-03 19:03:28', '2012-09-03 19:03:28'),
(197, NULL, NULL, 'FARMACIAS GALERIAS COMPRE CON MENOS, C.A.', '', 'AV PRINCIPAL CC LA FUENTE NIVEL 1', '', '', '', 'HERMES JESUS NAME VARGAS', '', '', '0', '2012-11-30 18:19:35', '2012-11-30 18:19:35'),
(198, NULL, NULL, 'CONSTRUCTORA INVILCA, C.A.', 'J29574337-8', 'CARRETERA PRINCIPAL DE BARUTA EDIF. GALPON PISO 1 OFIC. 1 SECTOR SANTA ROSA - CARACAS DC', '0212-0000000', '', '', '', '', 'RIF J29574337-8', '0', '2012-09-20 17:56:36', '2012-09-20 17:56:36'),
(199, NULL, NULL, 'IMPORTADORA MARCAS TOP 512, C.A.', '', 'AV SUR 4 EDIF ABANDO PISO PB LOCAL 11', '', '', '', 'DAVID OBADIA', 'PRESIDENTE', '', '0', '2012-10-09 18:05:24', '2012-10-09 18:05:24'),
(200, NULL, NULL, 'PRODUCTOS ALIMENTICIOS PIGOLLO, C.A.', 'J31392188-2', 'AV. PRINCIPAL TURUMO SECTOR MARICHE LOCAL No.591 URB TURUMO', '0000-0000000', '0000-0000000', 'x@xxx.xxx', '', '', 'J31392188-2', '0', '2012-10-11 17:47:53', '2012-10-11 17:47:53'),
(201, NULL, NULL, 'GRÃFICAS KELL, C.A.', 'J30661996-8', 'CALLE PRINCIPAL CON 4/TA TRANSVERSAL EDIIFICIO INDUSTRIAL 70 PISO 1 LOCAL 1 URB. BOLEITA SUR - CARACAS DC', '0212-0000000', '0212-0000000', 'x@x.xxx', '', '', 'RIF: J-30661996-8', '0', '2012-10-11 19:14:52', '2012-10-11 19:14:52'),
(202, NULL, NULL, 'SUPLIDORA DE EQUIPOS ELECTRONICOS', '', 'URB MONTE BELLO CALLE K ENTRE AVDA', '', '', '', 'CARLOS UGARTE', 'PRESIDENTE', '', '0', '2012-11-29 19:14:34', '2012-11-29 19:14:34'),
(203, NULL, NULL, 'CONSORCIO OLEGARIO PORTUGUESA, S.A.', '', 'CTRA VIA PAYARA LOCAL NRN SECTOR PIEDRAS BLANCASO 7S', '0414-3420324', '', '', 'BELKIS BOLIVAR', 'GERENTE DE IMPORTACIONES', '', '0', '2012-11-29 23:05:06', '2012-11-29 23:05:06'),
(204, NULL, NULL, 'VENEZOLANA DE AUTOADHESIVOS SMART, S.A.', '', '', '', '', '', '', '', '', '0', '2018-04-11 00:35:23', '2018-04-11 00:35:23'),
(205, NULL, NULL, 'DISTRIBUIDORA MULTIRUSTICOS, C.A.', '', 'URB INDUSTRIAL CLUB HIPICO CALLE CIEGA, GALPON LOS TEQUES, CARACAS', '0212-3649004', '', '', 'GLORIBEL ARAUJO', 'IMPORTACIONES', '', '0', '2012-12-18 19:53:25', '2012-12-18 19:53:25'),
(206, NULL, NULL, 'FERREMATERIALES LA FUERTE, C.A.', '', 'AV PRINCIPAL EDIF NIVEL PISO PB LOCAL 1 SECTOR CASTILLITO', '0286-0235461', '', '', 'SEMER NASSER', 'GERENTE DE IMPORTACIONES', '', '0', '2012-12-18 20:02:25', '2012-12-18 20:02:25'),
(207, NULL, NULL, 'GRUPO TEXLAR C.A ', 'J31194686-1', 'BARQUISIMETO ', '02122387749', '02122387749', '', '', '', 'GRUPO TEXLAR C.A RIF J-31194686-1 TELÃ‰FONO: 02122387749 BARQUISIMETO', '0', '2012-12-13 17:34:29', '2012-12-13 17:34:29'),
(208, NULL, NULL, 'ASOCIACION COOPERATIVA TEQUESGUAYANA, C.A.', '', '', '', '', '', '', '', '', '0', '2018-04-11 00:36:48', '2018-04-11 00:36:48'),
(209, NULL, NULL, 'INVERSIONES TRAVEL THING, C.A.', '', '', '', '', '', '', '', '', '0', '2018-04-11 00:37:59', '2018-04-11 00:37:59'),
(210, NULL, NULL, 'DISTRIBUIDORA BASICOS 26, C.A.', 'J40003526-0', 'AV. URDANETA EDIF 37 - PISO MEZANINA LOCAL MEZANINA - SECTOR CENTRO DE CARACAS', '0212-0000000', '0212-0000000', 'x@xxx.xxx', '', '', '', '0', '2013-02-21 17:12:51', '2013-02-21 17:12:51'),
(211, NULL, NULL, 'DISTRIBUIDORA SORT 18, C.A.', 'J40003614-3', 'AV. URDANETA EDIFICIO 37 - PISO MEZANINA LOCAL MEZANINA - SECTOR CENTRO DE CARACAS', '0212-0000000', '0212-0000000', '', '', '', 'RIF: J-40003614-3', '0', '2013-02-21 17:14:25', '2013-02-21 17:14:25'),
(212, NULL, NULL, 'DISTRIBUIDORA ACA NEW, C.A.', 'J40005503-2', 'AV. URDANETA EDIFICIO 37 - PISO MEZANINA LOCAL MEZANINA - SECTOR CENTRO DE CARACAS', '0212-0000000', '0212-0000000', '', '', '', 'RIF: J-40005503-2', '0', '2013-02-21 17:15:55', '2013-02-21 17:15:55'),
(213, NULL, NULL, 'DISTRIBUIDORA VEROCERAMICA, C.A.', '', 'CALLE CIEGA LOCAL N. 02 ZONA INDUSTRIAL CLUB HIPICO', '0414-1111733', '', 'distribuidoraporcellanite@hotmail.com', 'FRANCO PUCHARELLI', 'GERENTE', '', '0', '2013-03-22 22:46:27', '2013-03-22 22:46:27'),
(214, NULL, NULL, 'CONFECCIONES NEW HORSE C.A', '', 'CALLE CUJI A RUMUALDA ,EDIFICIO CENTRO COMERCIAL EL INDIO.', '00000000', '00000000', '', '', '', 'CARACAS-VENEZUELA', '0', '2013-04-02 20:34:24', '2013-04-02 20:34:24'),
(215, NULL, NULL, 'CONFECCIONES NEW HORSE C.A', '', 'CALLE CUJI A RUMUALDA ,EDIFICIO CENTRO COMERCIAL EL INDIO.', '00000000', '00000000', '', '', '', 'CARACAS-VENEZUELA', '0', '2013-04-02 20:34:27', '2013-04-02 20:34:27'),
(216, NULL, NULL, 'INDUSTRIAS DE VELAS LA TRINIDAD C.A', '', 'ZONA INDUSTRIAL II, CARRERA A1 CALLE A2 PARCELA 28-A', '0251-2690729', '', 'la_santisima_trinida@hotmail.com', '', '', '', '0', '2013-04-06 00:34:13', '2013-04-06 00:34:13'),
(217, NULL, NULL, 'ESTIRENOS DEL ZULIA, C.A.', '', '', '', '', 'SINCORREO@sincorreo.com', '', '', '', '0', '2018-04-11 00:38:29', '2018-04-11 00:38:29'),
(218, NULL, NULL, 'DISTRIBUCIONES INVEGAS S.C.A.', '', 'AV INTERCOMUNAL DE ANTIMANO LOCAL PUERTAS NRO 3 Y 4', '', '', '', 'GUSTAVO PINTO', 'IMPORTACIONES', '', '0', '2013-05-07 01:57:24', '2013-05-07 01:57:24'),
(219, NULL, NULL, 'APUS C.A ', '', 'AV 3 LOCAL LOTE N 8 ZONA IND SANTA CRUZ  MARACAY ARAGUA ', '0243-2690501 ', '', 'apus@hotmail.com', '', '', '', '0', '2013-06-13 19:58:42', '2013-06-13 19:58:42'),
(220, NULL, NULL, 'INVERSIONES ALL TOOTH, C.A.', '', 'AV PPAL DE LOS TEQUES LOCAL 1 PARCELA NRO PB URB LOS CERRITOS', '', '', '', 'AMAURY PUCCIARELLI', 'GERENTE', '', '0', '2013-07-17 17:46:20', '2013-07-17 17:46:20'),
(221, NULL, NULL, 'DISTRIBUIDORA GABYCERAMICAS, C.A.', '', 'AVENIDA P/PAL CASA N. 1 URB EL CARMEN', '0414-1111733', '', 'francop65@hotmail.com', 'FRANCO PUCHARELLI', 'PRESIDENTE', '', '0', '2013-07-19 19:56:43', '2013-07-19 19:56:43'),
(222, NULL, NULL, 'REPRESENTACIONES LARA TILES, C.A.', '', 'CALLE P/PAL DE LA ROSALEDA EDF. URACOA', '0414-1111733', '', 'francop65@hotmail.com', 'FRANCO PUCHARELLI', 'PRESIDENTE', '', '0', '2013-07-19 18:21:19', '2013-07-19 18:21:19'),
(223, NULL, NULL, 'REPRESENTACIONES BROUGHTFAST, C.A.', '', 'AV P/PAL URB IND. CLUB HIPICO GALPON R2 LOCAL C', '0414-1111733', '', 'francop65@hotmail.com', 'FRANCO PUCHARELLI', 'PRESIDENTE', '', '0', '2013-07-19 18:21:22', '2013-07-19 18:21:22'),
(224, NULL, NULL, 'REPRESENTACIONES CERAMIC ALFA, C.A.', '', 'CALLE LOS TAMARINDOS CASA N. 205 ', '0414-1111733', '', 'francop65@hotmail.com', 'FRANCO PUCHARELLI', 'PRESIDENTE', '', '0', '2013-07-23 22:36:01', '2013-07-23 22:36:01'),
(225, NULL, NULL, 'REPRESENTACIONES ONESTYLE, C.A.', '', 'CALLE CARMEL CASA N.D-1 URB LLANO ALTO', '0414-1111733', '', 'francop65@hotmail.com', 'FRANCO PUCHARELLI', 'PRESIDENTE', '', '0', '2013-07-22 17:29:59', '2013-07-22 17:29:59');
INSERT INTO `clients` (`id`, `state_id`, `city_id`, `name`, `rif`, `address`, `phone_number1`, `phone_number2`, `email`, `contact_person`, `position_contact`, `comment`, `active`, `created_at`, `updated_at`) VALUES
(226, NULL, NULL, 'REPRESENTACIONES SIMAT, C.A.', '', 'AV P/PAL AL FRENTE DE CACTUS PIZZA LOCAL N.5', '0414-1111733', '', 'francop65@hotmail.com', 'FRANCO PUCHARELLI', 'PRESIDENTE', '', '0', '2013-07-22 17:29:37', '2013-07-22 17:29:37'),
(227, NULL, NULL, 'CORPORACION VICTORY 2.000 C.A ', 'J30661592-0', 'CALERO A CHIMBORAZO EDF PALMAR PB CANDELARIA NORTE', '', '', '', '', '', 'CORPORACION VICTORY 2.000 C.A RIF J 30661592-0 CARACAS DIRECCION  : CALERO A CHIMBORAZO EDF PALMAR PB CANDELARIA NORTE', '0', '2013-10-15 22:47:16', '2013-10-15 22:47:16'),
(228, NULL, NULL, 'SHIMGE DE VENEZUELA, C.A.', 'J40231707-7', 'CALLE K No. 8-33 URB MONTE CLARO - MARACAIBO', '0261-7415296', '', '', '', '', 'RIF. J-40231707-7', '0', '2018-04-09 22:14:38', '2018-04-09 22:14:38'),
(229, NULL, NULL, 'LMS IMPORTACIONES, C.A.', '', 'CALLE 77 CASA N. 53-221', '0416-5608121', '', '', 'JASAI MONTIEL', 'PRESIDENTE', '', '0', '2013-09-05 18:29:13', '2013-09-05 18:29:13'),
(230, NULL, NULL, 'Representaciones Super Tiles, C.A.', '', 'urb playa grande, sector monte mar', '0212-3522000', '', '', 'FRANCO PUCARELLI', 'PRESIDENTE', '', '0', '2013-09-05 22:40:10', '2013-09-05 22:40:10'),
(231, NULL, NULL, 'CORPORACION VICTORIA 26   CA ', 'J40147750-0', 'Av. primera Edif  res puerto ', '00000000', '', 'sincorre@hotmail.com', '', '', 'CORPORACION VICTORIA 26 CA RIF J-40147750-0 Direccion: Av. primera Edif  res puerto', '0', '2013-10-15 22:47:20', '2013-10-15 22:47:20'),
(232, NULL, NULL, 'CONSTRUCTORES ASOCIADOS DE OCCIDENTE, C.A.', '', 'CALLE 3 LOTE C, CASA N. 1', '0414-46159857', '', 'dorisnav@hotmail.com', 'DORIS NAVARRO', 'JEFE DE IMPORTACIONES', '', '0', '2013-10-15 22:47:53', '2013-10-15 22:47:53'),
(233, NULL, NULL, 'TITANIUM REPRESENTACIONES, C.A.', 'J30695337-0', 'AV. 10 CON AV. 11 OTA MAIA AUXLIADORA URBANIZACION ALTO PRADO - CARACAS D.C.', '0212-XXXXXXX', '0212-XXXXXXX', 'oatrenard@gmail.com', '', '', 'RIF. J-30695337-0', '0', '2013-09-17 22:05:05', '2013-09-17 22:05:05'),
(234, NULL, NULL, 'FV INVERSIONES, C.A.', '', '', '', '', '', '', '', '', '0', '2018-04-10 18:34:56', '2018-04-10 18:34:56'),
(235, NULL, NULL, 'DISTRIBUIDORA MARYCERAMICAS, C.A.', '', 'URBANIZACION EL CARMEN CASA D-1 AV. PRINCIPAL LLANO ALTO CARRIZAL, EDO MIRANDA', '0212-3815397', '', '', 'MARIA ELENA ORTIZ', 'IMPORTACIONES', '', '0', '2013-11-20 19:18:53', '2013-11-20 19:18:53');

-- --------------------------------------------------------

--
-- Table structure for table `customs`
--

CREATE TABLE `customs` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `observation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customs`
--

INSERT INTO `customs` (`id`, `name`, `observation`, `active`, `created_at`, `updated_at`) VALUES
(1, 'MARITIMA - MARACAIBO', '', '1', NULL, NULL),
(2, 'AEREA - LA CHINITA', '', '1', NULL, NULL),
(3, 'TERRESTRE - SAN ANTONIO', '', '1', NULL, NULL),
(4, 'MARITIMA - PTO. CABELLO', '', '0', NULL, NULL),
(5, 'TERRESTRE - PARAGUACHON', '', '0', NULL, NULL),
(6, 'TERRESTRE -  UREÑA', '', '1', NULL, NULL),
(7, 'Zona Sur', NULL, '0', '2024-01-25 00:34:03', '2024-01-25 00:34:03'),
(8, 'Maracaibo Zona Oeste', NULL, '0', '2024-01-25 00:36:20', '2024-01-25 00:36:20'),
(9, 'Zona Sur', NULL, '0', '2024-01-25 00:50:03', '2024-01-25 00:50:03'),
(10, 'Sergama', NULL, '0', '2024-01-25 00:50:45', '2024-01-25 00:50:45');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_12_04_143956_create_customs_table', 1),
(6, '2023_12_04_144101_create_clients_table', 1),
(7, '2023_12_04_150015_create_operations_table', 1),
(8, '2023_12_27_173359_create_offices_table', 1),
(9, '2023_12_27_173910_create_documents_table', 1),
(10, '2023_12_27_182103_create_operation_types_table', 1),
(11, '2024_01_08_140437_create_states_table', 1),
(12, '2024_01_08_140508_create_cities_table', 1),
(13, '2024_01_12_183807_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE `offices` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offices`
--

INSERT INTO `offices` (`id`, `name`, `comment`, `active`, `created_at`, `updated_at`) VALUES
(1, 'MARITIMA - MARACAIBO', NULL, '1', NULL, '2024-01-20 00:48:04'),
(2, 'SAN ANTONIO', '', '1', NULL, NULL),
(3, 'PTO. CABELLO', '', '1', NULL, NULL),
(4, 'PARAGUACHON', '', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `operations`
--

CREATE TABLE `operations` (
  `id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `operation_type_id` bigint UNSIGNED NOT NULL,
  `office_id` bigint UNSIGNED NOT NULL,
  `custom_id` bigint UNSIGNED NOT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merchandise_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dispatcher` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merchandise_origin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merchandise_source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merchandise_destination` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transport_vehicle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_arrival_date` datetime DEFAULT NULL,
  `warehouse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reception_original_documents` datetime DEFAULT NULL,
  `reception_comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `funds_request` datetime DEFAULT NULL,
  `procedure_sidunea` datetime DEFAULT NULL,
  `customs_presentation` datetime DEFAULT NULL,
  `customs_recognition` datetime DEFAULT NULL,
  `bank_cancellation` datetime DEFAULT NULL,
  `delivery_dispatch_transport` datetime DEFAULT NULL,
  `warehouse_vehicle_exit` datetime DEFAULT NULL,
  `billing_file` datetime DEFAULT NULL,
  `billed_file` datetime DEFAULT NULL,
  `shipping_invoice_customer` datetime DEFAULT NULL,
  `customer_invoice_reception` datetime DEFAULT NULL,
  `additional_day_details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dai_registration` datetime DEFAULT NULL,
  `dua_dia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `process_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `operations`
--

INSERT INTO `operations` (`id`, `client_id`, `operation_type_id`, `office_id`, `custom_id`, `document`, `file`, `bill`, `merchandise_description`, `dispatcher`, `merchandise_origin`, `merchandise_source`, `merchandise_destination`, `transport_vehicle`, `vehicle_arrival_date`, `warehouse`, `reception_original_documents`, `reception_comments`, `funds_request`, `procedure_sidunea`, `customs_presentation`, `customs_recognition`, `bank_cancellation`, `delivery_dispatch_transport`, `warehouse_vehicle_exit`, `billing_file`, `billed_file`, `shipping_invoice_customer`, `customer_invoice_reception`, `additional_day_details`, `dai_registration`, `dua_dia`, `process_color`, `status`, `comment`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, 1, NULL, '123456', '31497', 'galletas y confiteria', 'algo', 'algo1', 'algo2', 'algo3', 'terrestre', '2024-01-22 00:00:00', 'VENESCA', '2024-01-23 00:00:00', NULL, '2024-01-24 00:00:00', '2024-01-25 00:00:00', '2024-01-26 00:00:00', '2024-01-29 00:00:00', '2024-01-30 00:00:00', '2024-01-31 00:00:00', '2024-02-01 00:00:00', '2024-02-02 00:00:00', '2024-02-05 00:00:00', '2024-02-06 00:00:00', '2024-02-07 00:00:00', NULL, '2024-02-08 00:00:00', 'ffrr', 'rojo', '1', NULL, '2024-01-22 16:40:16', '2024-01-25 16:11:16'),
(2, 10, 1, 1, 5, NULL, '123456789', '31498888', NULL, 'algo', 'algo1', 'algo2', 'algo3', 'aereo', '2024-01-22 00:00:00', 'warehouse', '2024-01-22 00:00:00', 'reception_comments', '2024-01-22 00:00:00', '2024-01-22 00:00:00', '2024-01-22 00:00:00', '2024-01-22 00:00:00', '2024-01-22 00:00:00', '2024-01-22 00:00:00', '2024-01-22 00:00:00', '2024-01-22 00:00:00', '2024-01-22 00:00:00', '2024-01-22 00:00:00', '2024-01-22 00:00:00', 'additional_day_details', '2024-01-22 00:00:00', 'dua_dia', 'rojo', '1', 'comment', '2024-01-22 16:45:47', '2024-01-24 23:12:29');

-- --------------------------------------------------------

--
-- Table structure for table `operation_types`
--

CREATE TABLE `operation_types` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `operation_types`
--

INSERT INTO `operation_types` (`id`, `name`, `active`, `created_at`, `updated_at`) VALUES
(1, 'IMPORTACION', '1', NULL, NULL),
(2, 'EXPORTACION', '1', NULL, NULL),
(3, 'TI', '1', NULL, NULL),
(4, 'TN', '1', NULL, NULL),
(5, 'RM', '1', NULL, NULL),
(6, 'RX', '1', NULL, NULL),
(7, 'ATS', '1', NULL, NULL),
(8, 'ETS', '1', NULL, NULL),
(9, 'ATPA', '1', NULL, NULL),
(10, 'ETPP', '1', NULL, NULL),
(11, 'IN BOND', '1', NULL, NULL),
(12, 'RSM', '1', NULL, NULL),
(13, 'E', '1', NULL, NULL),
(14, 'ADMINISION TEMPORAL', '1', NULL, NULL),
(15, 'REEXPORTACION', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'login', '8fc853a9cac7a271e9876eeece7d37d16da4cfa9cbe50ac73b92c9602216fbe1', '[\"*\"]', NULL, NULL, '2024-01-26 00:19:51', '2024-01-26 00:19:51'),
(2, 'App\\Models\\User', 1, 'login', '31d9cb0020951fb37be6daa4500b457c5f172b9f0accae78fd05d4247f7ab3a4', '[\"*\"]', NULL, NULL, '2024-01-26 00:32:46', '2024-01-26 00:32:46'),
(3, 'App\\Models\\User', 1, 'login', 'f70e233dabf41323ff57625cba23ceb8c857994b1a8ba9bf35c1f8508c6b83d1', '[\"*\"]', NULL, NULL, '2024-01-26 00:34:01', '2024-01-26 00:34:01'),
(4, 'App\\Models\\User', 1, 'login', '2ef98df9d0f7af0742ce8a089b5138f93ce3aa4209235a955bc9853eaccbc049', '[\"*\"]', NULL, NULL, '2024-01-26 00:37:24', '2024-01-26 00:37:24'),
(5, 'App\\Models\\User', 1, 'login', '57cef314dc247427aaa4e95daaab72626e8c24a5677551ede0f33ba16a470aa2', '[\"*\"]', NULL, NULL, '2024-01-26 00:50:09', '2024-01-26 00:50:09');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Amazonas', NULL, NULL),
(2, 'Anzoátegui', NULL, NULL),
(3, 'Apure', NULL, NULL),
(4, 'Aragua', NULL, NULL),
(5, 'Barinas', NULL, NULL),
(6, 'Bolívar', NULL, NULL),
(7, 'Carabobo', NULL, NULL),
(8, 'Cojedes', NULL, NULL),
(9, 'Delta Amacuro', NULL, NULL),
(10, 'Falcón', NULL, NULL),
(11, 'Guárico', NULL, NULL),
(12, 'Lara', NULL, NULL),
(13, 'Mérida', NULL, NULL),
(14, 'Miranda', NULL, NULL),
(15, 'Monagas', NULL, NULL),
(16, 'Nueva Esparta', NULL, NULL),
(17, 'Portuguesa', NULL, NULL),
(18, 'Sucre', NULL, NULL),
(19, 'Táchira', NULL, NULL),
(20, 'Trujillo', NULL, NULL),
(21, 'Vargas', NULL, NULL),
(22, 'Yaracuy', NULL, NULL),
(23, 'Zulia', NULL, NULL),
(24, 'Distrito Capital', NULL, NULL),
(25, 'Dependencias Federales', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Marcos Urdaneta', 'marcosjavieruv@gmail.com', '2024-01-20 00:06:58', '$2y$12$BwZ3Q72Ob7La6JuEfJbmiO8V4QlPEvHCX5iBZC0iXOJfXbMUrH7ca', 'mocuZaMLbL', '1', '2024-01-20 00:06:59', '2024-01-20 00:06:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_state_id_foreign` (`state_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clients_state_id_foreign` (`state_id`),
  ADD KEY `clients_city_id_foreign` (`city_id`);

--
-- Indexes for table `customs`
--
ALTER TABLE `customs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operations`
--
ALTER TABLE `operations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `operations_operation_type_id_foreign` (`operation_type_id`),
  ADD KEY `operations_office_id_foreign` (`office_id`),
  ADD KEY `operations_custom_id_foreign` (`custom_id`),
  ADD KEY `operations_client_id_foreign` (`client_id`);

--
-- Indexes for table `operation_types`
--
ALTER TABLE `operation_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=499;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT for table `customs`
--
ALTER TABLE `customs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `offices`
--
ALTER TABLE `offices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `operations`
--
ALTER TABLE `operations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `operation_types`
--
ALTER TABLE `operation_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `clients_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `operations`
--
ALTER TABLE `operations`
  ADD CONSTRAINT `operations_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `operations_custom_id_foreign` FOREIGN KEY (`custom_id`) REFERENCES `customs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `operations_office_id_foreign` FOREIGN KEY (`office_id`) REFERENCES `offices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `operations_operation_type_id_foreign` FOREIGN KEY (`operation_type_id`) REFERENCES `operation_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
