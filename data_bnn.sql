-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 16 Des 2020 pada 17.37
-- Versi Server: 10.1.9-MariaDB
-- PHP Version: 7.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_bnn`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `keys`
--

INSERT INTO `keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, 1, 'afri123', 1, 0, 0, NULL, 1),
(2, 2, 'rahasia', 1, 0, 0, NULL, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `limits`
--

CREATE TABLE `limits` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `count` int(10) NOT NULL,
  `hour_started` int(11) NOT NULL,
  `api_key` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `limits`
--

INSERT INTO `limits` (`id`, `uri`, `count`, `hour_started`, `api_key`) VALUES
(1, 'uri:api/kelurahan/index:get', 2, 1608136447, 'rahasia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jenis_kelamin`
--

CREATE TABLE `tb_jenis_kelamin` (
  `id_jenis_kelamin` int(11) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_jenis_kelamin`
--

INSERT INTO `tb_jenis_kelamin` (`id_jenis_kelamin`, `jenis_kelamin`) VALUES
(1, 'Laki-laki'),
(2, 'Perempuan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kecamatan`
--

CREATE TABLE `tb_kecamatan` (
  `id_kecamatan` int(11) NOT NULL,
  `kecamatan` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kecamatan`
--

INSERT INTO `tb_kecamatan` (`id_kecamatan`, `kecamatan`) VALUES
(1, 'Blimbing'),
(2, 'Kedungkandang'),
(3, 'Klojen'),
(4, 'Lowokwaru'),
(5, 'Sukun'),
(8, 'Bululawang'),
(10, 'Dau'),
(13, 'Gondanglegi'),
(15, 'Pakis'),
(16, 'Karangploso'),
(17, 'Singosari'),
(18, 'Wonosari'),
(19, 'Turen'),
(20, 'Wagir'),
(21, 'Tajinan'),
(22, 'Pakisaji'),
(23, 'Pagelaran'),
(24, 'Lawang'),
(27, 'Bantur'),
(28, 'Dampit'),
(29, 'Donomulyo'),
(30, 'Gedangan'),
(31, 'Jabung'),
(32, 'Kalipare'),
(33, 'Kasembon'),
(34, 'Kepanjen'),
(35, 'Kromengan'),
(36, 'Ngajum'),
(37, 'Ngantang'),
(38, 'Pagak'),
(39, 'Poncokusumo'),
(40, 'Pujon'),
(41, 'Sumbermanjing Wetan'),
(42, 'Sumberpucung'),
(43, 'Tirtoyudo'),
(44, 'Tumpang'),
(45, 'Wajak'),
(47, 'Ampilgading');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kelurahan`
--

CREATE TABLE `tb_kelurahan` (
  `id_kelurahan` int(11) NOT NULL,
  `id_kecamatan` int(11) NOT NULL,
  `kelurahan` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kelurahan`
--

INSERT INTO `tb_kelurahan` (`id_kelurahan`, `id_kecamatan`, `kelurahan`) VALUES
(1, 1, 'Arjosari'),
(2, 1, 'Balearjosari'),
(5, 4, 'Sumbersari'),
(6, 4, 'Tunggulwulung'),
(7, 4, 'Lowokwaru'),
(8, 1, 'Pandanwangi'),
(9, 1, 'Purwodadi'),
(10, 1, 'Polowijen'),
(11, 5, 'Tanjungrejo'),
(12, 4, 'Merjosari'),
(13, 4, 'Mojolangu'),
(14, 4, 'Tunjungsekar'),
(15, 4, 'Tasikmadu'),
(16, 15, 'Sekarpuro'),
(17, 15, 'Pakiskembar'),
(18, 15, 'Tirtomoyo'),
(19, 15, 'Saptorenggo'),
(20, 1, 'Polehan'),
(21, 5, 'Gadang'),
(22, 5, 'Bandungrejosari'),
(23, 2, 'Kotalama'),
(24, 3, 'Kiduldalem'),
(25, 3, 'Oro-Oro Dowo'),
(26, 5, 'Mulyorejo'),
(27, 2, 'Sawojajar'),
(28, 3, 'Sukoharjo'),
(29, 1, 'Blimbing'),
(30, 1, 'Bunulrejo'),
(31, 1, 'Jodipan'),
(32, 1, 'Kesatrian'),
(33, 1, 'Purwantoro'),
(34, 2, 'Arjowinangun'),
(35, 2, 'Bumiayu'),
(36, 2, 'Buring'),
(37, 2, 'Cemorokandang'),
(38, 2, 'Kedungkandang'),
(39, 2, 'Lesanpuro'),
(40, 2, 'Madyopuro'),
(41, 2, 'Mergosono'),
(42, 2, 'Tlogowaru'),
(43, 2, 'Wonokoyo'),
(44, 3, 'Bareng'),
(45, 3, 'Gadingasri'),
(46, 3, 'Kasin'),
(47, 3, 'Kauman'),
(48, 3, 'Klojen'),
(49, 3, 'Penanggungan'),
(50, 3, 'Rampal Celaket'),
(51, 3, 'Samaan'),
(52, 4, 'Dinoyo'),
(53, 4, 'Jatimulyo'),
(54, 4, 'Ketawanggede'),
(55, 4, 'Tlogomas'),
(56, 4, 'Tulusrejo'),
(57, 5, 'Bakalankrajan'),
(58, 5, 'Bandulan'),
(59, 5, 'Ciptomulyo'),
(60, 5, 'Karangbesuki'),
(61, 5, 'Kebonsari'),
(62, 5, 'Pisangcandi'),
(63, 5, 'Sukun'),
(64, 26, 'Argoyuwono'),
(65, 26, 'Lebakharjo'),
(66, 26, 'Mulyoasri'),
(67, 26, 'Purwoharjo'),
(68, 26, 'Sidorenggo'),
(69, 26, 'Simojayan'),
(70, 26, 'Sonowangi'),
(71, 26, 'Tamanasri'),
(72, 26, 'Tamansari'),
(73, 26, 'Tawangagung'),
(74, 26, 'Wirotaman'),
(75, 27, 'Bandungrejo'),
(76, 27, 'Bantur'),
(77, 27, 'Karangsari'),
(78, 27, 'Pringgodani'),
(79, 27, 'Rejosari'),
(80, 27, 'Rejoyoso'),
(81, 27, 'Srigonco'),
(82, 27, 'Sumberbening'),
(83, 27, 'Wonokerto'),
(84, 27, 'Wonorejo'),
(85, 8, 'Bakalan'),
(86, 8, 'Bululawang'),
(87, 8, 'Gading'),
(88, 8, 'Kasembon'),
(89, 8, 'Kasri'),
(90, 8, 'Krebet'),
(91, 8, 'Krebet Senggrong'),
(92, 8, 'Kuwolu'),
(93, 8, 'Lumbangsari'),
(94, 8, 'Pringu'),
(95, 8, 'Sempalwadak'),
(96, 8, 'Sudimoro'),
(97, 8, 'Sukonolo'),
(98, 8, 'Wandanpuro'),
(99, 26, 'Tirtomarto'),
(100, 26, 'Tirtomoyo'),
(101, 28, 'Amadanom'),
(102, 28, 'Baturetno'),
(103, 28, 'Bumirejo'),
(104, 28, 'Jambangan'),
(105, 28, 'Majangtengah'),
(106, 28, 'Pamotan'),
(107, 28, 'Pojok'),
(108, 28, 'Rembun'),
(109, 28, 'Srimulyo'),
(110, 28, 'Sukodono'),
(111, 28, 'Sumbersuko'),
(112, 28, 'Dampit'),
(113, 10, 'Gadingkulon'),
(114, 10, 'Kalisongo'),
(115, 10, 'Karangwidoro'),
(116, 10, 'Kucur'),
(117, 10, 'Landungsari'),
(118, 10, 'Mulyoagung'),
(119, 10, 'Patungsewu'),
(120, 10, 'Selorejo'),
(121, 10, 'Sumbersekar'),
(122, 10, 'Tegalweru'),
(123, 29, 'Banjarejo'),
(124, 29, 'Donomulyo'),
(125, 29, 'Kedungsalam'),
(126, 29, 'Mentaraman'),
(127, 29, 'Purwodadi'),
(128, 29, 'Purworejo'),
(129, 29, 'Sumberoto'),
(130, 29, 'Tempursari'),
(131, 29, 'Tlogosari'),
(132, 29, 'Tulungrejo'),
(133, 30, 'Gajahrejo'),
(134, 30, 'Gedangan'),
(135, 30, 'Girimulyo'),
(136, 30, 'Segaran'),
(137, 30, 'Sidodadi'),
(138, 30, 'Sindurejo'),
(139, 30, 'Sumberejo'),
(140, 30, 'Tumpakrejo'),
(141, 13, 'Bulupitu'),
(142, 13, 'Ganjaran'),
(143, 13, 'Gondanglegi Kulon'),
(144, 13, 'Gondanglegi Wetan'),
(145, 13, 'Ketawang'),
(146, 13, 'Panggungrejo'),
(147, 13, 'Putat Kidul'),
(148, 13, 'Putat Lor'),
(149, 13, 'Putukrejo'),
(150, 13, 'Sepanjang'),
(151, 13, 'Sukorejo'),
(152, 13, 'Sukosari'),
(153, 13, 'Sumberjaya'),
(154, 13, 'Urek-Urek'),
(155, 31, 'Argosari'),
(156, 31, 'Gadingkembar'),
(157, 31, 'Gunung Jati'),
(158, 31, 'Jabung'),
(159, 31, 'Kemantren'),
(160, 31, 'Kemiri'),
(161, 31, 'Kenongo'),
(162, 31, 'Ngadirejo'),
(163, 31, 'Pandansari Lor'),
(164, 31, 'Sidomulyo'),
(165, 31, 'Sidorejo'),
(166, 31, 'Slamparejo'),
(167, 31, 'Sukolilo'),
(168, 31, 'Sukopuro'),
(169, 31, 'Taji'),
(170, 32, 'Arjosari'),
(171, 32, 'Arjowilangun'),
(172, 32, 'Kaliasri'),
(173, 32, 'Kalipare'),
(174, 32, 'Kalirejo'),
(175, 32, 'Putukrejo'),
(176, 32, 'Sukowilangun'),
(177, 32, 'Sumberpetung'),
(178, 32, 'Tumpakrejo'),
(179, 16, 'Ampeldento'),
(180, 16, 'Bocek'),
(181, 16, 'Donowarih'),
(182, 16, 'Girimoyo'),
(183, 16, 'Kepuharjo'),
(184, 16, 'Ngenep'),
(185, 16, 'Ngijo'),
(186, 16, 'Tawangargo'),
(187, 16, 'Tegalgondo'),
(188, 33, 'Bayem'),
(189, 33, 'Kasembon'),
(190, 33, 'Pait'),
(192, 33, 'Pondokagung'),
(193, 33, 'Sukosari'),
(194, 33, 'Wonoagung'),
(195, 34, 'Curungrejo'),
(196, 34, 'Dilem'),
(197, 34, 'Jatirejoyoso'),
(198, 34, 'Jenggolo'),
(199, 34, 'Kedungpedaringan'),
(200, 34, 'Kemiri'),
(201, 34, 'Mangunrejo'),
(202, 34, 'Mojosari'),
(203, 34, 'Ngadilangkung'),
(204, 34, 'Panggungrejo'),
(205, 34, 'Sengguruh'),
(206, 34, 'Sukoraharjo'),
(207, 34, 'Talangagung'),
(208, 34, 'Tegalsari'),
(209, 34, 'Ardirejo'),
(210, 34, 'Cepokomulyo'),
(211, 34, 'Kepanjen'),
(212, 34, 'Penarukan'),
(213, 35, 'Jambuwer'),
(214, 35, 'Jatikerto'),
(215, 35, 'Karangrejo'),
(216, 35, 'Kromengan'),
(217, 35, 'Ngadirejo'),
(218, 35, 'Peniwen'),
(219, 35, 'Slorok'),
(220, 24, 'Bedali'),
(221, 24, 'Ketindan'),
(222, 24, 'Mulyoarjo'),
(223, 24, 'Sidodadi'),
(224, 24, 'Sidoluhur'),
(225, 24, 'Srigading'),
(226, 24, 'Sumberngepoh'),
(227, 24, 'Turirejo'),
(228, 24, 'Wonorejo'),
(229, 24, 'Kalirejo'),
(230, 24, 'Lawang'),
(231, 24, 'Sumberporong'),
(232, 36, 'Babadan'),
(233, 36, 'Balesari'),
(234, 36, 'Banjarsari'),
(235, 36, 'Kesamben'),
(236, 36, 'Kranggan'),
(237, 36, 'Maguan'),
(238, 36, 'Ngajum'),
(239, 36, 'Ngasem'),
(240, 36, 'Palaan'),
(241, 37, 'Banjarejo'),
(242, 37, 'Banturejo'),
(243, 37, 'Jombok'),
(244, 37, 'Kaumrejo'),
(245, 37, 'Mulyorejo'),
(246, 37, 'Ngantru'),
(247, 37, 'Pagersari'),
(248, 37, 'Pandansari'),
(249, 37, 'Purworejo'),
(250, 37, 'Sidodadi'),
(251, 37, 'Sumberagung'),
(252, 37, 'Tulungrejo'),
(253, 37, 'Waturejo'),
(255, 38, 'Pagak'),
(256, 38, 'Pandanrejo'),
(257, 38, 'Sempol'),
(258, 38, 'Sumberejo'),
(259, 38, 'Sumberkerto'),
(260, 38, 'Sumbermanjing Kulon'),
(261, 38, 'Tlogorejo'),
(262, 23, 'Balearjo'),
(263, 23, 'Banjarejo'),
(264, 23, 'Brongkal'),
(265, 23, 'Clumprit'),
(266, 23, 'Kademangan'),
(267, 23, 'Kanigoro'),
(268, 23, 'Karangsuko'),
(269, 23, 'Pagelaran'),
(270, 23, 'Sidorejo'),
(271, 23, 'Suwaru'),
(272, 15, 'Ampeldento'),
(273, 15, 'Asrikaton'),
(274, 15, 'Banjarejo'),
(275, 15, 'Bunutwetan'),
(276, 15, 'Kedungrejo'),
(277, 15, 'Mangliawan'),
(278, 15, 'Pakisjajar'),
(279, 15, 'Pucangsongo'),
(280, 15, 'Sukoanyar'),
(281, 15, 'Sumberkradenan'),
(282, 15, 'Sumberpasir'),
(283, 22, 'Genengan'),
(284, 22, 'Glanggang'),
(285, 22, 'Jatisari'),
(286, 22, 'Karangduren'),
(287, 22, 'Karangpandan'),
(288, 22, 'Kebonagung'),
(289, 22, 'Kendalpayak'),
(290, 22, 'Pakisaji'),
(291, 22, 'Permanu'),
(292, 22, 'Sutojayan'),
(293, 22, 'Wadung'),
(294, 22, 'Wonokerso'),
(295, 39, 'Argosuko'),
(296, 39, 'Belung'),
(297, 39, 'Dawuhan'),
(298, 39, 'Gubukklakah'),
(299, 39, 'Jambesari'),
(300, 39, 'Karanganyar'),
(301, 39, 'Karangnongko'),
(302, 39, 'Ngadas'),
(303, 39, 'Ngadireso'),
(304, 39, 'Ngebruk'),
(305, 39, 'Pajaran'),
(306, 39, 'Pandansari'),
(307, 39, 'Poncokusumo'),
(308, 39, 'Sumberejo'),
(309, 39, 'Wonomulyo'),
(310, 39, 'Wonorejo'),
(311, 39, 'Wringinanom'),
(312, 40, 'Bendosari'),
(313, 40, 'Madiredo'),
(314, 40, 'Ngabab'),
(315, 40, 'Ngroto'),
(316, 40, 'Pandesari'),
(317, 40, 'Pujon Kidul'),
(318, 40, 'Pujon Lor'),
(319, 40, 'Sukomulyo'),
(320, 40, 'Tawangsari'),
(321, 40, 'Wiyurejo'),
(322, 17, 'Ardimulyo'),
(323, 17, 'Banjararum'),
(324, 17, 'Baturetno'),
(325, 17, 'Dengkol'),
(326, 17, 'Gunungrejo'),
(327, 17, 'Klampok'),
(328, 17, 'Lang-Lang'),
(329, 17, 'Purwoasri'),
(330, 17, 'Randuagung'),
(331, 17, 'Tamanharjo'),
(332, 17, 'Toyomarto'),
(333, 17, 'Tanjungtirto'),
(334, 17, 'Watugede'),
(335, 17, 'Wonorejo'),
(336, 17, 'Candirenggo'),
(337, 17, 'Losari'),
(338, 17, 'Pagentan'),
(339, 41, 'Argotirto'),
(340, 41, 'Druju'),
(341, 41, 'Harjokuncaran'),
(342, 41, 'Kedungbanteng'),
(343, 41, 'Klepu'),
(344, 41, 'Ringinkembar'),
(345, 41, 'RInginsari'),
(346, 41, 'Sekarbanyu'),
(347, 41, 'Sidoasri'),
(348, 41, 'Sitiarjo'),
(349, 41, 'Sumberagung'),
(350, 41, 'Sumbermanjing Wetan'),
(351, 41, 'Tambakasri'),
(352, 41, 'Tambakrejo'),
(353, 41, 'Tegalrejo'),
(354, 21, 'Gunungronggo'),
(355, 21, 'Gunungsari'),
(356, 21, 'Jambearjo'),
(357, 21, 'Jatisari'),
(358, 21, 'Ngawonggo'),
(359, 21, 'Pandanmulyo'),
(360, 21, 'Purwosekar'),
(361, 21, 'Randugading'),
(362, 21, 'Sumbersuko'),
(363, 21, 'Tajinan'),
(364, 21, 'Tambakasri'),
(365, 21, 'Tangkilsari'),
(366, 43, 'Ampelgading'),
(367, 43, 'Gadungsari'),
(368, 43, 'Jogomulyan'),
(369, 43, 'Kepatihan'),
(370, 43, 'Pujiharjo'),
(371, 43, 'Purwodadi'),
(372, 43, 'Sukorejo'),
(373, 43, 'Sumbertangkil'),
(374, 43, 'Tamankuncaran'),
(375, 43, 'Tamansatriyan'),
(376, 43, 'Tirtoyudo'),
(377, 43, 'Tlogosari'),
(378, 43, 'Wonoagung'),
(379, 44, 'Benjor'),
(380, 44, 'Bokor'),
(381, 44, 'Duwet'),
(382, 44, 'Duwet Krajan'),
(383, 44, 'Jeru'),
(384, 44, 'Kambingan'),
(385, 44, 'Kidal'),
(386, 44, 'Malangsuko'),
(387, 44, 'Ngingit'),
(388, 44, 'Pandanajeng'),
(389, 44, 'Pulungdowo'),
(390, 44, 'Slamet'),
(391, 44, 'Tulusbesar'),
(392, 44, 'Tumpang'),
(393, 44, 'Wringinsongo'),
(394, 19, 'Gedog Kulon'),
(395, 19, 'Gedog Wetan'),
(396, 19, 'Jeru'),
(397, 19, 'Kedok'),
(398, 19, 'Kemulan'),
(399, 19, 'Pagedangan'),
(400, 19, 'Sanankerto'),
(401, 19, 'Sananrejo'),
(402, 19, 'Sawahan'),
(403, 19, 'Talangsuko'),
(404, 19, 'Talok'),
(405, 19, 'Tanggung'),
(406, 19, 'Tawangrejeni'),
(407, 19, 'Tumpukrenteng'),
(408, 19, 'Undaan'),
(409, 19, 'Sedayu'),
(410, 19, 'Turen'),
(411, 20, 'Dalisodo'),
(412, 20, 'Gondowangi'),
(413, 20, 'Jedong'),
(414, 20, 'Mendalanwangi'),
(415, 20, 'Pandanlandung'),
(416, 20, 'Pandanrejo'),
(417, 20, 'Parangargo'),
(418, 20, 'Petungsewu'),
(419, 20, 'Sidorahayu'),
(420, 20, 'Sitirejo'),
(421, 20, 'Sukodadi'),
(422, 20, 'Sumbersuko'),
(423, 45, 'Bambang'),
(424, 45, 'Blayu'),
(425, 45, 'Bringin'),
(426, 45, 'Codo'),
(427, 45, 'Dadapan'),
(428, 45, 'Kidangbang'),
(429, 45, 'Ngembal'),
(430, 45, 'Patokpicis'),
(431, 45, 'Sukoanyar'),
(432, 45, 'Sukolilo'),
(433, 45, 'Sumberputih'),
(434, 45, 'Wajak'),
(435, 45, 'Wonoayu'),
(436, 18, 'Bangelan'),
(437, 18, 'Kebobang'),
(438, 18, 'Kluwut'),
(439, 18, 'Plandi'),
(440, 18, 'Plaosan'),
(441, 18, 'Sumberdem'),
(442, 18, 'Sumbertempur'),
(443, 18, 'Wonosari'),
(446, 38, 'Gampingan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pasien_rehab`
--

CREATE TABLE `tb_pasien_rehab` (
  `id_pasien_rehab` int(11) NOT NULL,
  `id_kelurahan` int(11) NOT NULL,
  `id_kecamatan` int(11) NOT NULL,
  `id_pekerjaan` int(11) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempat_rehab` varchar(128) NOT NULL,
  `lama_rehab` varchar(128) NOT NULL,
  `surat_selesai` varchar(64) NOT NULL,
  `tahun` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pasien_rehab`
--

INSERT INTO `tb_pasien_rehab` (`id_pasien_rehab`, `id_kelurahan`, `id_kecamatan`, `id_pekerjaan`, `tanggal_lahir`, `tempat_rehab`, `lama_rehab`, `surat_selesai`, `tahun`) VALUES
(2, 14, 4, 13, '2002-12-12', 'RST dr. SOEPRAOEN', '1 Bulan', 'Ada', '2018'),
(8, 27, 2, 17, '1976-04-06', 'RSI UNISMA', '1 Bulan', 'Tidak Ada', '2018'),
(9, 25, 3, 13, '2001-01-13', 'KLINIK PRATAMAKLINIK PRATAMA BNN KOTA MALANG', '1 Bulan', 'Ada', '2018'),
(12, 16, 15, 13, '2000-04-10', 'KLINIK PRATAMA BNN KOTA MALANG', '1 Bulan', 'Ada', '2018'),
(13, 17, 15, 13, '2000-05-26', 'KLINIK PRATAMA BNN KOTA MALANG', '1 Bulan', 'Ada', '2018'),
(14, 13, 4, 13, '2004-08-27', 'KLINIK PRATAMA BNN KOTA MALANG', '1 Bulan', 'Ada', '2018'),
(15, 402, 19, 25, '1993-05-21', 'BNNP', '1 Bulan', 'Ada', '2018'),
(16, 27, 2, 18, '1976-04-11', 'RST dr.SOEPRAOEN', '1 Bulan', 'Ada', '2018'),
(17, 28, 3, 13, '2001-01-14', 'KLINIK PRATAMA BNN KOTA MALANG', '1 Bulan', 'Ada', '2018'),
(18, 47, 3, 17, '1994-09-26', 'RST dr.SOEPRAOEN', '1 Bulan', 'Ada', '2018'),
(19, 44, 3, 17, '1995-05-31', 'RST dr.SOEPRAOEN', '1 Bulan', 'Ada', '2018'),
(21, 180, 16, 18, '1995-01-30', 'RSJ LAWANG', 'Tidak Diketahui', 'Tidak Ada', '2019'),
(22, 415, 20, 13, '2004-07-09', 'KLINIK PRATAMA BNN KOTA MALANG', '2 Bulan', 'Ada', '2019'),
(23, 406, 19, 17, '1998-01-09', 'KLINIK PRATAMA BNN KOTA MALANG', '2,5 Bulan', 'Ada', '2019'),
(25, 277, 15, 13, '2002-02-13', 'KLINIK PRATAMA BNN KOTA MALANG', '2,5 Bulan', 'Ada', '2019'),
(27, 19, 15, 13, '2001-11-26', 'RST SOEPRAOEN', '2 Bulan', 'Ada', '2019'),
(28, 25, 3, 18, '1994-03-07', 'KEDHATON PARAHITA - BOGOR', 'Tidak Diketahui', 'Tidak Ada', '2019'),
(29, 48, 3, 17, '1965-11-29', 'BALAI BESAR REHABILITASI LIDO', 'Tidak Diketahui', 'Ada', '2019'),
(30, 25, 3, 13, '2003-03-30', 'RST dr.SOEPRAOEN', '2 Bulan', 'Ada', '2019'),
(31, 25, 3, 13, '2003-01-15', 'KLINIK PRATAMA BNN KOTA MALANG', '2 Bulan', 'Ada', '2019'),
(32, 45, 3, 13, '2004-11-26', 'KLINIK PRATAMA BNN KOTA MALANG', '2 Minggu', 'Tidak Ada', '2019'),
(33, 11, 5, 13, '2001-07-27', 'KLINIK PRATAMA BNN KOTA MALANG', '1 Bulan', 'Tidak Ada', '2019'),
(34, 26, 5, 20, '1981-07-02', 'KLINIK PRATAMA BNN KOTA MALANG', '2,5 Bulan', 'Ada', '2019'),
(35, 26, 5, 13, '2004-09-26', 'RST dr.SOEPRAOEN', '2 Bulan', 'Ada', '2019'),
(36, 26, 5, 13, '2003-06-09', 'RST dr.SOEPRAOEN', '2 Bulan', 'Ada', '2019'),
(37, 26, 5, 13, '2003-11-18', 'KLINIK PRATAMA BNN KOTA MALANG', '2 Minggu', 'Tidak Ada', '2019'),
(45, 38, 2, 13, '2001-05-09', 'KLINIK PRATAMA BNN KOTA MALANG', '1 Bulan', 'Tidak Ada', '2019'),
(46, 34, 2, 13, '1999-09-24', 'KLINIK PRATAMA BNN KOTA MALANG', '3 Minggu', 'Tidak Ada', '2019'),
(47, 23, 2, 21, '1994-08-02', 'RSJ LAWANG', 'Tidak Diketahui', 'Tidak Ada', '2019'),
(48, 23, 2, 17, '1980-12-09', 'KLINIK PRATAMA BNN KOTA MALANG', '2 Bulan', 'Ada', '2019'),
(49, 23, 2, 21, '2001-07-02', 'PONPES SALAFIYAH SABILUL HIKMAH', '2,5 Bulan', 'Ada', '2019'),
(50, 23, 2, 21, '2004-02-01', 'PONPES SALAFIYAH SABILUL HIKMAH', '2,5 Bulan', 'Ada', '2019'),
(51, 23, 2, 21, '2003-02-25', 'PONPES SALAFIYAH SABILUL HIKMAH', '2,5 Bulan', 'Ada', '2019'),
(52, 23, 2, 18, '1999-12-20', 'PONPES SALAFIYAH SABILUL HIKMAH', '2,5 Bulan', 'Ada', '2019'),
(53, 37, 2, 21, '2004-05-09', 'PONPES SALAFIYAH SABILUL HIKMAH', '2,5 Bulan', 'Ada', '2019'),
(54, 23, 2, 17, '2002-10-23', 'PONPES SALAFIYAH SABILUL HIKMAH', '2,5 Bulan', 'Ada', '2019'),
(55, 23, 2, 22, '2002-07-27', 'PONPES SALAFIYAH SABILUL HIKMAH', '2,5 Bulan', 'Ada', '2019'),
(56, 6, 4, 23, '1993-06-15', 'KLINIK PRATAMA BNN KOTA MALANG', '3 Bulan', 'Ada', '2019'),
(57, 7, 4, 17, '1973-02-09', 'RSJ LAWANG', 'Tidak Diketahui', 'Tidak Ada', '2019'),
(58, 53, 4, 17, '1997-05-21', 'RSI UNISMA', '2 Bulan', 'Tidak Ada', '2019'),
(59, 55, 4, 0, '2003-08-14', 'RST dr.SOEPRAOEN', '2 Bulan', 'Ada', '2019'),
(60, 7, 4, 13, '2002-01-12', 'KLINIK PRATAMA BNN KOTA MALANG', '2 Bulan', 'Ada', '2019'),
(61, 55, 4, 13, '2004-03-10', 'KLINIK PRATAMA BNN KOTA MALANG', '2 Bulan', 'Ada', '2019'),
(62, 56, 4, 13, '2004-07-31', 'KLINIK PRATAMA BNN KOTA MALANG', '2 Bulan', 'Ada', '2019'),
(63, 53, 4, 13, '2004-08-18', 'RSI UNISMA', '2 Bulan', 'Tidak Ada', '2019'),
(64, 7, 4, 17, '2001-11-20', 'PONPES SALAFIYAH SABILUL HIKMAH', '2,5 Bulan', 'Ada', '2019'),
(65, 13, 4, 17, '2002-12-28', 'PONPES SALAFIYAH SABILUL HIKMAH', '2,5 Bulan', 'Ada', '2019'),
(66, 15, 4, 17, '2000-07-02', 'PONPES SALAFIYAH SABILUL HIKMAH', '2,5 Bulan', 'Ada', '2019'),
(67, 14, 4, 17, '1988-02-22', 'PONPES SALAFIYAH SABILUL HIKMAH', '2,5 Bulan', 'Ada', '2019'),
(68, 13, 4, 16, '2002-11-24', 'PONPES SALAFIYAH SABILUL HIKMAH', '2,5 Bulan', 'Ada', '2019'),
(69, 56, 4, 24, '2002-06-05', 'PONPES SALAFIYAH SABILUL HIKMAH', '2,5 Bulan', 'Ada', '2019'),
(71, 18, 15, 13, '2001-06-25', 'RSI UNISMA', '1 Bulan', 'Tidak Ada', '2018'),
(72, 19, 15, 13, '2001-06-19', 'RST dr.SOEPRAOEN', '1 Bulan', 'Ada', '2018'),
(73, 18, 15, 13, '2001-12-06', 'RSI UNISMA', '1 Bulan', 'Tidak Ada', '2018'),
(74, 277, 15, 13, '2001-03-16', 'RSI UNISMA', '1 Bulan', 'Tidak Ada', '2018'),
(75, 18, 15, 13, '2002-05-02', 'RSI UNISMA', '1 Bulan', 'Tidak Ada', '2018'),
(76, 333, 17, 13, '1999-12-25', 'KLINIK PRATAMA BNN KOTA MALANG', '1 Bulan', 'Ada', '2018'),
(77, 333, 17, 13, '2000-10-03', 'KLINIK PRATAMA BNN KOTA MALANG', 'Tidak Diketahui', 'Tidak Ada', '2018'),
(78, 336, 17, 13, '2000-10-26', 'KLINIK PRATAMA BNN KOTA MALANG', '1 Bulan', 'Ada', '2018'),
(79, 338, 17, 13, '2000-02-19', 'KLINIK PRATAMA BNN KOTA MALANG', '1 Bulan', 'Ada', '2018'),
(81, 323, 17, 13, '1998-10-17', 'KLINIK PRATAMA BNN KOTA MALANG', 'Tidak Diketahui', 'Tidak Ada', '2018'),
(82, 330, 17, 13, '2001-02-22', 'KLINIK PRATAMA BNN KOTA MALANG', 'Tidak Diketahui', 'Tidak Ada', '2018'),
(83, 334, 17, 13, '2001-02-16', 'RSI UNISMA', '1 Bulan', 'Tidak Ada', '2018'),
(84, 334, 17, 13, '1998-12-08', 'RSI UNISMA', '1 Bulan', 'Tidak Ada', '2018'),
(85, 323, 17, 13, '2000-11-27', 'KLINIK PRATAMA BNN KOTA MALANG', '1 Bulan', 'Ada', '2018'),
(86, 337, 17, 13, '2001-07-15', 'RSI UNISMA', '1 Bulan', 'Tidak Ada', '2018'),
(87, 323, 17, 13, '2002-01-16', 'KLINIK PRATAMA BNN KOTA MALANG', '1 Bulan', 'Ada', '2018'),
(88, 322, 17, 13, '1999-05-29', 'KLINIK PRATAMA BNN KOTA MALANG', '1 Bulan', 'Ada', '2018'),
(89, 226, 24, 13, '2002-02-03', 'KLINIK PRATAMA BNN KOTA MALANG', '1 Bulan', 'Ada', '2018'),
(90, 226, 24, 13, '2001-06-29', 'KLINIK PRATAMA BNN KOTA MALANG', '1 Bulan', 'Ada', '2018'),
(91, 221, 24, 13, '2001-11-06', 'KLINIK PRATAMA BNN KOTA MALANG', '1 Bulan', 'Ada', '2018'),
(92, 220, 24, 13, '2002-05-22', 'KLINIK PRATAMA BNN KOTA MALANG', '1 Bulan', 'Ada', '2018'),
(93, 229, 24, 13, '2000-08-29', 'KLINIK PRATAMA BNN KOTA MALANG', '1 Bulan', 'Ada', '2018'),
(94, 230, 24, 13, '2000-05-02', 'KLINIK PRATAMA BNN KOTA MALANG', '1 Bulan', 'Ada', '2018'),
(95, 231, 24, 13, '1999-06-03', 'RST dr.SOEPRAOEN', '1 Bulan', 'Ada', '2018'),
(96, 221, 24, 13, '2000-01-10', 'KLINIK PRATAMA BNN KOTA MALANG', '1 Bulan', 'Ada', '2018'),
(99, 2, 1, 13, '2002-03-06', 'KLINIK PRATAMA BNN KOTA MALANG', 'Tidak Diketahui', 'Tidak Ada', '2018'),
(100, 19, 15, 13, '2003-12-30', 'KLINIK PRATAMA BNN KOTA MALANG', '2 Bulan', 'Ada', '2019'),
(102, 8, 1, 13, '2001-09-04', 'KLINIK PRATAMA BNN KOTA MALANG', '2,5 Bulan', 'Ada', '2019'),
(103, 9, 1, 13, '2002-12-08', 'KLINIK PRATAMA BNN KOTA MALANG', '2,5 Bulan', 'Ada', '2019'),
(104, 9, 1, 13, '2000-06-24', 'KLINIK PRATAMA BNN KOTA MALANG', '2,5 Bulan', 'Ada', '2019'),
(105, 10, 1, 13, '2003-01-13', 'RSI UNISMA', '2 Bulan', 'Tidak Ada', '2019'),
(106, 9, 1, 13, '2002-04-30', 'RSI UNISMA', '2 Bulan', 'Tidak Ada', '2019'),
(107, 9, 1, 13, '2002-12-20', 'RSI UNISMA', '2 Bulan', 'Tidak Ada', '2019'),
(108, 10, 1, 17, '2003-08-14', 'PONPES SALAFIYAH SABILUL HIKMAH', '2,5 Bulan', 'Ada', '2019'),
(109, 9, 1, 13, '1997-06-20', 'KLINIK PRATAMA BNN KOTA MALANG', '1 Bulan', 'Ada', '2018'),
(110, 2, 1, 13, '2001-01-13', 'KLINIK PRATAMA BNN KOTA MALANG', 'Tidak Diketahui', 'Tidak Ada', '2018'),
(111, 1, 1, 19, '1999-03-14', 'KLINIK PRATAMA BNN KOTA MALANG', '1 Bulan', 'Ada', '2018'),
(112, 2, 1, 13, '2001-05-22', 'RSI UNISMA', '1 Bulan', 'Tidak Ada', '2018'),
(113, 2, 1, 13, '2001-09-28', 'RSI UNISMA', 'Tidak Diketahui', 'Tidak Ada', '2018'),
(114, 2, 1, 13, '2001-07-08', 'RSI UNISMA', '1 Bulan', 'Tidak Ada', '2018'),
(115, 2, 1, 13, '2000-10-16', 'RSI UNISMA', '1 Bulan', 'Tidak Ada', '2018'),
(116, 1, 1, 13, '2002-02-28', 'RSI UNISMA', '1 Bulan', 'Tidak Ada', '2018'),
(117, 1, 1, 13, '2002-06-03', 'RSI UNISMA', '1 Bulan', 'Tidak Ada', '2018'),
(118, 8, 1, 19, '1995-10-05', 'RST dr.SOEPRAOEN', '1 Bulan', 'Ada', '2018'),
(119, 33, 1, 19, '1996-05-30', 'RST dr.SOEPRAOEN', '1 Bulan', 'Ada', '2018');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pecandu`
--

CREATE TABLE `tb_pecandu` (
  `id_pecandu` int(11) NOT NULL,
  `jenis_kelamin` varchar(12) NOT NULL,
  `usia` int(11) NOT NULL,
  `id_pekerjaan` int(11) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `id_kelurahan` int(11) NOT NULL,
  `id_kecamatan` int(11) NOT NULL,
  `jenis_narkoba` varchar(255) NOT NULL,
  `id_tahapan` int(11) NOT NULL,
  `lembaga_rehab` varchar(255) NOT NULL,
  `tahun` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pecandu`
--

INSERT INTO `tb_pecandu` (`id_pecandu`, `jenis_kelamin`, `usia`, `id_pekerjaan`, `alamat`, `id_kelurahan`, `id_kecamatan`, `jenis_narkoba`, `id_tahapan`, `lembaga_rehab`, `tahun`) VALUES
(3, 'Laki-laki', 18, 13, 'Jl. Akordion Tunggulwulung No.6 Blok 9', 6, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(5, 'Laki-laki', 17, 13, 'Jl. Puntodewa Selatan', 20, 1, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(6, 'Perempuan', 18, 13, 'Jl. Kol Sugiono XI No.2', 21, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(7, 'Perempuan', 19, 13, 'Perum Sukun Pondok Indah P.16', 22, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(8, 'Laki-laki', 19, 13, 'Jl. Kolonel Sugiono', 21, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(9, 'Perempuan', 18, 13, 'Jl. Muharto Gang 7', 23, 2, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(10, 'Laki-laki', 18, 13, 'Jl. Embung Brantas Gang II', 24, 3, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(11, 'Laki-laki', 16, 13, 'Jl. Brigjen Slamet Riadi Gang 7/21', 25, 3, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(14, 'Perempuan', 18, 13, 'Jl. Veteran', 5, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(15, 'Laki-laki', 17, 13, 'Jl. Kaliurang No. 23', 7, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(18, 'Perempuan', 17, 13, 'Jl. Kedawung 9 No.9', 56, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(19, 'Perempuan', 17, 13, 'Perum Villa Bukit Tidar A4', 12, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(20, 'Laki-laki', 17, 13, 'Jl. Sudimoro Utara', 13, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(21, 'Laki-laki', 20, 13, 'Jl. Sudimoro', 13, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(22, 'Laki-laki', 19, 13, 'Jl. Terusan Piranha Atas', 14, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(23, 'Laki-laki', 17, 13, 'Jl. KH. Yusuf', 15, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(24, 'Perempuan', 18, 13, 'Jl. Bulutangkis', 15, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(25, 'Perempuan', 17, 13, 'Jl. Balean Barat No.62', 7, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(26, 'Laki-laki', 18, 13, 'Jl. Sudimoro No.49', 13, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(27, 'Laki-laki', 17, 13, 'Jl. MT. Haryono', 52, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(28, 'Laki-laki', 17, 13, 'Jl. Kenanga Indah', 53, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(29, 'Perempuan', 17, 13, 'Jl. Sudimoro No.15', 13, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(30, 'Perempuan', 17, 13, 'Jl. KH. Yusuf 78', 15, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(31, 'Laki-laki', 17, 13, 'Jl. Kendalsari Gg. 1 No.34', 56, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(32, 'Laki-laki', 17, 13, 'Jl. Simpang Akordeon', 6, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(33, 'Laki-laki', 16, 13, 'Jl. Letjen Sutoyo', 7, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(34, 'Perempuan', 18, 13, 'Jl. Bunga Vinolia', 53, 4, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2019'),
(35, 'Laki-laki', 18, 13, 'Jl. Bylira Rt.02 Rw.05', 6, 4, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2019'),
(36, 'Laki-laki', 17, 13, 'Jl. Ikan Tombro', 14, 4, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2019'),
(37, 'Perempuan', 17, 13, 'Jl. Selorejo B No.17', 7, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(38, 'Perempuan', 19, 13, 'Jl. Selorejo No.39A', 7, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(39, 'Laki-laki', 19, 13, 'Jl. Semanggi Barat No.13', 53, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(40, 'Laki-laki', 16, 13, 'Jl. Kendalsari Gg. V', 56, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(41, 'Perempuan', 18, 13, 'Jl. Bendungan Sutami', 5, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(42, 'Laki-laki', 20, 13, 'Jl. Tlogo Joyo No.17', 55, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(43, 'Perempuan', 20, 13, 'Jl. Joyo Taman Sari', 12, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(44, 'Perempuan', 19, 13, 'Jl. MT Haryono Gg. I', 52, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(45, 'Perempuan', 19, 13, 'Jl. Joyo Pranoto No.685', 12, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(46, 'Laki-laki', 19, 13, 'Jl. Kanjuruhan No.10', 55, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(47, 'Laki-laki', 19, 13, 'Jl. Kerto Asri No.28', 54, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(48, 'Laki-laki', 20, 13, 'Jl. Joyo Raharjo Gg. V', 12, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(49, 'Perempuan', 18, 13, 'Jl. Kertosentono No.123', 54, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(50, 'Laki-laki', 17, 13, 'Jl. Cengger Ayam Dalam III', 56, 4, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2018'),
(51, 'Laki-laki', 14, 13, 'Jl. Gilimanuk', 7, 4, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2018'),
(52, 'Perempuan', 15, 13, 'Jl. Ikan Piranha Atas', 14, 4, 'Obat-obatan (Antimo), Miras', 2, 'BNN Kota Malang', '2018'),
(53, 'Laki-laki', 13, 13, 'Jl. Sigura - Gura No.1', 5, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(54, 'Laki-laki', 13, 13, 'Jl. Kendalsari Gg. 1 No.8', 56, 4, 'Bigcola, Antimo, Autan, Ciu', 2, 'BNN Kota Malang', '2019'),
(55, 'Laki-laki', 13, 13, 'Jl. Sigura - Gura No.1', 5, 4, 'LL (Triheksifenidil Hcl), Bigcola, Autan, Antimo, Mix Max', 2, 'BNN Kota Malang', '2019'),
(56, 'Laki-laki', 15, 13, 'Jl. Tlogo Joyo No.7', 55, 4, 'LL (Triheksifenidil Hcl), Ganja, Miras', 2, 'BNN Kota Malang', '2018'),
(57, 'Laki-laki', 17, 13, 'Jl. Bantaran Gg. V E', 56, 4, 'LL (Triheksifenidil Hcl), Ganja, Topi Miring, Rokok', 2, 'BNN Kota Malang', '2018'),
(58, 'Laki-laki', 14, 13, 'Jl. Terusan Sudimoro', 13, 4, 'LL (Triheksifenidil Hcl), Tramadol, Ganja, Arak, Rokok', 2, 'BNN Kota Malang', '2018'),
(59, 'Perempuan', 17, 13, 'Jl. Bunga Vinolia Gg. II No.21', 53, 4, 'Bintang  Zero, LL (Triheksifenidil Hcl), Bir Bintang, Antimo, Arak, Bigcola, Yakult, Alkohol', 2, 'BNN Kota Malang', '2018'),
(60, 'Laki-laki', 14, 13, 'Jl. Sudimoro No.5', 13, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(61, 'Laki-laki', 14, 13, 'Jl. Cengger Ayam No.25', 56, 4, 'LL (Triheksifenidil Hcl), Bir Bintang', 2, 'BNN Kota Malang', '2018'),
(62, 'Perempuan', 14, 13, 'Jl. Kerto Asri No.11', 54, 4, 'LL (Triheksifenidil Hcl), Antimo', 2, 'BNN Kota Malang', '2018'),
(63, 'Laki-laki', 20, 13, 'Jl. Vinolia Gg. III No.11', 53, 4, 'LL (Triheksifenidil Hcl), Arak, Topi Miring, Rokok', 2, 'BNN Kota Malang', '2018'),
(64, 'Laki-laki', 15, 13, 'Jl. Joyo Utomo No.512', 12, 4, 'LL (Triheksifenidil Hcl), Mc.Donald, Bogcola, Bir Bintang', 2, 'BNN Kota Malang', '2018'),
(65, 'Perempuan', 16, 13, 'Jl. Candi Badut', 13, 4, 'LL (Triheksifenidil Hcl), Antimo', 2, 'BNN Kota Malang', '2018'),
(66, 'Perempuan', 19, 13, 'Jl. MT. Haryono Gg. 13 No.435', 52, 4, 'LL (Triheksifenidil Hcl), Bir Bintang', 2, 'BNN Kota Malang', '2018'),
(67, 'Laki-laki', 20, 13, 'Jl. Kendalsari', 56, 4, 'LL (Triheksifenidil Hcl), Kecubung, Ganja', 2, 'BNN Kota Malang', '2019'),
(68, 'Perempuan', 20, 13, 'Jl. Selorejo C No.5', 7, 4, 'LL (Triheksifenidil Hcl), MCDonald', 2, 'BNN Kota Malang', '2019'),
(69, 'Laki-laki', 16, 13, 'Jl. Perum Joyo Grand', 12, 4, 'Antimo, Arak, Bigcola', 2, 'BNN Kota Malang', '2019'),
(70, 'Perempuan', 20, 13, 'Jl. Selorejo C No.5', 7, 4, 'LL (Triheksifenidil Hcl), MCDonald', 2, 'BNN Kota Malang', '2019'),
(71, 'Laki-laki', 19, 13, 'Jl. Kendalsari', 56, 4, 'LL (Triheksifenidil Hcl), Anggur Merah, Arak', 2, 'BNN Kota Malang', '2019'),
(72, 'Laki-laki', 15, 13, 'Jl. Selorejo No.38', 7, 4, 'LL (Triheksifenidil Hcl), Bir', 2, 'BNN Kota Malang', '2019'),
(73, 'Perempuan', 14, 13, 'Jl. Candi Panggung', 13, 4, 'Antimo, Arak', 2, 'BNN Kota Malang', '2019'),
(74, 'Laki-laki', 16, 13, 'Jl. Bougenville Bawah', 53, 4, 'LL (Triheksifenidil Hcl), Arak, Bigcola', 2, 'BNN Kota Malang', '2019'),
(75, 'Laki-laki', 15, 13, 'Jl. Taman Kemangi No.6', 7, 4, 'LL (Triheksifenidil Hcl), Miras Visab', 2, 'BNN Kota Malang', '2019'),
(76, 'Laki-laki', 15, 13, 'Jl. Kendalsari III No.12', 56, 4, 'LL (Triheksifenidil Hcl), Arak, Bigcola', 2, 'BNN Kota Malang', '2019'),
(77, 'Perempuan', 14, 13, 'Jl. Kendalsari Gg. V No.19', 56, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(78, 'Laki-laki', 19, 13, 'Jl. Sudimoro No.10', 13, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(79, 'Laki-laki', 20, 13, 'Jl. Kedawung No.10', 56, 4, 'LL (Triheksifenidil Hcl), Anggur Merah', 2, 'BNN Kota Malang', '2018'),
(80, 'Laki-laki', 19, 13, 'Jl. Terusan Borobudur', 13, 4, 'LL (Triheksifenidil Hcl), Miras, TM', 2, 'BNN Kota Malang', '2018'),
(81, 'Laki-laki', 19, 13, 'Jl. Kendalsari III', 56, 4, 'LL (Triheksifenidil Hcl), Miras Topi Miring', 2, 'BNN Kota Malang', '2018'),
(82, 'Laki-laki', 16, 13, 'Jl. Soekarno - Hatta No.5', 13, 4, 'Ganja, LL (Triheksifenidil Hcl), Miras Topi Miring, Bir Bintang, Arak', 2, 'BNN Kota Malang', '2018'),
(83, 'Laki-laki', 14, 13, 'Jl. Nusa Indah Atas', 53, 4, 'LL (Triheksifenidil Hcl), Arak', 2, 'BNN Kota Malang', '2018'),
(84, 'Laki-laki', 18, 13, 'Jl. Joyo Utomo', 12, 4, 'Ganja, LL (Triheksifenidil Hcl), Antimo, Arak', 2, 'BNN Kota Malang', '2018'),
(85, 'Perempuan', 18, 13, 'Jl. Kertosentono No.11', 54, 4, 'LL (Triheksifenidil Hcl), Miras, Rokok', 2, 'BNN Kota Malang', '2018'),
(86, 'Perempuan', 19, 13, 'Jl. Bunga Kumis Kucing Dalam No.3', 53, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(87, 'Perempuan', 19, 13, 'Jl. Semanggi Timur', 53, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(88, 'Perempuan', 20, 13, 'Jl. Wijaya Kusuma No.2', 7, 4, 'Miras, Rokok', 2, 'BNN Kota Malang', '2018'),
(89, 'Perempuan', 19, 13, 'Jl. Piranha Atas Sel. No.2', 14, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(90, 'Perempuan', 19, 13, 'JL. MT Haryono Gg. 12', 52, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(91, 'Perempuan', 18, 13, 'Kendalsari Gg. 1 No.93', 56, 4, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(92, 'Laki-laki', 18, 13, 'Jl. Sudimoro', 13, 4, 'LL (Triheksifenidil Hcl), Arak', 2, 'BNN Kota Malang', '2019'),
(93, 'Laki-laki', 18, 13, 'Jl. Terusan Surabaya No.81', 5, 4, 'Alkohol', 2, 'BNN Kota Malang', '2019'),
(94, 'Laki-laki', 43, 17, 'Perumahan Griya Sejahtera LPK 1', 6, 4, 'Ganja, Sabu-sabu, Inex, Daftar G, Bufrenofin', 1, 'Corpus Christi', '2018'),
(95, 'Laki-laki', 43, 18, 'Jl. Candi Telaga Wangi No.64b', 13, 4, 'Putaw, Ganja, Sabu-sabu, Alprazolam, Metadon', 1, 'Corpus Christi', '2018'),
(96, 'Laki-laki', 34, 17, 'Jl. Ikan Mas II No.1', 14, 4, 'Ganja, Sabu-sabu, Subuxone, Alprazolam', 1, 'RSK Hayunanto Medical Center', '2019'),
(97, 'Laki-laki', 19, 13, 'Jl. Kenangan Indah', 53, 4, 'LL (Triheksifenidil Hcl), Alkohol', 2, 'RSK Hayunanto Medical Center', '2019'),
(98, 'Laki-laki', 19, 13, 'Jl. Sumbersari Gg. III No.146', 5, 4, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2019'),
(99, 'Laki-laki', 16, 13, 'Jl. Tlogo Suryo Gang V', 55, 4, 'LL (Triheksifenidil Hcl), Alkohol', 2, 'RSK Hayunanto Medical Center', '2018'),
(100, 'Laki-laki', 18, 13, 'Jl.Manggar', 7, 4, 'LL (Triheksifenidil Hcl), Alkohol, Tramadol', 2, 'RSK Hayunanto Medical Center', '2018'),
(101, 'Laki-laki', 17, 13, 'Jl. Mt. Haryono IV ', 52, 4, 'LL (Triheksifenidil Hcl), Alkohol', 2, 'RSK Hayunanto Medical Center', '2018'),
(102, 'Laki-laki', 16, 13, 'Jl. Mayjen.M.Wiyono Asrama Dodikjur Blok K', 20, 1, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2019'),
(103, 'Laki-laki', 17, 13, 'JL Tariku, Perumahan Bunul Asri Blok B No. 61', 30, 1, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(104, 'Laki-laki', 17, 13, 'Jl. Ir. H. Juanda No.35', 31, 1, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(105, 'Laki-laki', 17, 13, 'Jl. Werkudoro', 20, 1, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(106, 'Laki-laki', 17, 13, 'Jl. Werkudoro', 20, 1, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(107, 'Laki-laki', 17, 13, 'Jl. Narotama', 32, 1, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(108, 'Laki-laki', 19, 13, 'Jl. Binor III', 30, 1, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(109, 'Laki-laki', 12, 13, 'Jl. Pulosari 1', 9, 1, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(110, 'Laki-laki', 17, 13, 'Jl. Tlk. Pelabuhan Ratu 1 No.36', 1, 1, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(111, 'Laki-laki', 17, 13, 'Jl. Pulosari 1', 9, 1, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(112, 'Laki-laki', 19, 13, 'Jl. Bango', 30, 1, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(113, 'Laki-laki', 19, 13, 'Jl. Laksda Adi Sucipto', 29, 1, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(114, 'Laki-laki', 17, 13, 'Jl. Sumpil 1 No.34', 9, 1, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(115, 'Laki-laki', 17, 13, 'Jl. Laksda Adi Sucipto No.144', 29, 1, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(116, 'Perempuan', 19, 13, 'Jl. Plaosan Bar. No.58', 29, 1, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(117, 'Laki-laki', 17, 13, 'Jl. Terusan Batu bara No.9', 8, 1, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(118, 'Laki-laki', 18, 13, 'Jl. Letjen S. Parman Gg. IV No.27', 33, 1, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(119, 'Laki-laki', 16, 13, 'Jl. Plaosan Bar. No.13', 9, 1, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(120, 'Laki-laki', 16, 13, 'Jl. Letjend S. Parman', 33, 1, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2019'),
(121, 'Laki-laki', 16, 13, 'Jl. Simpang L.A. Sucipto No.159', 8, 1, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(122, 'Laki-laki', 17, 13, 'Jl. Teluk Grajakan Gang IV No.47', 8, 1, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(123, 'Laki-laki', 17, 13, 'Jl. LA Sucipto Gg. Makam ', 8, 1, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(124, 'Laki-laki', 18, 13, 'Jl. Tlk. Grajakan No.12', 8, 1, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(125, 'Laki-laki', 18, 13, 'Jl. R No.11', 8, 1, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(126, 'Laki-laki', 18, 13, 'Jl. Muharto No.5', 31, 1, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(127, 'Laki-laki', 20, 13, 'Jl. Muharto', 31, 1, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(129, 'Perempuan', 20, 13, 'Jl.Untung Suropati Selatan', 32, 1, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(130, 'Perempuan', 18, 13, 'Jl. Untung Suropati Selatan', 32, 1, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(131, 'Laki-laki', 18, 13, 'Jl. Muharto Gg. 8', 31, 1, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(132, 'Laki-laki', 15, 13, 'Jl. Gatot Subroto Gang 4', 31, 1, 'Arak, Bigcola', 2, 'BNN Kota Malang', '2019'),
(133, 'Laki-laki', 13, 13, 'Jl. Perum Ikan Nila Indah', 9, 1, 'Bigcola, Autan, Arak', 2, 'BNN Kota Malang', '2019'),
(134, 'Laki-laki', 13, 13, 'Jl. Muharto Gg. 2', 31, 1, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(135, 'Perempuan', 15, 13, 'Jl. Bantaran', 33, 1, 'LL (Triheksifenidil Hcl), Rokok', 2, 'BNN Kota Malang', '2019'),
(136, 'Laki-laki', 18, 13, 'Jl. Sumpil Gg. 2 No.81', 9, 1, 'LL (Triheksifenidil Hcl), Arak Ketapang, Bigcola, Badheg', 2, 'BNN Kota Malang', '2019'),
(137, 'Laki-laki', 17, 13, 'Jl. Sisingamangaraja', 30, 1, 'LL (Triheksifenidil Hcl), Ganja', 2, 'BNN Kota Malang', '2018'),
(138, 'Laki-laki', 14, 13, 'Jl. Sebuku', 30, 1, 'LL (Triheksifenidil Hcl), Ganja, Topi Miring', 2, 'BNN Kota Malang', '2018'),
(139, 'Laki-laki', 19, 13, 'Jl. Bantaran', 33, 1, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(140, 'Laki-laki', 20, 13, 'Jl. Sebuku No.16', 30, 1, 'LL (Triheksifenidil Hcl), Bir Oplosan', 2, 'BNN Kota Malang', '2018'),
(141, 'Laki-laki', 18, 13, 'Jl. Marmer No.23', 33, 1, 'LL (Triheksifenidil Hcl), Topi Miring', 2, 'BNN Kota Malang', '2018'),
(142, 'Laki-laki', 18, 13, 'JL. Bauksit No.48', 33, 1, 'Ganja, LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(143, 'Laki-laki', 16, 13, 'Jl. Sulfat No.5', 33, 1, 'Miras Arak, Ganja, LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(144, 'Laki-laki', 17, 13, 'Jl. Sebuku II No.02', 30, 1, 'LL (Triheksifenidil Hcl), Ganja, Miras, Arak, Topi Miring', 2, 'BNN Kota Malang', '2018'),
(145, 'Laki-laki', 16, 13, 'Jl. Sebuku Gg. Rw. No.8', 30, 1, 'Ganja, LL (Triheksifenidil Hcl), Miras, TM, Vodca', 2, 'BNN Kota Malang', '2018'),
(146, 'Laki-laki', 16, 13, 'Jl. Perunggu Sel. No.54', 33, 1, 'Ganja, Miras Arak, LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(147, 'Laki-laki', 16, 13, 'Jl. Sebuku 2', 30, 1, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(148, 'Laki-laki', 18, 13, 'Jl. Terusan Sulfat Selatan', 8, 1, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2019'),
(149, 'Laki-laki', 15, 13, 'Jl. Sulfat Agung VIII No.49', 8, 1, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2019'),
(150, 'Laki-laki', 16, 13, 'Jl. Terusan Titan V', 33, 1, 'LL (Triheksifenidil Hcl), Rokok', 2, 'BNN Kota Malang', '2019'),
(151, 'Perempuan', 19, 13, 'Jl. Pahlawan', 2, 1, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(152, 'Perempuan', 15, 13, 'Jl. Temenggungan Ledok', 32, 1, 'Miras, Rokok', 2, 'BNN Kota Malang', '2019'),
(153, 'Laki-laki', 37, 18, 'Jalan Ciliwung Gg. Rw. No.13', 30, 1, 'Benzo, Ganja, Sabu-sabu', 1, 'RSJ Lawang', '2019'),
(154, 'Laki-laki', 19, 13, 'Jl. Panglima Sudirman', 32, 1, 'LL (Triheksifenidil Hcl), Arak', 3, 'Sadar Hati', '2018'),
(155, 'Laki-laki', 20, 13, 'Jl. Jodipan Wetan Gg. 4', 31, 1, 'LL (Triheksifenidil Hcl), Arak', 3, 'Sadar Hati', '2018'),
(156, 'Laki-laki', 19, 13, 'Jl.Plaosan Timur No.111', 9, 1, 'LL (Triheksifenidil Hcl), Arak', 2, 'BNN Kota Malang', '2018'),
(157, 'Laki-laki', 20, 13, 'Jl. Tembaga No.47', 33, 1, 'LL (Triheksifenidil Hcl), Alkohol', 2, 'BNN Kota Malang', '2018'),
(158, 'Laki-laki', 38, 17, 'Jl. Laksda Adi Sucipto No.23', 29, 1, 'Alkohol, Metadon, Putau, Sabu-sabu', 1, 'RSK Hayunanto Medical Center', '2018'),
(160, 'Perempuan', 31, 16, 'Jl. Pospat No.39', 33, 1, 'LL (Triheksifenidil Hcl), Sabu-sabu, Antimo', 1, 'RSK Hayunanto Medical Center', '2019'),
(161, 'Laki-laki', 28, 21, 'Jl. Letjend S. Parman I', 33, 1, 'LL (Triheksifenidil Hcl), Sabu-sabu, Antimo', 3, 'RSK Hayunanto Medical Center', '2019'),
(162, 'Laki-laki', 19, 13, 'Jalan Ciliwung Gang I No.18 Kota Malang', 33, 1, 'Alkohol, Ganja, LL (Triheksifenidil Hcl)', 3, 'RSK Hayunanto Medical Center', '2019'),
(163, 'Laki-laki', 18, 13, 'Jl. Mangun Sartono III No.2438', 31, 1, 'LL (Triheksifenidil Hcl)', 3, 'RSK Hayunanto Medical Center', '2019'),
(164, 'Laki-laki', 18, 13, 'Jalan Muharto Gg. 8 No.3', 31, 1, 'LL (Triheksifenidil Hcl)', 3, 'RSK Hayunanto Medical Center', '2019'),
(165, 'Laki-laki', 16, 13, 'Jl. Hamid Rusdi Gang 2B Tuntang No.1', 30, 1, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2019'),
(166, 'Laki-laki', 16, 13, 'Jl. Nakula', 20, 1, 'LL (Triheksifenidil Hcl)', 3, 'RSK Hayunanto Medical Center', '2018'),
(167, 'Laki-laki', 14, 13, 'Jl. R Pandanwangi', 8, 1, 'LL (Triheksifenidil Hcl)', 3, 'RSK Hayunanto Medical Center', '2018'),
(168, 'Laki-laki', 17, 13, 'Jl. Laksda Adi Sucipto', 29, 1, 'LL (Triheksifenidil Hcl), Tramadol, Alkohol', 3, 'RSK Hayunanto Medical Center', '2018'),
(170, 'Laki-laki', 19, 13, 'Jl. Satsui Tubun', 61, 5, 'LL (Triheksifenidil Hcl), Antimo, Cukrik', 2, 'BNN Kota Malang', '2018'),
(171, 'Laki-laki', 19, 13, 'Jl. Klayatan Gg. 2', 22, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(172, 'Laki-laki', 14, 13, 'Bandulan', 58, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(173, 'Laki-laki', 19, 13, 'Jl. Rawisari', 26, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(174, 'Laki-laki', 18, 13, 'Jl. Janti Utara Gg. 5 No.4', 22, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(175, 'Laki-laki', 15, 13, 'Jl. Kemantren II', 22, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(176, 'Laki-laki', 16, 13, 'Jl. Satsuitubun ', 61, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(177, 'Laki-laki', 19, 13, 'Jl. S. Supriadi Gg. 4', 63, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(178, 'Laki-laki', 18, 13, 'Jl. Gadang Gg. 3', 21, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(179, 'Perempuan', 19, 13, 'Klayatan Gg. III', 22, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(180, 'Perempuan', 19, 13, 'Jl. Bandulan Gg. III', 58, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(181, 'Laki-laki', 18, 13, 'Jl. Peltu Sujono', 59, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(182, 'Laki-laki', 18, 13, 'Ngaglik Gg. 4b No.201', 11, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(184, 'Perempuan', 26, 17, 'Jl. LA Sucipto', 8, 1, 'Alkohol, Sabu-sabu', 1, 'RSK Hayunanto Medical Center', '2019'),
(185, 'Laki-laki', 17, 13, 'Jl. Kolonel Sugiono No.7', 21, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(186, 'Laki-laki', 19, 13, 'Jl. Mergan Sekolahan No.1', 11, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(187, 'Laki-laki', 18, 13, 'Perum. Pondok Cempaka Indah', 58, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(188, 'Perempuan', 18, 13, 'Jl. Pelabuhan Ketapang', 57, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(189, 'Laki-laki', 19, 13, 'Jl. Gadang Gg. VI', 21, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(190, 'Laki-laki', 19, 13, 'Jl. Terusan Mergan Raya 19', 11, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(191, 'Laki-laki', 18, 13, 'Jl. Rawisari', 26, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(192, 'Laki-laki', 18, 13, 'Jl. Kolonel Sugiono', 21, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(193, 'Perempuan', 14, 13, 'Jl. Kolonel Sugiono', 21, 5, 'Obat-obatan (Antimo)', 2, 'BNN Kota Malang', '2019'),
(194, 'Perempuan', 14, 13, 'Jl. Mergan Lori', 11, 5, 'Bigcola, Antimo, Bodrex', 2, 'BNN Kota Malang', '2019'),
(195, 'Laki-laki', 14, 13, 'Jl. Mergan Musholah', 11, 5, 'Bigcola, Antimo, Autan, Arak', 2, 'BNN Kota Malang', '2019'),
(196, 'Laki-laki', 18, 13, 'Jl. Bandulan', 58, 5, 'LL (Triheksifenidil Hcl), Arak', 2, 'BNN Kota Malang', '2019'),
(197, 'Laki-laki', 16, 13, 'Jl. S. Supriyadi', 22, 5, 'Ganja, LL (Triheksifenidil Hcl), Miras, Arak', 2, 'BNN Kota Malang', '2019'),
(198, 'Laki-laki', 17, 13, 'Jl. S. Supriyadi', 22, 5, 'Ganja, LL (Triheksifenidil Hcl), Miras, Arak, TM', 2, 'BNN Kota Malang', '2019'),
(199, 'Laki-laki', 18, 13, 'Jl. Pelabuhan Tanjung Priok', 57, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(200, 'Perempuan', 14, 13, 'Jl. S. Supriadi', 22, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(201, 'Perempuan', 14, 13, 'Jl. Ngaglik Gg.4', 11, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(202, 'Laki-laki', 14, 13, 'Jl. Pelabuhan Tanjung Priok', 57, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(203, 'Laki-laki', 15, 13, 'Jl. Klayatan Gang III No. 1', 22, 5, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2019'),
(204, 'Laki-laki', 15, 13, 'Jl. Klayatan Gg. III', 22, 5, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2019'),
(205, 'Laki-laki', 16, 13, 'Jl. Klayatan Gg. II', 22, 5, 'Ganja, LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2019'),
(206, 'Laki-laki', 13, 13, 'Perum Sukun Pondok Indah, Jl. Kemantren', 22, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(207, 'Laki-laki', 15, 13, 'Jl. Sukun Gempol', 11, 5, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2019'),
(208, 'Laki-laki', 14, 13, 'Perum Cempaka Indah', 58, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(209, 'Laki-laki', 15, 13, 'Jl. S. Supriadi Gang Mandala', 22, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(210, 'Perempuan', 16, 0, 'Jl. S. Supriadi', 22, 5, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2019'),
(211, 'Laki-laki', 15, 13, 'Jl. Krakatau No.10', 62, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(212, 'Laki-laki', 15, 13, 'Jl. Rawisari', 26, 5, 'LL (Triheksifenidil Hcl), Antimo, Miras, Arak, Topi Miring', 2, 'BNN Kota Malang', '2019'),
(213, 'Perempuan', 14, 13, 'Jl. Kemantren II', 22, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(214, 'Perempuan', 15, 13, 'Jl. Klayatan Gg. I', 22, 5, 'LL (Triheksifenidil Hcl), Miras, Arak', 2, 'BNN Kota Malang', '2019'),
(215, 'Laki-laki', 17, 13, 'Jl. Klayatan Gang III', 22, 5, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2019'),
(216, 'Laki-laki', 15, 13, 'Jl. Kemantren 2 RT: 02/RW: 03', 22, 5, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2019'),
(217, 'Laki-laki', 17, 13, 'Jl. Imam Sujono', 26, 5, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2019'),
(218, 'Laki-laki', 16, 13, 'Jl. Klayatan I No. 15', 22, 5, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2019'),
(219, 'Laki-laki', 16, 13, 'Jl. S. Supriadi Gg. 6', 63, 5, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2019'),
(220, 'Laki-laki', 16, 13, 'Jl. Sukun Gempol', 11, 5, 'LL (Triheksifenidil Hcl), Arak', 2, 'BNN Kota Malang', '2019'),
(221, 'Perempuan', 15, 13, 'Jl. Klayatan Gg. I', 22, 5, 'LL (Triheksifenidil Hcl), Miras, Arak', 2, 'BNN Kota Malang', '2019'),
(222, 'Laki-laki', 15, 13, 'l. Beringin No.13', 22, 5, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2019'),
(223, 'Perempuan', 15, 13, 'Ngaglik Gang 4B No.8', 11, 5, 'LL (Triheksifenidil Hcl), Antimo', 2, 'BNN Kota Malang', '2019'),
(224, 'Laki-laki', 15, 13, 'Jl. Klayatan III No.40', 22, 5, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2018'),
(225, 'Laki-laki', 14, 13, 'Jl. S.Supriadi 7B No.15c', 63, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(226, 'Perempuan', 16, 13, 'Jl. Rawisari No.35', 26, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(227, 'Laki-laki', 14, 13, 'Jl. Pelabuhan Ketapang 1', 57, 5, 'LL (Triheksifenidil Hcl), Miras, Arak, Kecobong, Topi Miring', 2, 'BNN Kota Malang', '2018'),
(228, 'Laki-laki', 13, 13, 'Jl. Kemantren Gang 3 Rt.4 Rw.13', 22, 5, 'LL (Triheksifenidil Hcl), Miras, TM', 2, 'BNN Kota Malang', '2018'),
(229, 'Laki-laki', 14, 13, 'Jl. Pelabuhan Ketapang', 57, 5, 'LL (Triheksifenidil Hcl), Antimo', 2, 'BNN Kota Malang', '2018'),
(230, 'Laki-laki', 14, 13, 'Jl. Tebo Utara', 58, 5, 'LL (Triheksifenidil Hcl), Miras, Bir Bintang, Arak', 2, 'BNN Kota Malang', '2018'),
(231, 'Laki-laki', 14, 13, 'Jl. Klayatan Gang I ', 22, 5, 'LL (Triheksifenidil Hcl), Arak', 2, 'BNN Kota Malang', '2018'),
(232, 'Laki-laki', 14, 13, 'Jl. Rawisari', 26, 5, 'LL (Triheksifenidil Hcl), Antimo', 2, 'BNN Kota Malang', '2018'),
(233, 'Perempuan', 14, 13, 'Jl. Kepuh Gg. 1', 22, 5, 'LL (Triheksifenidil Hcl), TM, Vodca, Arak, Bir Bintang', 2, 'BNN Kota Malang', '2018'),
(234, 'Perempuan', 14, 13, 'Jl. Pelabuhan Tj. Perak', 57, 5, 'Antimo', 2, 'BNN Kota Malang', '2018'),
(235, 'Laki-laki', 13, 13, 'Jl. Cindelaras', 26, 5, 'LL (Triheksifenidil Hcl), Antimo', 2, 'BNN Kota Malang', '2018'),
(236, 'Laki-laki', 15, 13, 'Jl. Bakalan Krajan', 57, 5, 'LL (Triheksifenidil Hcl), Arak Bali, Topi Miring', 2, 'BNN Kota Malang', '2018'),
(237, 'Laki-laki', 14, 13, 'Jl. Tebo Utara', 58, 5, 'LL (Triheksifenidil Hcl), Tramadol, Trondol, Arak, Bir Bintang', 2, 'BNN Kota Malang', '2018'),
(238, 'Laki-laki', 15, 13, 'Jl. Simpang Kepuh', 22, 5, 'LL (Triheksifenidil Hcl), Bir Bintang', 2, 'BNN Kota Malang', '2018'),
(239, 'Laki-laki', 14, 13, 'Jl. Keben Blok A No.9', 22, 5, 'LL (Triheksifenidil Hcl), Bir Bintang', 2, 'BNN Kota Malang', '2018'),
(240, 'Perempuan', 15, 13, 'Jl. Kemantren II', 22, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(241, 'Laki-laki', 14, 13, 'Jl. S. Supriadi No.34a', 22, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(242, 'Laki-laki', 14, 13, 'Perumahan Sukun Pondok Indah', 22, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(243, 'Laki-laki', 13, 13, 'Jl. Pelabuhan Ketapang No.2', 57, 5, 'LL (Triheksifenidil Hcl), Arak campur alkohol', 2, 'BNN Kota Malang', '2018'),
(244, 'Perempuan', 13, 13, 'Jl. Tebo Selatan Gang 1', 26, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(245, 'Laki-laki', 14, 13, 'Jl. Keben Blok A No.9', 22, 5, 'LL (Triheksifenidil Hcl), Bir Bintang', 2, 'BNN Kota Malang', '2019'),
(246, 'Laki-laki', 14, 13, 'Jl. Kepuh Gg. IX No.62', 22, 5, 'LL (Triheksifenidil Hcl), Antimo, Arak', 2, 'BNN Kota Malang', '2018'),
(247, 'Perempuan', 14, 13, 'Jl. Raya Sidorahayu', 57, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(248, 'Laki-laki', 14, 13, 'Jl. Pelabuhan Tanjung Priok Rt.01 Rw.03', 57, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(249, 'Laki-laki', 13, 13, 'Jl. Klayatan Gg. I No.17', 22, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(250, 'Laki-laki', 14, 13, 'Jl. Pelabuhan Tanjung Priok', 57, 5, 'LL (Triheksifenidil Hcl), Tramadol, Bir', 2, 'BNN Kota Malang', '2019'),
(251, 'Laki-laki', 16, 13, 'Jl. S. Supriadi Kepuh Gang VI', 22, 5, 'LL (Triheksifenidil Hcl), Antimo, Bintang Zero', 2, 'BNN Kota Malang', '2019'),
(252, 'Laki-laki', 14, 13, 'Jl. Rawisari', 26, 5, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2019'),
(253, 'Perempuan', 16, 13, 'Jl. S. Supriyadi', 22, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(254, 'Perempuan', 15, 13, 'Jl. Klayatan Gg. I No.27', 22, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(255, 'Laki-laki', 13, 13, 'Jl.Kemantren III', 22, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(256, 'Laki-laki', 13, 13, 'Jl. Pelabuhan Ketapang 1', 57, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(257, 'Laki-laki', 13, 13, 'Jl. Klayatan II No.31', 22, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(258, 'Laki-laki', 15, 13, 'Jl. Tj. Putra Yudha 4 No.16', 11, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(259, 'Laki-laki', 16, 13, 'Jl. Simpang Kepuh', 22, 5, 'LL (Triheksifenidil Hcl), Antimo, Miras', 2, 'BNN Kota Malang', '2019'),
(260, 'Laki-laki', 16, 13, 'Jl. Pelabuhan Tj. Perak', 57, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(261, 'Perempuan', 14, 13, 'Jl. Pelabuhan Tanjung Priok', 57, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(262, 'Laki-laki', 15, 0, 'Jl. Klayatan Gg. II', 22, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(263, 'Laki-laki', 14, 13, 'Jl. Artowijoyo No.27', 26, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(264, 'Perempuan', 13, 13, 'Jl. Bandulan Gg.8', 58, 5, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2019'),
(265, 'Laki-laki', 15, 13, 'Jl. Pelabuhan Ketapang', 57, 5, 'LL (Triheksifenidil Hcl), Rokok', 2, 'BNN Kota Malang', '2019'),
(266, 'Laki-laki', 16, 13, 'Jl. Pelabuhan Ketapang', 57, 5, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2019'),
(267, 'Laki-laki', 16, 13, 'Jl. S. Supriadi Gg. 6', 63, 5, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2019'),
(268, 'Laki-laki', 15, 13, 'Jl. Pelabuhan Tj. Perak', 57, 5, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2019'),
(269, 'Laki-laki', 14, 13, 'Lanang home Perumahan Griya Tirta Aji', 57, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(270, 'Laki-laki', 15, 13, 'Gg. Kamboja Jl. Klayatan III', 22, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(271, 'Laki-laki', 15, 13, 'Jl. Klayatan Gg. 2 No.34', 22, 5, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2019'),
(272, 'Laki-laki', 14, 13, 'Jl. Bandulan Baru No.204', 58, 5, 'LL (Triheksifenidil Hcl), Ganja', 2, 'BNN Kota Malang', '2019'),
(273, 'Laki-laki', 13, 13, 'Jl. Kepuh Gg. IX', 22, 5, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2019'),
(274, 'Perempuan', 13, 13, 'Jl. Klayatan Gg. III No. 18', 22, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(275, 'Laki-laki', 13, 13, 'Jl. Terusan Putra Yudha Blok B', 62, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(276, 'Laki-laki', 14, 13, 'Jl. Kemantren II', 22, 5, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2019'),
(277, 'Laki-laki', 15, 13, 'Jl. Pelabuhan Bakauhuni No. 15', 57, 5, 'LL (Triheksifenidil Hcl), Rokok', 2, 'BNN Kota Malang', '2019'),
(278, 'Laki-laki', 13, 13, 'Jl. Klayatan II', 22, 5, 'LL (Triheksifenidil Hcl), Miras, Rokok', 2, 'BNN Kota Malang', '2019'),
(279, 'Laki-laki', 15, 13, 'Jl. Kebonsari IV', 61, 5, 'LL (Triheksifenidil Hcl), Miras, Rokok', 2, 'BNN Kota Malang', '2019'),
(280, 'Laki-laki', 14, 13, 'Jl. Kemantren 1', 22, 5, 'LL (Triheksifenidil Hcl), Rokok', 2, 'BNN Kota Malang', '2019'),
(281, 'Laki-laki', 14, 13, 'Jl. Bandulan Barat No. 176', 58, 5, 'LL (Triheksifenidil Hcl), Miras, Rokok', 2, 'BNN Kota Malang', '2019'),
(282, 'Laki-laki', 14, 13, 'Jl. Bandulan Barat', 58, 5, 'Antimo, Miras, Rokok', 2, 'BNN Kota Malang', '2019'),
(283, 'Laki-laki', 14, 13, 'Jl. Pelabuhan Tj. Emas', 57, 5, 'Antimo, Miras, Rokok', 2, 'BNN Kota Malang', '2019'),
(284, 'Laki-laki', 15, 13, 'Jl. Sariwongso No.51', 26, 5, 'Antimo, Rokok', 2, 'BNN Kota Malang', '2019'),
(285, 'Laki-laki', 14, 13, 'Jl. Klayatan II', 22, 5, 'LL (Triheksifenidil Hcl), Miras, Rokok', 2, 'BNN Kota Malang', '2019'),
(286, 'Laki-laki', 14, 13, 'Jl. Mergan Kelurahan Blk. B', 11, 5, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2019'),
(287, 'Laki-laki', 13, 13, 'Jl. Tirtasari', 61, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(288, 'Laki-laki', 13, 13, 'Jl. Klayatan II Gg Teratai', 22, 5, 'LL (Triheksifenidil Hcl), Antimo', 2, 'BNN Kota Malang', '2018'),
(289, 'Laki-laki', 16, 13, 'Jl. Kemantren I', 22, 5, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2018'),
(290, 'Laki-laki', 16, 13, 'Jl. Pelabuhan Ketapang I', 57, 5, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2018'),
(291, 'Perempuan', 15, 13, 'JL. Klayatan Gang III', 22, 5, 'Hely, Rokok', 2, 'BNN Kota Malang', '2018'),
(292, 'Laki-laki', 13, 13, 'JL. Klayatan Gang III', 22, 5, 'LL (Triheksifenidil Hcl), Topi Miring, Bir, Rokok MLD', 2, 'BNN Kota Malang', '2018'),
(293, 'Laki-laki', 12, 13, 'Jl. Klayatan Gang III', 22, 5, 'LL (Triheksifenidil Hcl), Rokok', 2, 'BNN Kota Malang', '2018'),
(294, 'NULL', 11, 13, 'Jl. Klayatan Gg. 2', 22, 5, 'LL (Triheksifenidil Hcl) di campur kopi, Rokok', 2, 'BNN Kota Malang', '2018'),
(295, 'Laki-laki', 13, 13, 'Jl. Klayatan Gg. I', 22, 5, 'LL (Triheksifenidil Hcl) di campur kopi, Rokok', 2, 'BNN Kota Malang', '2018'),
(296, 'Laki-laki', 13, 13, 'Jl. Klayatan Gg. 2', 22, 5, 'LL (Triheksifenidil Hcl) di campur kopi, Rokok', 2, 'BNN Kota Malang', '2018'),
(297, 'Laki-laki', 14, 13, 'Jl. Kemantren 3', 22, 5, 'LL (Triheksifenidil Hcl), Rokok', 2, 'BNN Kota Malang', '2018'),
(298, 'Laki-laki', 13, 13, 'Jl. Klayatan Gang 3', 22, 5, 'LL (Triheksifenidil Hcl) di campur kopi, Rokok', 2, 'BNN Kota Malang', '2018'),
(299, 'Laki-laki', 12, 13, 'Jl. Klayatan Gg. 2', 22, 5, 'LL (Triheksifenidil Hcl) di campur kopi, Rokok', 2, 'BNN Kota Malang', '2018'),
(300, 'Laki-laki', 15, 13, 'Jl. Klayatan Gang 3', 22, 5, 'LL (Triheksifenidil Hcl), Miras, Topi Miring', 2, 'BNN Kota Malang', '2018'),
(301, 'Laki-laki', 14, 13, 'Jl. Klayatan Gang 2', 22, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(302, 'Laki-laki', 14, 13, 'Jl. Klayatan II', 22, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(303, 'Laki-laki', 15, 13, 'Jl. Kemantren 3', 22, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(304, 'Laki-laki', 13, 13, 'Jl. Klayatan Gg. 2', 22, 5, 'LL (Triheksifenidil Hcl), Miras, Topi Miring', 2, 'BNN Kota Malang', '2018'),
(305, 'Laki-laki', 14, 13, 'Jl. Klayatan Gg. I', 22, 5, 'LL (Triheksifenidil Hcl), Arak', 2, 'BNN Kota Malang', '2018'),
(306, 'Laki-laki', 14, 13, 'Jl. Kemantren 3', 22, 5, 'LL (Triheksifenidil Hcl), Miras, Topi Miring', 2, 'BNN Kota Malang', '2018'),
(307, 'Laki-laki', 15, 13, 'Klayatan Gang 3 No.51', 22, 5, 'LL (Triheksifenidil Hcl), Topi Miring, Bir Bintang', 2, 'BNN Kota Malang', '2018'),
(308, 'Laki-laki', 12, 13, 'Klayatan Gg.1', 22, 5, 'LL (Triheksifenidil Hcl), Rokok', 2, 'BNN Kota Malang', '2018'),
(309, 'Laki-laki', 11, 13, 'Klayatan Gg. III', 22, 5, 'LL (Triheksifenidil Hcl), Topi Miring, Bir, Rokok MLD', 2, 'BNN Kota Malang', '2018'),
(310, 'Perempuan', 11, 13, 'Jl. Kemantren II Gg. Melon', 22, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(311, 'Perempuan', 12, 13, 'Jl. Klayatan Gg. 2', 22, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(312, 'Laki-laki', 16, 13, 'Jl. Bandulan Gg. I', 58, 5, 'LL (Triheksifenidil Hcl), Tramadol, Antimo, Miras,', 2, 'BNN Kota Malang', '2018'),
(313, 'Laki-laki', 16, 13, 'Jl. Bandulan Gg. 8', 22, 5, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2018'),
(314, 'Laki-laki', 15, 13, 'Jl. Mulyorejo', 26, 5, 'Tramadol', 2, 'BNN Kota Malang', '2019'),
(315, 'Laki-laki', 15, 13, 'Jl. Artowijoyo', 26, 5, 'Tramadol', 2, 'BNN Kota Malang', '2019'),
(316, 'Perempuan', 14, 13, 'Jl. Bandulan Baru No.204', 58, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(317, 'Perempuan', 15, 13, 'Jl. Bandulan Gg.14', 58, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(318, 'Perempuan', 15, 13, 'Jl. Raya Candi 3 No.121', 60, 5, 'LL (Triheksifenidil Hcl), Antimo, Miras', 2, 'BNN Kota Malang', '2019'),
(319, 'Laki-laki', 16, 13, 'Jl. Bandulan Gg. I No.79', 58, 5, 'LL (Triheksifenidil Hcl), Miras, Rokok', 2, 'BNN Kota Malang', '2019'),
(320, 'Laki-laki', 16, 13, 'Jl. Raya Bandulan Gg. 14', 58, 5, 'LL (Triheksifenidil Hcl), Miras, Rokok', 2, 'BNN Kota Malang', '2019'),
(321, 'Laki-laki', 16, 13, 'Jl. Peltu Sujono No.20', 59, 5, 'LL (Triheksifenidil Hcl), Miras, Rokok', 2, 'BNN Kota Malang', '2019'),
(322, 'Perempuan', 15, 13, 'Jl. Raya Candi V No.27', 60, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(323, 'Laki-laki', 14, 13, 'Jl. Tebo Utara', 58, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(324, 'Laki-laki', 15, 13, 'Jl. Pisang Agung No.7', 62, 5, 'LL (Triheksifenidil Hcl), Miras, Rokok', 2, 'BNN Kota Malang', '2019'),
(325, 'Laki-laki', 16, 13, 'Jl. Bandulan Gg. 10', 58, 5, 'LL (Triheksifenidil Hcl), Miras, Rokok', 2, 'BNN Kota Malang', '2019'),
(326, 'Laki-laki', 15, 13, 'Jl. Tebo Tengah No.6', 26, 5, 'LL (Triheksifenidil Hcl), Miras, Rokok', 2, 'BNN Kota Malang', '2019'),
(327, 'Laki-laki', 17, 13, 'Jl. Bandulan Gg VI', 58, 5, 'LL (Triheksifenidil Hcl), Miras, Rokok', 2, 'BNN Kota Malang', '2019'),
(328, 'Perempuan', 16, 13, 'Jl. Bandulan Barat', 58, 5, 'LL (Triheksifenidil Hcl), Rokok', 2, 'BNN Kota Malang', '2019'),
(329, 'Perempuan', 17, 13, 'Jl. Bandulan Barat', 58, 5, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2019'),
(330, 'Laki-laki', 15, 13, 'Jl. Budi Utomo', 26, 5, 'LL (Triheksifenidil Hcl), Rokok', 2, 'BNN Kota Malang', '2019'),
(331, 'Laki-laki', 16, 13, 'Jl. Bandulan Gg. I', 58, 5, 'LL (Triheksifenidil Hcl), Miras, Rokok', 2, 'BNN Kota Malang', '2019'),
(332, 'Laki-laki', 15, 13, 'Jl. Tj. Putrayudha', 11, 5, 'LL (Triheksifenidil Hcl), Tramadol, Miras, Rokok', 2, 'BNN Kota Malang', '2019'),
(333, 'Perempuan', 15, 13, 'Jl. Raya Tebo Sel. No.30', 26, 5, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2019'),
(334, 'Laki-laki', 15, 13, 'Jl. I.R. Rais Gg. 14', 11, 5, 'LL (Triheksifenidil Hcl), Miras, Rokok', 2, 'BNN Kota Malang', '2019'),
(335, 'Perempuan', 17, 13, 'Jl. Bandulan Baru', 58, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(336, 'Laki-laki', 16, 13, 'Sukun', 63, 5, 'LL (Triheksifenidil Hcl), Miras, Rokok', 2, 'BNN Kota Malang', '2019'),
(337, 'Perempuan', 15, 13, 'Jl. Bandulan Gg. I', 58, 5, 'LL (Triheksifenidil Hcl), Rokok', 2, 'BNN Kota Malang', '2019'),
(338, 'Perempuan', 13, 13, 'Jl. Sariwongso', 26, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(339, 'Perempuan', 17, 13, 'Jl. Tambora No. 5', 60, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(340, 'Laki-laki', 13, 13, 'Kasin Jaya III No.3', 11, 5, 'LL (Triheksifenidil Hcl), Rokok', 2, 'BNN Kota Malang', '2019'),
(341, 'Perempuan', 15, 13, 'Jl. Bandulan Baru ', 58, 5, 'LL (Triheksifenidil Hcl), Rokok', 2, 'BNN Kota Malang', '2019'),
(342, 'Perempuan', 17, 13, 'Jl. Mulyosari Tebo Utara', 26, 5, 'LL (Triheksifenidil Hcl), Rokok', 2, 'BNN Kota Malang', '2019'),
(343, 'Perempuan', 15, 13, 'Jl. Bandulan Gg. 8', 58, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(344, 'Laki-laki', 16, 13, 'Jl. Bandulan IX', 58, 5, 'LL (Triheksifenidil Hcl), Miras, Rokok', 2, 'BNN Kota Malang', '2019'),
(345, 'Laki-laki', 16, 13, 'Karang Besuki', 60, 5, 'LL (Triheksifenidil Hcl), Miras, Rokok', 2, 'BNN Kota Malang', '2019'),
(346, 'Laki-laki', 16, 13, 'Jl. Simpan Mega Mendung', 62, 5, 'LL (Triheksifenidil Hcl), Miras, Rokok', 2, 'BNN Kota Malang', '2019'),
(347, 'Laki-laki', 15, 13, 'Jl. Raya Candi 3', 60, 5, 'LL (Triheksifenidil Hcl), Miras, Rokok', 2, 'BNN Kota Malang', '2019'),
(348, 'Laki-laki', 17, 13, 'Jl. Rawisari', 26, 5, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'Sadar Hati', '2019'),
(349, 'Laki-laki', 17, 13, 'Jl. Sukun Sidomulyo No.5', 11, 5, 'LL (Triheksifenidil Hcl), Antimo, Alkohol', 3, 'Sadar Hati', '2019'),
(350, 'Perempuan', 16, 13, 'Jl. S.Supriadi Gg. VII No.2', 63, 5, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'Sadar Hati', '2019'),
(351, 'Laki-laki', 16, 13, 'Gg. 4 No.19 Ciptomulyo', 59, 5, 'LL (Triheksifenidil Hcl), Tramadol, Alkohol', 3, 'Sadar Hati', '2019'),
(352, 'Perempuan', 15, 13, 'Jl. Pahlawan', 26, 5, 'LL (Triheksifenidil Hcl)', 3, 'Sadar Hati', '2019'),
(353, 'Perempuan', 15, 13, 'Jl. Pahlawan No.58', 26, 5, 'LL (Triheksifenidil Hcl), Alkohol, Rokok', 3, 'Sadar Hati', '2019'),
(354, 'Laki-laki', 17, 13, 'Jl. Susanto', 59, 5, 'LL (Triheksifenidil Hcl)', 3, 'Sadar Hati', '2019'),
(355, 'Laki-laki', 15, 13, 'Jl. Sukun Sidomulyo', 11, 5, 'LL (Triheksifenidil Hcl), Arak', 3, 'Sadar Hati', '2019'),
(356, 'Perempuan', 16, 13, 'Jambangan IX', 61, 5, 'LL (Triheksifenidil Hcl)', 3, 'Sadar Hati', '2019'),
(357, 'Laki-laki', 16, 13, 'Jl. Kolonel Sugiono', 59, 5, 'LL (Triheksifenidil Hcl), Arak', 3, 'Sadar Hati', '2019'),
(358, 'Laki-laki', 15, 13, 'Jl. Artowijoyo No.2', 26, 5, 'LL (Triheksifenidil Hcl), Anggur Merah', 3, 'Sadar Hati', '2019'),
(359, 'Laki-laki', 15, 13, 'Jl. Janti Selatan Gg. 7', 22, 5, 'LL (Triheksifenidil Hcl), Arak', 3, 'Sadar Hati', '2019'),
(360, 'Laki-laki', 15, 13, 'Jl. Klayatan Gg. I No.15', 22, 5, 'LL (Triheksifenidil Hcl), Tramadol, Alkohol', 3, 'Sadar Hati', '2019'),
(361, 'Laki-laki', 14, 13, 'Jl. S.Supriadi No. 22', 63, 5, 'LL (Triheksifenidil Hcl), Arak', 3, 'Sadar Hati', '2019'),
(362, 'Laki-laki', 15, 13, 'Jl. Bandulan Baru No.144', 58, 5, 'LL (Triheksifenidil Hcl), Bir', 2, 'BNN Kota Malang', '2019'),
(363, 'Laki-laki', 16, 13, 'Jl. Bandulan Gang VI', 58, 5, 'LL (Triheksifenidil Hcl), Bir Bintang', 2, 'BNN Kota Malang', '2019'),
(364, 'Laki-laki', 16, 13, 'Jl. Kol. Sugiono 2', 59, 5, 'LL (Triheksifenidil Hcl), Arak', 3, 'Sadar Hati', '2019'),
(365, 'Laki-laki', 15, 13, 'Jl. Sukun Gempol No.1', 11, 5, 'LL (Triheksifenidil Hcl), Alkohol', 2, 'BNN Kota Malang', '2019'),
(366, 'Perempuan', 16, 13, 'Jl. Kol. Sugiono 2', 59, 5, 'LL (Triheksifenidil Hcl)', 3, 'RSK Hayunanto Medical Center', '2019'),
(367, 'Perempuan', 14, 13, 'Gg. 8 No.512 Bandulan', 58, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(368, 'Perempuan', 14, 13, 'Jl. Gadang Gang 10', 21, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(369, 'Perempuan', 18, 13, 'Jl. Sari Kerto', 179, 16, 'Ganja, LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(370, 'Perempuan', 18, 13, 'Ngijo', 185, 16, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(371, 'Laki-laki', 15, 13, 'Jl. Raya Tanjungsari', 183, 16, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(372, 'Laki-laki', 17, 13, 'Perum GPA ( Griya Permata Alam ) Ngijo', 185, 16, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(373, 'Perempuan', 15, 13, 'Jl. Raya Ketangi Tegalgondo', 187, 16, 'LL (Triheksifenidil Hcl), Rokok', 2, 'BNN Kota Malang', '2018'),
(374, 'Laki-laki', 14, 13, 'Perumahan GPA Ngijo', 185, 16, 'LL (Triheksifenidil Hcl), MCDonald, Tebs', 2, 'BNN Kota Malang', '2019'),
(375, 'Laki-laki', 15, 13, 'Jl. Raya Ketangi Tegalgondo', 187, 16, 'LL (Triheksifenidil Hcl), Bir', 2, 'BNN Kota Malang', '2019'),
(376, 'Laki-laki', 15, 13, 'Desa Ketangi Tegalgondo', 187, 16, 'LL (Triheksifenidil Hcl), MCDonald, Arak', 2, 'BNN Kota Malang', '2019'),
(377, 'Laki-laki', 19, 13, 'Jl. Bugis', 19, 15, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(378, 'Laki-laki', 17, 13, 'Jl. Raya Jeru', 280, 15, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(379, 'Laki-laki', 18, 13, 'Jl. Raya Dipomanggolo', 18, 15, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(380, 'Laki-laki', 18, 13, 'Jl. H. Nur Rois Tirtomoyo', 18, 15, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(381, 'Laki-laki', 17, 13, 'Jl. Anggrek No.18', 16, 15, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(382, 'Laki-laki', 16, 13, 'Jl. Kapi Mantasti III 9 No.18L', 16, 15, 'LL (Triheksifenidil Hcl), Arak', 2, 'BNN Kota Malang', '2019'),
(383, 'Laki-laki', 15, 13, 'Jl. Raya Asrikaton', 273, 15, 'LL (Triheksifenidil Hcl), Miras Oplosan', 2, 'BNN Kota Malang', '2019'),
(384, 'Laki-laki', 16, 13, 'Jl. Kapiworo Gg. 3', 277, 15, 'Ganja, LL (Triheksifenidil Hcl), Miras, Arak', 2, 'BNN Kota Malang', '2019'),
(385, 'Laki-laki', 16, 13, 'Jl. Kapi Woro', 277, 15, 'LL (Triheksifenidil Hcl), Miras, Bir Bintang', 2, 'BNN Kota Malang', '2019'),
(386, 'Laki-laki', 14, 13, 'Jl. Anggrek 2', 273, 15, 'LL (Triheksifenidil Hcl), Miras, Arak, TM, Alkohol', 2, 'BNN Kota Malang', '2019'),
(387, 'Laki-laki', 17, 13, 'Jl. Raya Kebobang', 443, 18, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(388, 'Laki-laki', 16, 13, 'Jl. Mentaraman Gg. 6', 404, 19, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(389, 'Laki-laki', 15, 13, 'Tajinan', 363, 21, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(390, 'Laki-laki', 17, 13, 'Jl. Sultan Hasanuddin', 150, 13, 'LL (Triheksifenidil Hcl), CTM, Miras', 2, 'BNN Kota Malang', '2018'),
(391, 'Laki-laki', 15, 13, 'Jl. Karangsuko', 268, 23, 'LL (Triheksifenidil Hcl), Arak, MCDonald, Rokok', 2, 'BNN Kota Malang', '2018'),
(392, 'Laki-laki', 14, 13, 'Perum Istana Bedali Agung C-8 Lawang', 220, 24, 'LL (Triheksifenidil Hcl), Bir Bintang', 2, 'BNN Kota Malang', '2019'),
(393, 'Laki-laki', 36, 17, 'Jl.Dr.Cipto VIII', 220, 24, 'Alkohol, Sabu-sabu', 1, 'RSJ Lawang', '2018'),
(394, 'Laki-laki', 14, 13, 'Jl. Raya Bakalan', 85, 8, 'LL (Triheksifenidil Hcl), Rokok', 2, 'BNN Kota Malang', '2018'),
(395, 'Laki-laki', 38, 18, 'Jl. Demang Jaya 1', 91, 8, 'Subuxone, Subutex', 1, 'Corpus Christi', '2019'),
(396, 'Laki-laki', 19, 13, 'Krebet Senggrong, Bululawang', 91, 8, 'LL (Triheksifenidil Hcl), Arak, TM', 3, 'RSK Hayunanto Medical Center', '2019'),
(397, 'Laki-laki', 18, 13, 'Jl. Sunan Ampel', 322, 17, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(398, 'Perempuan', 18, 13, 'Perum Pondok Mutiara Dengkol', 325, 17, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(399, 'Laki-laki', 17, 13, 'Desa Tunjungtirto Singosari', 333, 17, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(400, 'Laki-laki', 16, 13, 'Jl. Kendedes', 336, 17, 'Ganja, LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(401, 'Laki-laki', 13, 13, 'Watugede', 334, 17, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(402, 'Perempuan', 14, 13, 'Jalan Rogonoto Gg. Merdeka', 337, 17, 'Antimo', 2, 'BNN Kota Malang', '2018'),
(403, 'Laki-laki', 15, 13, 'Perumahan Bumi Bandara', 325, 17, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2018'),
(404, 'Laki-laki', 17, 13, 'Jl. Raya Klampok', 327, 17, 'LL (Triheksifenidil Hcl), OTD, Miras', 2, 'BNN Kota Malang', '2018'),
(405, 'Laki-laki', 52, 18, 'Jl.Kebon Agung V', 331, 17, 'Metadon, Anti Depresan', 3, 'RSK Hayunanto Medical Center', '2018'),
(406, 'Laki-laki', 16, 13, 'Jl.Tarupala', 288, 22, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(407, 'Laki-laki', 16, 13, 'Jl. Raya Genengan', 283, 22, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(408, 'Laki-laki', 18, 13, 'Jl. Raya Genengan', 283, 22, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(409, 'Laki-laki', 17, 13, 'Perum Sari Madu Permai ', 289, 22, 'LL (Triheksifenidil Hcl), Obat tidur, Miras', 2, 'BNN Kota Malang', '2018'),
(410, 'Laki-laki', 13, 13, 'Jl. Wijaya Kusuma No.17', 288, 22, 'LL (Triheksifenidil Hcl), Rokok', 2, 'BNN Kota Malang', '2018'),
(411, 'Laki-laki', 45, 18, 'Jl. Raya Kb. Agung No.94', 288, 22, 'LL (Triheksifenidil Hcl), Sabu-sabu', 1, 'RSJ Lawang', '2018'),
(412, 'Perempuan', 15, 13, 'Jl. Raya Segaran', 289, 22, 'Alkohol', 2, 'RSK Hayunanto Medical Center', '2018'),
(413, 'Laki-laki', 16, 13, 'Jl. Leces Sonosari', 288, 22, 'LL (Triheksifenidil Hcl), Alkohol', 2, 'BNN Kota Malang', '2018'),
(414, 'Laki-laki', 15, 13, 'Jl. Raya Karangsono', 288, 22, 'LL (Triheksifenidil Hcl), Alkohol', 2, 'BNN Kota Malang', '2018'),
(415, 'Laki-laki', 13, 13, 'Dusun Karangsono Kebonagung', 288, 22, 'LL (Triheksifenidil Hcl), Alkohol', 2, 'BNN Kota Malang', '2019'),
(416, 'Laki-laki', 13, 13, 'Jl. Segaran Gg. Manggir', 289, 22, 'LL (Triheksifenidil Hcl), Alkohol', 2, 'BNN Kota Malang', '2019'),
(417, 'Laki-laki', 19, 13, 'Jl. Raya Penamas', 288, 22, 'Alkohol, LL (Triheksifenidil Hcl), Ganja', 2, 'RSK Hayunanto Medical Center', '2019'),
(418, 'Laki-laki', 19, 13, 'Sonosari, Kebonagung', 288, 22, 'Alkohol, LL (Triheksifenidil Hcl)', 3, 'RSK Hayunanto Medical Center', '2019'),
(419, 'Laki-laki', 19, 13, 'Jl. Garuda No.31', 287, 22, 'LL (Triheksifenidil Hcl)', 3, 'RSK Hayunanto Medical Center', '2019');
INSERT INTO `tb_pecandu` (`id_pecandu`, `jenis_kelamin`, `usia`, `id_pekerjaan`, `alamat`, `id_kelurahan`, `id_kecamatan`, `jenis_narkoba`, `id_tahapan`, `lembaga_rehab`, `tahun`) VALUES
(420, 'Laki-laki', 18, 13, 'Segaran Kendalpayak', 289, 22, 'LL (Triheksifenidil Hcl)', 3, 'RSK Hayunanto Medical Center', '2019'),
(421, 'Perempuan', 18, 13, 'Sono Tengah Kebonagung', 288, 22, 'LL (Triheksifenidil Hcl), Alkohol', 2, 'BNN Kota Malang', '2019'),
(422, 'Laki-laki', 18, 13, 'Jl. Genengan 5', 283, 22, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2019'),
(423, 'Laki-laki', 18, 13, 'Jl. Raya Kb. Agung No.70', 288, 22, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2019'),
(424, 'Laki-laki', 19, 13, 'Glanggang', 284, 22, 'Ganja, Alkohol', 3, 'RSK Hayunanto Medical Center', '2018'),
(425, 'Laki-laki', 17, 13, 'Jl. Kramatan', 290, 22, 'LL (Triheksifenidil Hcl), TM', 3, 'RSK Hayunanto Medical Center', '2018'),
(426, 'Laki-laki', 19, 13, 'Jl. Raya Watudakon', 289, 22, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2018'),
(427, 'Laki-laki', 15, 13, 'Jl. Garuda, Bendo', 287, 22, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2018'),
(428, 'Laki-laki', 16, 13, 'Jl. Kenanga No.3a', 118, 10, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2018'),
(429, 'Laki-laki', 14, 13, 'Pondok Bestari Indah Klandungan', 117, 10, 'LL (Triheksifenidil Hcl), Miras, Rokok', 2, 'BNN Kota Malang', '2018'),
(430, 'Laki-laki', 16, 13, 'Jl. Dieng Atas', 114, 10, 'LL (Triheksifenidil Hcl), Miras, Rokok', 2, 'BNN Kota Malang', '2018'),
(431, 'Laki-laki', 15, 13, 'Karang Ampel', 115, 10, 'LL (Triheksifenidil Hcl), Miras, Rokok', 2, 'BNN Kota Malang', '2018'),
(432, 'Perempuan', 15, 13, 'Jl. Raya Candi V', 115, 10, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2018'),
(433, 'Perempuan', 16, 13, 'Jl. Raya Candi V', 115, 10, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(434, 'Perempuan', 17, 13, 'Jl. Raya Candi V', 115, 10, 'LL (Triheksifenidil Hcl), Miras, Rokok', 2, 'BNN Kota Malang', '2018'),
(435, 'Perempuan', 15, 13, 'Jl. Dieng Atas', 114, 10, 'LL (Triheksifenidil Hcl), Miras, Rokok', 2, 'BNN Kota Malang', '2018'),
(436, 'Laki-laki', 14, 13, 'Jl. Raya Candi V', 115, 10, 'LL (Triheksifenidil Hcl), Miras, Rokok', 2, 'BNN Kota Malang', '2019'),
(437, 'Laki-laki', 14, 13, 'Jl. Puncak Dieng', 114, 10, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2019'),
(438, 'Laki-laki', 16, 13, 'Kalisongo', 114, 10, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2019'),
(439, 'Laki-laki', 19, 13, 'JL. Sumberejo Kalisongo', 114, 10, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2019'),
(440, 'Laki-laki', 17, 13, 'Jl. Pesantren Karang Widoro', 115, 10, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2019'),
(441, 'Laki-laki', 18, 13, 'Jl. Pesantren Karang Widoro', 115, 10, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2019'),
(442, 'Laki-laki', 40, 17, 'Jl. Locari ', 121, 10, 'Alkohol, Ganja, Pil Koplo, Sabu-sabu, Putaw', 1, 'Corpus Christi', '2018'),
(443, 'Laki-laki', 17, 13, 'Jl. Dieng Atas', 114, 10, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2019'),
(444, 'Laki-laki', 16, 13, 'Jl. Danau Rw. Pening Dalam 3', 40, 2, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(445, 'Perempuan', 17, 13, 'Jl. Muharto Gg. 5', 38, 2, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(446, 'Laki-laki', 18, 13, 'Jl. Muharto Gg. V', 23, 2, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(447, 'Perempuan', 18, 13, 'Jl. Zaenal Zakse I Kotalama', 23, 2, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(448, 'Perempuan', 16, 13, 'Jl. Terusan Sulfat', 27, 2, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(449, 'Laki-laki', 16, 13, 'Jl. Kolonel Sugiono Gg. 3 b', 41, 2, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(450, 'Laki-laki', 18, 13, 'Jl. Kecipir', 35, 2, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(451, 'Laki-laki', 18, 13, 'Jl. Kolonel Sugiono Gg. IX', 41, 2, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(452, 'Laki-laki', 15, 13, 'Jl. Kol SugionoGg. IX', 41, 2, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(453, 'Perempuan', 15, 13, 'Jl. Muharto Gang 7', 23, 2, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(454, 'Perempuan', 19, 13, 'Mergosono Gg. 5', 41, 2, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(455, 'Perempuan', 19, 13, 'Jl. Kol. Sugiono Gg. IX', 41, 2, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(456, 'Laki-laki', 16, 13, 'Jl. Bandara Timika V', 37, 2, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(457, 'Perempuan', 17, 13, 'Jl. Ki Ageng Gribig Gang I', 40, 2, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(458, 'Laki-laki', 17, 13, 'Jl. Kol Sugiono Gang 9B', 41, 2, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(459, 'Perempuan', 16, 13, 'Jl. Bayak Dalam', 35, 2, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(460, 'Laki-laki', 18, 13, 'Jl. Kolonel Sugiono Gang 9B', 41, 2, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(461, 'Laki-laki', 16, 13, 'Jl. Danau Melintang', 27, 2, 'Autan, Bigcola', 2, 'BNN Kota Malang', '2019'),
(462, 'Laki-laki', 15, 13, 'Jl. Simpang Ranugrati No.28', 39, 2, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(463, 'Laki-laki', 19, 13, 'Jl. KY Ageng Gribig Lesanpuro Gang 2', 39, 2, 'LL (Triheksifenidil Hcl), Bir Bintang, Arak, TM', 2, 'BNN Kota Malang', '2019'),
(464, 'Laki-laki', 19, 13, 'Jl. Muharto Gang 5', 23, 2, 'LL (Triheksifenidil Hcl), Arak', 2, 'BNN Kota Malang', '2019'),
(465, 'Laki-laki', 18, 13, 'Jl. Terong', 35, 2, 'LL (Triheksifenidil Hcl), Topi Miring', 2, 'BNN Kota Malang', '2019'),
(466, 'Laki-laki', 19, 13, 'Jl. Danau Laut Tawar II No.63', 27, 2, 'LL (Triheksifenidil Hcl), Heli, Miras, Arak', 2, 'BNN Kota Malang', '2019'),
(467, 'Laki-laki', 18, 13, 'Jl. Kedungkandang', 38, 2, 'Ganja, LL (Triheksifenidil Hcl), Miras, Arak', 2, 'BNN Kota Malang', '2018'),
(468, 'Laki-laki', 16, 13, 'Jl. Kalisari', 43, 2, 'LL (Triheksifenidil Hcl), Miras, Arak, Topi, Miring, Trobas', 2, 'BNN Kota Malang', '2018'),
(469, 'Laki-laki', 15, 13, 'Gang I A, Mergosono', 41, 2, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(470, 'Laki-laki', 15, 13, 'Jl. Lesanpuro', 39, 2, 'LL (Triheksifenidil Hcl), Arak', 2, 'BNN Kota Malang', '2018'),
(471, 'Laki-laki', 15, 13, 'Jl. Raya Ki Ageng Gribig', 39, 2, 'LL (Triheksifenidil Hcl), Arak', 2, 'BNN Kota Malang', '2018'),
(472, 'Laki-laki', 15, 13, 'Jl. Raya Madyopuro No.21', 40, 2, 'LL (Triheksifenidil Hcl), Arak', 2, 'BNN Kota Malang', '2018'),
(473, 'Laki-laki', 17, 13, 'Jl.Kolonel Sugiono Gang 5 No.46 ', 41, 2, 'LL (Triheksifenidil Hcl), Alkohol, Arak', 3, 'Sadar Hati', '2018'),
(474, 'Laki-laki', 14, 13, 'Jl. Kolonel Sugiono No.27', 41, 2, 'LL (Triheksifenidil Hcl), Arak', 3, 'Sadar Hati', '2018'),
(475, 'Laki-laki', 18, 13, 'Jl. Laks. Martadinata Gang 5', 23, 2, 'LL (Triheksifenidil Hcl), Alkohol', 2, 'BNN Kota Malang', '2018'),
(476, 'Laki-laki', 13, 13, 'Arjowinangun', 34, 2, 'LL (Triheksifenidil Hcl), Alkohol', 2, 'BNN Kota Malang', '2018'),
(477, 'Laki-laki', 13, 13, 'Jl. Kotalama Gg. III B', 23, 2, 'LL (Triheksifenidil Hcl), Alkohol', 2, 'BNN Kota Malang', '2018'),
(478, 'Laki-laki', 14, 13, 'Kedung Kandang Gg. 5 No.12', 38, 2, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(479, 'Perempuan', 14, 13, 'Jl. Kol Sugiono Gg. IIIA', 41, 2, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(480, 'Laki-laki', 14, 13, 'Jl. Kolonel Sugiono Gang 7', 41, 2, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'Sadar Hati', '2018'),
(481, 'Laki-laki', 40, 17, 'Jl. Kebalen Wetan Kotalama ', 23, 2, 'Alkohol, Ganja, Pil Koplo, Sabu-sabu, Putaw', 1, 'Corpus Christi', '2018'),
(482, 'Laki-laki', 17, 13, 'Jl. Raya Ki Ageng Gribig', 39, 2, 'Alkohol, LL (Triheksifenidil Hcl), Ganja', 3, 'RSK Hayunanto Medical Center', '2018'),
(483, 'Laki-laki', 18, 13, 'Jl. Ki Ageng Gribig Gg. 2', 40, 2, 'Alkohol, LL (Triheksifenidil Hcl), Ganja', 3, 'RSK Hayunanto Medical Center', '2018'),
(484, 'Laki-laki', 18, 13, 'Jl. Raya Ki Ageng Gribig', 39, 2, 'LL (Triheksifenidil Hcl)', 3, 'RSK Hayunanto Medical Center', '2018'),
(485, 'Laki-laki', 18, 13, 'Jl. Kebalen Wetan', 23, 2, 'LL (Triheksifenidil Hcl)', 3, 'RSK Hayunanto Medical Center', '2018'),
(486, 'Perempuan', 18, 13, 'Jl. Raya Cemorokandang', 37, 2, 'LL (Triheksifenidil Hcl)', 3, 'RSK Hayunanto Medical Center', '2018'),
(487, 'Laki-laki', 18, 13, 'Jl. Laksamana Martadinata', 23, 2, 'LL (Triheksifenidil Hcl), Alkohol', 2, 'BNN Kota Malang', '2018'),
(488, 'Laki-laki', 19, 13, 'Jl. Danau Semayang', 39, 2, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2018'),
(489, 'Laki-laki', 19, 13, 'Jl. Kyai Sofyan Yusuf No.1', 38, 2, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2019'),
(490, 'Laki-laki', 17, 13, 'Jl. Iswahyudi Raya', 37, 2, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2019'),
(491, 'Laki-laki', 18, 13, 'Jl. Madyopuro Gg. 1', 40, 2, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2019'),
(492, 'Laki-laki', 17, 13, 'Jl.Sumbersari Gang Gang 1B No.23', 40, 2, 'Ganja, Tramadol, Alkohol', 3, 'RSK Hayunanto Medical Center', '2019'),
(493, 'Laki-laki', 19, 13, 'Jl. Tenaga Utara', 29, 1, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(494, 'Laki-laki', 19, 13, 'Jl. Parangargo', 417, 20, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(495, 'Laki-laki', 20, 13, 'Desa Parangargo', 417, 20, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(496, 'Laki-laki', 18, 13, 'Jl. Parangargo', 417, 20, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(497, 'Laki-laki', 18, 13, 'Jl. Parangargo', 417, 20, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(498, 'Laki-laki', 19, 13, 'Dusun Buwek', 420, 20, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(499, 'Laki-laki', 14, 13, 'Jl. Nakula', 419, 20, 'LL (Triheksifenidil Hcl), Miras, Arak', 2, 'BNN Kota Malang', '2018'),
(500, 'Perempuan', 14, 13, 'Jl. Gatot Kaca Niwin, Sidorahayu', 419, 20, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(501, 'Laki-laki', 16, 13, 'Jl. Jurang Wugu No.129', 413, 20, 'LL (Triheksifenidil Hcl), Antimo, Miras', 2, 'BNN Kota Malang', '2018'),
(502, 'Laki-laki', 16, 13, 'Jl. Raya Jedong', 413, 20, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2018'),
(503, 'Laki-laki', 16, 13, 'Jl. Kresna Niwin, Sidorahayu', 419, 20, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2019'),
(504, 'Laki-laki', 17, 13, 'Jl. Arjuna Wagir', 417, 20, 'LL (Triheksifenidil Hcl), Obat tidur, Miras', 2, 'BNN Kota Malang', '2019'),
(505, 'Laki-laki', 13, 13, 'Jl. Raya Gondowangi', 412, 20, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(506, 'Laki-laki', 20, 13, 'Jl. Sunan Giri', 420, 20, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2019'),
(507, 'Laki-laki', 14, 13, 'Jl. Sawun', 413, 20, 'LL (Triheksifenidil Hcl), Miras, Topi Miring, Bir', 2, 'BNN Kota Malang', '2019'),
(508, 'Laki-laki', 16, 13, 'Jl. Jamuran No.4', 421, 20, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2019'),
(509, 'Perempuan', 14, 13, 'Jl. Parangargo', 417, 20, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(510, 'Perempuan', 15, 13, 'Perum sidorahayu Niwin, Sidorahayu', 419, 20, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(511, 'Perempuan', 15, 13, 'Dusun Niwen Sidorahayu', 419, 20, 'LL (Triheksifenidil Hcl), Antimo', 2, 'BNN Kota Malang', '2019'),
(512, 'Laki-laki', 16, 13, 'Jl. Jurang Wugu', 413, 20, 'LL (Triheksifenidil Hcl), Tramadol, Arak', 2, 'BNN Kota Malang', '2019'),
(513, 'Laki-laki', 17, 13, 'Jl. Jurang Wugu', 413, 20, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(514, 'Laki-laki', 15, 13, 'Jl. Sadewa Sidorahayu', 419, 20, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2019'),
(515, 'Perempuan', 14, 13, 'Jl. Gn. Jati', 415, 20, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(516, 'Laki-laki', 18, 13, 'Jl. Raya Jedong', 413, 20, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(517, 'Perempuan', 15, 13, 'Jl. Raya Pandan Landung', 415, 20, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(518, 'Laki-laki', 16, 13, 'Jl. Jurang Wugu', 413, 20, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(519, 'Laki-laki', 18, 13, 'Jl. Mulyosari Krajan', 415, 20, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(520, 'Laki-laki', 17, 13, 'Jl. Gapura Krajan', 415, 20, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(521, 'Laki-laki', 14, 13, 'Ngingrim Pandanrejo Kec. Wagir', 416, 20, 'LL (Triheksifenidil Hcl), Rokok', 2, 'BNN Kota Malang', '2019'),
(522, 'Laki-laki', 13, 13, 'Jl. Parangargo No.6', 417, 20, 'LL (Triheksifenidil Hcl), Rokok', 2, 'BNN Kota Malang', '2018'),
(523, 'Laki-laki', 14, 13, 'Jl. Gapura krajan', 415, 20, 'Antimo', 2, 'BNN Kota Malang', '2018'),
(524, 'Laki-laki', 14, 13, 'Jl. Jurang Wugu', 413, 20, 'LL (Triheksifenidil Hcl), Antimo, Miras', 2, 'BNN Kota Malang', '2018'),
(525, 'Laki-laki', 16, 13, 'Pandanlandung', 415, 20, 'LL (Triheksifenidil Hcl), Antimo, Tramadol, Miras', 2, 'BNN Kota Malang', '2018'),
(526, 'Laki-laki', 16, 13, 'Jl. Gapura Krajan', 415, 20, 'LL (Triheksifenidil Hcl), Miras, Rokok', 2, 'BNN Kota Malang', '2018'),
(527, 'Laki-laki', 16, 13, 'Sengon Dalisodo', 411, 20, 'LL (Triheksifenidil Hcl), Miras, Rokok', 2, 'BNN Kota Malang', '2018'),
(528, 'Laki-laki', 15, 13, 'Perumahan Pondok Mutiara Asri Jl. Raya Krajan', 415, 20, 'LL (Triheksifenidil Hcl), Miras, Rokok', 2, 'BNN Kota Malang', '2018'),
(529, 'Perempuan', 15, 13, 'Sengon Dalisodo Kec. Wagir', 411, 20, 'LL (Triheksifenidil Hcl), Miras, Rokok', 2, 'BNN Kota Malang', '2018'),
(530, 'Laki-laki', 15, 13, 'Pandanlandung', 415, 20, 'LL (Triheksifenidil Hcl), Miras, Rokok', 2, 'BNN Kota Malang', '2018'),
(531, 'Laki-laki', 15, 13, 'Desa Jedong', 413, 20, 'LL (Triheksifenidil Hcl), Miras, Rokok', 2, 'BNN Kota Malang', '2018'),
(532, 'Laki-laki', 15, 13, 'Jl. Pandanlandung', 415, 20, 'LL (Triheksifenidil Hcl), Miras, Rokok', 2, 'BNN Kota Malang', '2018'),
(533, 'Perempuan', 13, 13, 'Jl. Gn. Jati', 415, 20, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(534, 'Perempuan', 15, 13, 'Desa Mendalanwangi Wagir', 414, 20, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(535, 'Perempuan', 14, 13, 'Jl. Gapura Krajan', 415, 20, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2018'),
(536, 'Perempuan', 15, 13, 'Pandanlandung', 415, 20, 'LL (Triheksifenidil Hcl), Rokok', 2, 'BNN Kota Malang', '2019'),
(537, 'Perempuan', 15, 13, 'Jurang Wugu, Jedong', 413, 20, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(538, 'Perempuan', 16, 13, 'Jl. Gapura Krajan', 415, 20, 'LL (Triheksifenidil Hcl), Rokok', 2, 'BNN Kota Malang', '2019'),
(539, 'Perempuan', 15, 13, 'Pandanlandung', 415, 20, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(540, 'Laki-laki', 15, 13, 'Jedong Wagir', 413, 20, 'LL (Triheksifenidil Hcl), OTD', 2, 'BNN Kota Malang', '2019'),
(541, 'Laki-laki', 14, 13, 'Jl. Jedong Wagir', 413, 20, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(542, 'Perempuan', 14, 13, 'Jl. Gapura Pandanlandung', 415, 20, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(543, 'Laki-laki', 16, 13, 'Jl. Pandanlandung', 415, 20, 'Hely, Rokok', 2, 'BNN Kota Malang', '2019'),
(544, 'Laki-laki', 16, 13, 'Jl. Terusan Sekolahan Krajan', 415, 20, 'LL (Triheksifenidil Hcl), Miras, Rokok', 2, 'BNN Kota Malang', '2019'),
(545, 'Perempuan', 15, 13, 'Jl. Sekolahan Krajan', 415, 20, 'LL (Triheksifenidil Hcl)', 3, 'Sadar Hati', '2019'),
(546, 'Laki-laki', 15, 13, 'Jl. Raya Sidorahayu Perumahan Griya Sidorahayu', 419, 20, 'LL (Triheksifenidil Hcl), Bir Bintang', 2, 'BNN Kota Malang', '2019'),
(547, 'Laki-laki', 13, 13, 'Jl. Sitirejo, Lemah Duwur', 420, 20, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(548, 'Laki-laki', 19, 13, 'Jl. Raya Mendalanwangi', 414, 20, 'Alkohol, LL (Triheksifenidil Hcl)', 3, 'RSK Hayunanto Medical Center', '2018'),
(549, 'Laki-laki', 18, 13, 'Sitirejo Reco Wagir', 420, 20, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2018'),
(550, 'Laki-laki', 19, 13, 'Jl. Raya Mendalanwangi', 414, 20, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2018'),
(551, 'Laki-laki', 18, 13, 'Mendalanwangi', 414, 20, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2018'),
(552, 'Laki-laki', 16, 13, 'Jl. Sunan Giri Krobyokan', 413, 20, 'LL (Triheksifenidil Hcl)', 3, 'RSK Hayunanto Medical Center', '2018'),
(553, 'Laki-laki', 16, 13, 'Jl. Gapura krajan', 415, 20, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2018'),
(554, 'Laki-laki', 17, 13, 'Lemah Duwur Sitirejo', 420, 20, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2018'),
(555, 'Laki-laki', 18, 13, 'Jl. Pandanlandung', 415, 20, 'Tramadol, Alkohol', 3, 'RSK Hayunanto Medical Center', '2019'),
(556, 'Laki-laki', 18, 13, 'Desa Temu Sitirejo', 420, 20, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2019'),
(557, 'Laki-laki', 18, 13, 'Jl. Gn. Jati Pandanlandung', 415, 20, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2019'),
(558, 'Laki-laki', 19, 13, 'Gg. Flamboyan Wagir', 417, 20, 'LL (Triheksifenidil Hcl), Tramadol', 3, 'RSK Hayunanto Medical Center', '2019'),
(559, 'Laki-laki', 16, 13, 'Pandanlandung', 415, 20, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2019'),
(560, 'Laki-laki', 16, 13, 'Jl. Sitirejo Temu', 420, 20, 'LL (Triheksifenidil Hcl), Tramadol, Antimo, Alkohol', 3, 'RSK Hayunanto Medical Center', '2019'),
(561, 'NULL', 18, 13, 'Jl. Sitirejo Temu Lemah Duwur', 420, 20, 'Tramadol, LL (Triheksifenidil Hcl)', 3, 'RSK Hayunanto Medical Center', '2019'),
(562, 'Laki-laki', 15, 13, 'Jl. Raya Bandulan No.49', 58, 5, 'LL (Triheksifenidil Hcl), Alkohol', 2, 'BNN Kota Malang', '2019'),
(563, 'Laki-laki', 14, 13, 'Jl. Bandulan Baru Perumahan Bandulan Baru Regency', 58, 5, 'LL (Triheksifenidil Hcl), Alkohol', 2, 'BNN Kota Malang', '2019'),
(564, 'Laki-laki', 15, 13, 'Jl. S. Supriadi Gg. VII', 58, 5, 'Alkohol', 2, 'BNN Kota Malang', '2019'),
(565, 'Laki-laki', 16, 13, 'Jl. Tj. Putra Yudha II', 11, 5, 'LL (Triheksifenidil Hcl), Arak', 2, 'BNN Kota Malang', '2019'),
(566, 'Laki-laki', 15, 13, 'Jl. Pelabuhan Tj. Perak No.46', 57, 5, 'LL (Triheksifenidil Hcl), Arak', 2, 'BNN Kota Malang', '2019'),
(567, 'Laki-laki', 16, 13, 'Jl. Simpang Putra Yudha II', 11, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(568, 'Laki-laki', 15, 13, 'Jl. Moch Rasyid No.10', 26, 5, 'LL (Triheksifenidil Hcl), Alkohol', 2, 'BNN Kota Malang', '2019'),
(569, 'Perempuan', 15, 13, 'Jl. Pelabuhan Tj. Perak No.30', 57, 5, 'LL (Triheksifenidil Hcl), Arak', 2, 'BNN Kota Malang', '2019'),
(570, 'Laki-laki', 16, 13, 'Jl. S.Supriadi Gg. 8 No.23', 63, 5, 'LL (Triheksifenidil Hcl), Alkohol', 2, 'BNN Kota Malang', '2019'),
(571, 'Laki-laki', 13, 13, 'Jl. Kolonel Sugiono', 21, 5, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(572, 'Laki-laki', 15, 13, 'Jl. Sukun Sidomulyo', 11, 5, 'LL (Triheksifenidil Hcl), Alkohol', 2, 'BNN Kota Malang', '2019'),
(573, 'Laki-laki', 22, 17, 'Jl. S. Supriadi IX No.105, Sukun', 63, 5, 'LL (Triheksifenidil Hcl), Ganja', 1, 'RSJ Lawang', '2019'),
(574, 'Laki-laki', 37, 16, 'Karangbesuki', 60, 5, 'Sabu-sabu', 3, 'RSK Hayunanto Medical Center', '2019'),
(575, 'Laki-laki', 20, 16, 'Jl. Pelabuhan Ketapang No.26', 57, 5, 'LL (Triheksifenidil Hcl), Alkohol, Ganja, Sabu-sabu', 1, 'RSJ Lawang', '2019'),
(576, 'Laki-laki', 21, 18, 'Sukun Gempol No.24', 11, 5, 'Alkohol, Dextro, Kamlet, Subuxone', 4, 'RSJ Lawang', '2019'),
(577, 'Laki-laki', 35, 17, 'Gang II No.17, Tanjungrejo', 11, 5, 'Alkohol, Sabu-sabu, Ganja, Benzo', 1, 'RSJ Lawang', '2019'),
(578, 'Laki-laki', 23, 18, 'Jl. Sukun Gempol', 11, 5, 'Subuxone', 1, 'RSJ Lawang', '2019'),
(579, 'Laki-laki', 22, 18, 'Jl. Sukun Gempol Tanjungrejo', 11, 5, 'Subuxone', 1, 'RSJ Lawang', '2019'),
(580, 'Laki-laki', 17, 13, 'Jalan Kepuh Gg. 2 No.24', 22, 5, 'Alkohol, Ganja, LL (Triheksifenidil Hcl)', 1, 'RSK Hayunanto Medical Center', '2019'),
(581, 'Laki-laki', 18, 13, 'Jl. Kolonel Sugiono', 21, 5, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2019'),
(582, 'Laki-laki', 18, 13, 'Jalan Raya Kepuh, Gang 1, Bandungrejosar', 22, 5, 'Alkohol, Ganja, LL (Triheksifenidil Hcl)', 1, 'RSK Hayunanto Medical Center', '2019'),
(583, 'Laki-laki', 17, 13, 'Jl. Gadang Gang 4A No.23', 21, 5, 'LL (Triheksifenidil Hcl)', 3, 'RSK Hayunanto Medical Center', '2019'),
(584, 'Laki-laki', 16, 13, 'Jl. Pelabuhan Tanjung Priok', 57, 5, 'LL (Triheksifenidil Hcl)', 3, 'RSK Hayunanto Medical Center', '2019'),
(585, 'Laki-laki', 18, 13, 'Jl. Gadang Gg. VI', 21, 5, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2019'),
(586, 'Laki-laki', 17, 13, 'Jl. Raya Lowokdoro Gg. 2, Kebonsari Perum Gadang Mandiri', 61, 5, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2019'),
(587, 'Laki-laki', 17, 13, 'Jl. Kepuh Gg. X', 22, 5, 'LL (Triheksifenidil Hcl)', 3, 'RSK Hayunanto Medical Center', '2019'),
(588, 'Laki-laki', 18, 13, 'Jl. Kolonel Sugiono No.7', 21, 5, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2019'),
(589, 'Laki-laki', 18, 13, 'Klayatan III Gg. Melati', 22, 5, 'LL (Triheksifenidil Hcl)', 3, 'RSK Hayunanto Medical Center', '2019'),
(590, 'Laki-laki', 17, 13, 'Jl. Kepuh Gg. X', 22, 5, 'LL (Triheksifenidil Hcl)', 3, 'RSK Hayunanto Medical Center', '2019'),
(591, 'Laki-laki', 17, 13, 'Gang 8, Bandulan, Sukun', 58, 5, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2019'),
(592, 'Laki-laki', 15, 13, 'Jl. Kepuh Gg. X', 22, 5, 'LL (Triheksifenidil Hcl)', 3, 'RSK Hayunanto Medical Center', '2019'),
(593, 'Laki-laki', 15, 13, 'Jl. Gadang Gg. 4', 21, 5, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2019'),
(594, 'Laki-laki', 18, 13, 'Gg. 8 Bandulan Kec. Sukun', 58, 5, 'Alkohol, Ganja, LL (Triheksifenidil Hcl)', 3, 'RSK Hayunanto Medical Center', '2019'),
(595, 'Laki-laki', 18, 13, 'Jl. Gadang Gg. 3 No.9', 21, 5, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2019'),
(596, 'Laki-laki', 17, 13, 'Jl. Gadang 4 Gg. 4A No.23', 21, 5, 'LL (Triheksifenidil Hcl), Alkohol', 2, 'BNN Kota Malang', '2019'),
(597, 'Perempuan', 17, 13, 'Jl. Raya Bandulan Gg. V', 58, 5, 'LL (Triheksifenidil Hcl)', 3, 'RSK Hayunanto Medical Center', '2019'),
(598, 'Laki-laki', 16, 13, 'Jl. Bandulan Gg. 8 No.485', 58, 5, 'LL (Triheksifenidil Hcl)', 3, 'RSK Hayunanto Medical Center', '2019'),
(599, 'Laki-laki', 15, 13, 'Jl. Imam Sujono', 26, 5, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2019'),
(600, 'Laki-laki', 16, 13, 'Jln. Bandulan gang 9', 58, 5, 'LL (Triheksifenidil Hcl)', 3, 'RSK Hayunanto Medical Center', '2019'),
(601, 'Laki-laki', 16, 13, 'Jl. Rawisari', 26, 5, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2019'),
(602, 'Laki-laki', 17, 13, 'Jl. Klp. Sawit Pisang Candi', 62, 5, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2019'),
(603, 'Laki-laki', 15, 13, 'Sukun Gempol Tanjungrejo', 11, 5, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2019'),
(604, 'Laki-laki', 17, 13, 'Jl. Pelabuhan Tanjung Priok', 57, 5, 'LL (Triheksifenidil Hcl)', 3, 'RSK Hayunanto Medical Center', '2019'),
(605, 'Laki-laki', 16, 13, 'Jl. Raya Tebo Selatan', 26, 5, 'LL (Triheksifenidil Hcl)', 3, 'RSK Hayunanto Medical Center', '2019'),
(606, 'Laki-laki', 18, 13, 'Jl. Raya Candi V Karangbesuki', 60, 5, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2019'),
(607, 'Laki-laki', 18, 13, 'Gg. 5 No.6 no 42, Bandungrejosari', 22, 5, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2019'),
(608, 'Perempuan', 17, 13, 'Jl. Suwari Sel. No.2', 63, 5, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2019'),
(609, 'Laki-laki', 18, 13, 'Perumahan LPK 1 Jl. Raya Tebo Sel. No.1A, Mulyorejo ', 26, 5, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2019'),
(610, 'Laki-laki', 18, 13, 'Jl. Budi Utomo', 26, 5, 'LL (Triheksifenidil Hcl)', 3, 'RSK Hayunanto Medical Center', '2019'),
(611, 'Laki-laki', 15, 13, 'Jl. Kemantren 1', 22, 5, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2019'),
(612, 'Perempuan', 19, 13, 'Jl. Kolonel Sugiono X A', 59, 5, 'LL (Triheksifenidil Hcl)', 3, 'RSK Hayunanto Medical Center', '2019'),
(613, 'Laki-laki', 18, 13, 'Jl. Bingkil No.16', 59, 5, 'Tramadol, Alkohol', 3, 'RSK Hayunanto Medical Center', '2019'),
(614, 'Perempuan', 17, 13, 'Jl. Raya Tebo Tengah No.85', 26, 5, 'Tramadol', 3, 'RSK Hayunanto Medical Center', '2019'),
(615, 'Perempuan', 18, 13, 'Jl. Bandulan Baru No.107', 58, 5, 'Tramadol', 3, 'RSK Hayunanto Medical Center', '2019'),
(616, 'Laki-laki', 16, 13, 'Jl. Rawisari Mulyorejo', 26, 5, 'LL (Triheksifenidil Hcl), Tramadol, Alkohol', 3, 'RSK Hayunanto Medical Center', '2018'),
(617, 'Laki-laki', 15, 13, 'Jl. Janti Bar. & Gg. 3', 22, 5, 'LL (Triheksifenidil Hcl)', 3, 'RSK Hayunanto Medical Center', '2018'),
(618, 'Laki-laki', 17, 13, 'Jl. Klp. Sawit No.1, Pisang Candi', 62, 5, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2018'),
(619, 'Laki-laki', 16, 13, 'Gadang Gg. 17', 21, 5, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2018'),
(620, 'Laki-laki', 17, 13, 'Jl. Simpang Sukun No.51', 63, 5, 'LL (Triheksifenidil Hcl), Ganja, Alkohol', 4, 'RSK Hayunanto Medical Center', '2018'),
(621, 'Laki-laki', 17, 13, 'Jl. Gadang Gg. 21 B No.83', 21, 5, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2018'),
(622, 'Laki-laki', 17, 13, 'Jl. Pisang Candi Barat', 62, 5, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2018'),
(623, 'Laki-laki', 18, 13, 'Jl. Kepuh Gg. X', 22, 5, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2018'),
(624, 'Laki-laki', 19, 13, 'Jl. Mergan', 63, 5, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2018'),
(625, 'Perempuan', 16, 13, 'Jl. Tebo Selatan', 26, 5, 'LL (Triheksifenidil Hcl)', 3, 'RSK Hayunanto Medical Center', '2018'),
(626, 'Perempuan', 18, 13, 'Jl. Mergan Musholla', 11, 5, 'LL (Triheksifenidil Hcl)', 3, 'RSK Hayunanto Medical Center', '2018'),
(627, 'Laki-laki', 15, 13, 'Jl. Bandulan Gg. 1 No.2', 58, 5, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2018'),
(628, 'Laki-laki', 18, 13, 'Jl. Raya Mulyorejo', 26, 5, 'LL (Triheksifenidil Hcl), Tramadol, Antimo, Alkohol', 2, 'RSK Hayunanto Medical Center', '2018'),
(629, 'Perempuan', 17, 13, 'Jl. Raya Candi VI C No.345', 60, 5, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2018'),
(630, 'Laki-laki', 17, 13, 'Jl. Kolonel Sugiono No.8', 21, 5, 'LL (Triheksifenidil Hcl), Tramadol, Alkohol', 3, 'RSK Hayunanto Medical Center', '2018'),
(631, 'Laki-laki', 18, 13, 'Jl. Bandulan Gg. 9', 58, 5, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2018'),
(632, 'Laki-laki', 16, 13, 'Jl. Bandulan Barat', 58, 5, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2018'),
(633, 'Laki-laki', 15, 13, 'Jalan Budi Utomo Sedudut, Mulyorejo', 26, 5, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2018'),
(634, 'Laki-laki', 16, 13, 'Jl. Nuri', 63, 5, 'LL (Triheksifenidil Hcl), Tramadol, Alkohol', 3, 'RSK Hayunanto Medical Center', '2018'),
(635, 'Laki-laki', 17, 13, 'Jl. Kemantren II', 22, 5, 'LL (Triheksifenidil Hcl), Alkohol, Tramadol', 3, 'RSK Hayunanto Medical Center', '2019'),
(636, 'Laki-laki', 17, 13, 'Jl. Bandulan Gg. 1F', 58, 5, 'LL (Triheksifenidil Hcl)', 3, 'RSK Hayunanto Medical Center', '2019'),
(637, 'Laki-laki', 16, 13, 'Jl. Pelabuhan Tj. Emas No.54', 57, 5, 'LL (Triheksifenidil Hcl), Alkohol', 1, 'RSK Hayunanto Medical Center', '2019'),
(638, 'Laki-laki', 17, 13, 'Jl. Klayatan 1 No.5', 22, 5, 'Tramadol, LL (Triheksifenidil Hcl)', 3, 'RSK Hayunanto Medical Center', '2019'),
(639, 'Laki-laki', 16, 13, 'Jl. Barumun No.16', 50, 3, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(640, 'Laki-laki', 16, 13, 'Jl. Aries Munandar Gg. 3 No.50', 28, 3, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(641, 'Laki-laki', 17, 13, 'Jl. Jaksa Agung Suprapto No.1', 25, 3, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(642, 'Perempuan', 16, 13, 'Jl. Jaksa Agung Suprapto No.1B', 25, 3, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(643, 'Laki-laki', 19, 13, 'Jl. Gatot Subroto Gg. IV No.521', 28, 3, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(644, 'Laki-laki', 18, 13, 'Jl. Bareng Raya II', 44, 3, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(645, 'Perempuan', 19, 13, 'Jl. Bareng Raya II', 44, 3, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(646, 'Perempuan', 14, 13, 'Jl. Aris Munandar', 24, 3, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(647, 'Laki-laki', 17, 13, 'Jl. Bareng Raya II', 44, 3, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(648, 'Laki-laki', 18, 13, 'Jl. Jakarta', 49, 3, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(649, 'Laki-laki', 16, 13, 'Jl. Bareng Raya II G', 44, 3, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(650, 'Laki-laki', 16, 13, 'Jl. A.R. Hakim Gg. V', 47, 3, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(651, 'Laki-laki', 15, 13, 'Jl. Mayjend Panjaitan No.39', 49, 3, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(652, 'Laki-laki', 14, 13, 'Jl. Brigjend Slamet Riadi', 25, 3, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(653, 'Perempuan', 13, 13, 'Bareng Raya II', 44, 3, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2018'),
(654, 'Laki-laki', 13, 13, 'Jl. Pekalongan Penanggungan', 49, 3, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2018'),
(655, 'Laki-laki', 15, 13, 'Jl. Bareng Kartini Gg. 3 No.62', 44, 3, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2018'),
(656, 'Laki-laki', 15, 13, 'Jl. Brigjen Slamet Riyadi Gg. 6', 25, 3, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2018'),
(657, 'Laki-laki', 14, 13, 'Jl. BB. Riadi Gg. 9', 25, 3, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2018'),
(658, 'Laki-laki', 15, 13, 'Jl. Bareng Raya II N No.530', 44, 3, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2018'),
(659, 'Laki-laki', 15, 13, 'Jl. Tapak Siring Gg. 4', 51, 3, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2019'),
(660, 'Laki-laki', 13, 13, 'Jl. Brigjend Slamet Riadi Gg. 9', 25, 3, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2019'),
(661, 'Laki-laki', 12, 13, 'Jl. Brigjen Slamet Riyadi', 25, 3, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2019'),
(662, 'Perempuan', 15, 13, 'Jl. Kelud No.11', 44, 3, 'Arak, Bintang, Topi Miring', 2, 'BNN Kota Malang', '2019'),
(663, 'Laki-laki', 18, 13, 'Jl. Kapten Piere Tendean No.2', 46, 3, 'LL (Triheksifenidil Hcl), Bodrex, Bigcola', 2, 'BNN Kota Malang', '2019'),
(664, 'Perempuan', 15, 13, 'Jl. Tapak Siring Gg. 2 No.43', 51, 3, 'Antimo, Bodrex, Bigcola', 2, 'BNN Kota Malang', '2019'),
(665, 'Perempuan', 13, 13, 'Jl. Aris Munandar Gg. 5', 24, 3, 'Obat-obatan (Antimo)', 2, 'BNN Kota Malang', '2019'),
(666, 'Perempuan', 15, 13, 'Jl. Bareng Kulon VI No.915', 44, 3, 'LL (Triheksifenidil Hcl), Bigcola, Antimo, Bodrex', 2, 'BNN Kota Malang', '2019'),
(667, 'Laki-laki', 13, 13, 'Jl. Batujajar Gg. 2', 49, 3, 'Bigcola, Antimo, Autan', 2, 'BNN Kota Malang', '2019'),
(668, 'Laki-laki', 14, 13, 'Jl. Letjen Sutoyo', 50, 3, 'Bigcola, Antimo, Autan, Arak', 2, 'BNN Kota Malang', '2019'),
(669, 'Laki-laki', 15, 13, 'Jl. Besar Ijen', 25, 3, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2019'),
(670, 'Laki-laki', 16, 13, 'Jl. Sukapura No.101 Rampal Celaket', 50, 3, 'LL (Triheksifenidil Hcl), Bir Bintang, Bigcola, MCDonald', 2, 'BNN Kota Malang', '2019'),
(671, 'Perempuan', 16, 13, 'Jl. Mayjend Panjaitan', 49, 3, 'LL (Triheksifenidil Hcl), Antimo, Arak, Bigcola, Alkohol, Yakult', 2, 'BNN Kota Malang', '2019'),
(672, 'Laki-laki', 19, 13, 'Jl. Brigjend. Katamso Gg. IV', 47, 3, 'LL (Triheksifenidil Hcl), Ganja, Miras', 2, 'BNN Kota Malang', '2018'),
(673, 'Laki-laki', 19, 13, 'Jl. Bogor No.6a', 49, 3, 'LL (Triheksifenidil Hcl), Oplosan', 2, 'BNN Kota Malang', '2018'),
(674, 'Laki-laki', 16, 13, 'Jl. Arif Margono Gg. 3 No. 9', 46, 3, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(675, 'Perempuan', 14, 13, 'Jl. Bareng Raya II No.286', 44, 3, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(676, 'Laki-laki', 14, 13, 'Jl. S. Supriadi Ngaglik Es No.31', 46, 3, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(677, 'Laki-laki', 13, 13, 'Jl. Rumah Sakit V No.3', 48, 3, 'LL (Triheksifenidil Hcl), Arak', 2, 'BNN Kota Malang', '2018'),
(678, 'Laki-laki', 14, 13, 'Jl. Bareng Raya II', 44, 3, 'OTD, LL (Triheksifenidil Hcl), Miras, Antimo', 2, 'BNN Kota Malang', '2018'),
(679, 'Laki-laki', 15, 13, 'Jl. Bareng Raya IIA No.37', 44, 3, 'LL (Triheksifenidil Hcl), Miras, Rokok', 2, 'BNN Kota Malang', '2018'),
(680, 'Perempuan', 16, 13, 'Jl. Bareng Tenes 4B ', 44, 3, 'LL (Triheksifenidil Hcl), Miras, Rokok', 2, 'BNN Kota Malang', '2018'),
(681, 'Laki-laki', 17, 13, 'Jl. Galunggung No.11', 45, 3, 'LL (Triheksifenidil Hcl), Miras, Rokok', 2, 'BNN Kota Malang', '2018'),
(682, 'Laki-laki', 16, 13, 'Jl. Bareng Tengah V', 44, 3, 'LL (Triheksifenidil Hcl), Miras, Rokok', 2, 'BNN Kota Malang', '2018'),
(683, 'Laki-laki', 15, 13, 'Jl. Yulius Usman Gg. 5', 46, 3, 'LL (Triheksifenidil Hcl), Miras, Rokok', 2, 'BNN Kota Malang', '2018'),
(684, 'Laki-laki', 16, 13, 'Jl. Klampok Kasri Gg. 2D', 45, 3, 'Miras, Rokok', 2, 'BNN Kota Malang', '2018'),
(685, 'Laki-laki', 15, 13, 'Jl.Bareng Kulon VI No.1011', 44, 3, 'LL (Triheksifenidil Hcl), Rokok', 2, 'BNN Kota Malang', '2018'),
(686, 'Perempuan', 15, 13, 'Jl. Embong Brantas', 24, 3, 'LL (Triheksifenidil Hcl), Rokok', 2, 'BNN Kota Malang', '2018'),
(687, 'Perempuan', 14, 13, 'Jl. Bromo Gg. 1 No.1177', 25, 3, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2018'),
(688, 'Laki-laki', 14, 13, 'Jl. Bareng Raya II C', 44, 3, 'LL (Triheksifenidil Hcl), OTD, Miras', 2, 'BNN Kota Malang', '2018'),
(689, 'Laki-laki', 14, 13, 'Jl. KH Hasyim Ashari Gg. IV No.1110', 47, 3, 'LL (Triheksifenidil Hcl), Miras', 2, 'BNN Kota Malang', '2018'),
(690, 'Laki-laki', 14, 13, 'Jl. Bareng Tengah Gg. 5D', 44, 3, 'Miras, Rokok', 2, 'BNN Kota Malang', '2018'),
(691, 'Laki-laki', 36, 18, 'Jl. K. H. Zainul Arifin Gg. VI No.1071', 24, 3, 'Alkohol, Ganja, Heroin, Sabu-sabu, Obat-obatan, Subuxone', 1, 'RSK Hayunanto Medical Center', '2018'),
(692, 'Laki-laki', 33, 15, 'Jl. Zainul Arifin ', 28, 3, 'Alkohol, Ganja, Sabu-sabu', 1, 'RSK Hayunanto Medical Center', '2018'),
(693, 'Laki-laki', 15, 13, 'Jl. Aris Munandar Gang 4A', 24, 3, 'LL (Triheksifenidil Hcl), Ganja, TM, Arak', 3, 'RSK Hayunanto Medical Center', '2019'),
(694, 'Laki-laki', 16, 13, 'Jl. Yulius Usman Gg. III, Kasin', 46, 3, 'LL (Triheksifenidil Hcl)', 3, 'Sadar Hati', '2019'),
(695, 'Laki-laki', 14, 13, 'Jl. Bareng Raya II No.471', 44, 3, 'LL (Triheksifenidil Hcl), Arak', 3, 'Sadar Hati', '2019'),
(696, 'Laki-laki', 14, 13, 'Jl. IR Rais Gg. IIA No.16', 44, 3, 'LL (Triheksifenidil Hcl), Arak', 2, 'BNN Kota Malang', '2019'),
(697, 'Perempuan', 14, 13, 'Jl. I.R. Rais No.49 Bareng', 44, 3, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(698, 'Laki-laki', 14, 13, 'Jl. Bareng Tenes 4', 47, 3, 'Arak', 2, 'BNN Kota Malang', '2019'),
(699, 'Perempuan', 16, 13, 'Jl. Aris Munandar Gang 4A, Kiduldalem', 24, 3, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(700, 'Laki-laki', 16, 13, 'Jl. Aris Munandar No.3', 24, 3, 'LL (Triheksifenidil Hcl), Alkohol', 2, 'BNN Kota Malang', '2019'),
(701, 'Laki-laki', 16, 13, 'Jl. IR Rais Gg. 2', 44, 3, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(702, 'Laki-laki', 15, 13, 'Jl. Ikhwan Ridwan Rais Gg. 2 No.28', 44, 3, 'LL (Triheksifenidil Hcl), Alkohol', 2, 'BNN Kota Malang', '2019'),
(703, 'Laki-laki', 16, 13, 'Jl. Arif Margono Gg. VI No.1632', 46, 3, 'LL (Triheksifenidil Hcl), Alkohol', 2, 'BNN Kota Malang', '2019'),
(704, 'Laki-laki', 13, 13, 'Jl. Bareng Tenes 4B', 44, 3, 'LL (Triheksifenidil Hcl)', 2, 'BNN Kota Malang', '2019'),
(705, 'Laki-laki', 14, 13, 'Jl. Yulius Usman Gg. IV', 46, 3, 'Tramadol', 2, 'BNN Kota Malang', '2019'),
(706, 'Laki-laki', 22, 19, 'Jl. Kawi No.10', 47, 3, 'Sabu-sabu', 1, 'RSJ Lawang', '2019'),
(707, 'Laki-laki', 19, 19, 'Jl. Kawi No.10', 47, 3, 'Sabu-sabu', 1, 'RSK Hayunanto Medical Center', '2019'),
(708, 'Laki-laki', 38, 17, 'Jl. Gatot Subroto Gg. II No.506', 28, 3, 'Putaw, Metadon', 1, 'Corpus Christi', '2019'),
(709, 'Laki-laki', 19, 13, 'Jl. Bareng Raya II', 44, 3, 'LL (Triheksifenidil Hcl)', 3, 'RSK Hayunanto Medical Center', '2019'),
(710, 'Laki-laki', 18, 13, 'Jl. Kyai H. Hasyim Ashari Gg. VI', 47, 3, 'LL (Triheksifenidil Hcl)', 3, 'RSK Hayunanto Medical Center', '2019'),
(711, 'Laki-laki', 17, 13, 'Jl. Bareng Raya', 44, 3, 'LL (Triheksifenidil Hcl), Alkohol', 2, 'BNN Kota Malang', '2019'),
(712, 'Laki-laki', 17, 13, 'Jl. Welirang No.39', 25, 3, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2018'),
(713, 'Laki-laki', 17, 13, 'Jl. Bareng Raya II', 44, 3, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2018'),
(714, 'Laki-laki', 17, 13, 'Jl. Bareng Raya II N', 44, 3, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2018'),
(715, 'Laki-laki', 18, 13, 'Jl. Galunggung', 45, 3, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2018'),
(716, 'Laki-laki', 18, 13, 'Jl. Aries Munandar Gg. 5 No.6', 24, 3, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2018'),
(717, 'Perempuan', 16, 13, 'Gg. 6, Oro-oro Dowo', 25, 3, 'Tramadol, Alkohol', 3, 'RSK Hayunanto Medical Center', '2018'),
(718, 'Laki-laki', 17, 13, 'Jl. Jaksa Agung Suprapto Gg. 1 No.10', 51, 3, 'LL (Triheksifenidil Hcl), Alkohol', 3, 'RSK Hayunanto Medical Center', '2018');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pekerjaan`
--

CREATE TABLE `tb_pekerjaan` (
  `id_pekerjaan` int(11) NOT NULL,
  `pekerjaan` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pekerjaan`
--

INSERT INTO `tb_pekerjaan` (`id_pekerjaan`, `pekerjaan`) VALUES
(13, 'Pelajar'),
(14, 'Pemulung'),
(15, 'Pegawai Negeri Sipil'),
(16, 'Tidak Bekerja'),
(17, 'Swasta'),
(18, 'Wiraswasta'),
(19, 'Mahasiswa'),
(20, 'ASN (Aparatur Sipil Negara)'),
(21, 'Pengamen'),
(22, 'Buruh Tani'),
(23, 'IRT'),
(24, 'PSK'),
(25, 'Seniman');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_surat_selesai`
--

CREATE TABLE `tb_surat_selesai` (
  `id_surat` int(11) NOT NULL,
  `surat_selesai` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_surat_selesai`
--

INSERT INTO `tb_surat_selesai` (`id_surat`, `surat_selesai`) VALUES
(1, 'Ada'),
(2, 'Tidak Ada');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tahapan`
--

CREATE TABLE `tb_tahapan` (
  `id_tahapan` int(11) NOT NULL,
  `tahapan` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_tahapan`
--

INSERT INTO `tb_tahapan` (`id_tahapan`, `tahapan`) VALUES
(1, 'Detoksifikasi'),
(2, 'Pembinaan'),
(3, 'Rawat Jalan'),
(4, 'Rawat Inap'),
(5, 'Wajib Lapor');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `password`) VALUES
(1, 'admin', 'bnn');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `limits`
--
ALTER TABLE `limits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_jenis_kelamin`
--
ALTER TABLE `tb_jenis_kelamin`
  ADD PRIMARY KEY (`id_jenis_kelamin`);

--
-- Indexes for table `tb_kecamatan`
--
ALTER TABLE `tb_kecamatan`
  ADD PRIMARY KEY (`id_kecamatan`);

--
-- Indexes for table `tb_kelurahan`
--
ALTER TABLE `tb_kelurahan`
  ADD PRIMARY KEY (`id_kelurahan`);

--
-- Indexes for table `tb_pasien_rehab`
--
ALTER TABLE `tb_pasien_rehab`
  ADD PRIMARY KEY (`id_pasien_rehab`);

--
-- Indexes for table `tb_pecandu`
--
ALTER TABLE `tb_pecandu`
  ADD PRIMARY KEY (`id_pecandu`);

--
-- Indexes for table `tb_pekerjaan`
--
ALTER TABLE `tb_pekerjaan`
  ADD PRIMARY KEY (`id_pekerjaan`);

--
-- Indexes for table `tb_surat_selesai`
--
ALTER TABLE `tb_surat_selesai`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `tb_tahapan`
--
ALTER TABLE `tb_tahapan`
  ADD PRIMARY KEY (`id_tahapan`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `limits`
--
ALTER TABLE `limits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_jenis_kelamin`
--
ALTER TABLE `tb_jenis_kelamin`
  MODIFY `id_jenis_kelamin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_kecamatan`
--
ALTER TABLE `tb_kecamatan`
  MODIFY `id_kecamatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `tb_kelurahan`
--
ALTER TABLE `tb_kelurahan`
  MODIFY `id_kelurahan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=447;
--
-- AUTO_INCREMENT for table `tb_pasien_rehab`
--
ALTER TABLE `tb_pasien_rehab`
  MODIFY `id_pasien_rehab` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
--
-- AUTO_INCREMENT for table `tb_pecandu`
--
ALTER TABLE `tb_pecandu`
  MODIFY `id_pecandu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=720;
--
-- AUTO_INCREMENT for table `tb_pekerjaan`
--
ALTER TABLE `tb_pekerjaan`
  MODIFY `id_pekerjaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `tb_surat_selesai`
--
ALTER TABLE `tb_surat_selesai`
  MODIFY `id_surat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_tahapan`
--
ALTER TABLE `tb_tahapan`
  MODIFY `id_tahapan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
