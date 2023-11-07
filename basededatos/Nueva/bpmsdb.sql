-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-11-2023 a las 03:36:30
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bpmsdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formulario_contacto`
--

CREATE TABLE `formulario_contacto` (
  `id` int(11) NOT NULL,
  `nombre_completo` varchar(50) NOT NULL,
  `email` varchar(80) NOT NULL,
  `asunto` varchar(70) NOT NULL,
  `mensaje` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `formulario_contacto`
--

INSERT INTO `formulario_contacto` (`id`, `nombre_completo`, `email`, `asunto`, `mensaje`) VALUES
(2, 'Tifanny Cardona', 'tifanyBichota@gmail.com', 'Tengo dudas de un servicio ', 'Es muy accesible el costo. Me gustaria saber si implementarán nuevos servicios. Gracias. Saludos.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` char(50) DEFAULT NULL,
  `UserName` char(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'JaLu Nails', 'admin', 7898799798, 'msevillab@cweb.com', '4b67deeb9aba04a5b54632ad19934f26', '2019-07-25 06:21:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblappointment`
--

CREATE TABLE `tblappointment` (
  `ID` int(10) NOT NULL,
  `AptNumber` varchar(80) DEFAULT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `PhoneNumber` bigint(11) DEFAULT NULL,
  `AptDate` varchar(120) DEFAULT NULL,
  `AptTime` varchar(120) DEFAULT NULL,
  `Services` varchar(120) DEFAULT NULL,
  `ApplyDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `RemarkDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tblappointment`
--

INSERT INTO `tblappointment` (`ID`, `AptNumber`, `Name`, `Email`, `PhoneNumber`, `AptDate`, `AptTime`, `Services`, `ApplyDate`, `Remark`, `Status`, `RemarkDate`) VALUES
(8, '496532914', 'Roman Garcia', 'rgarcia@cweb.com', 3211076843, '1/23/2020', '6:30pm', 'Fruit Facial', '2020-01-23 23:50:09', 'Excelente Cliente', '1', '2020-01-23 23:52:03'),
(16, '955188368', 'JAIR PRECIOSO', 'jair_210@gmail.com', 18729730, '10/16/2023', '1:00am', 'Masaje Facial Vertido', '2023-10-18 15:14:05', 'Su cita ha sido aceptada', '1', '2023-10-18 15:17:03'),
(17, '254423322', 'diego q alcan', 'diego12@mgail.com', 34234113, '10/26/2023', '5:00pm', 'Depilado de Piernas', '2023-10-21 20:00:07', 'Su solicitud ha sido aceptado', '1', '2023-10-23 17:45:00'),
(18, '966159763', 'flor', 'flor@gmail.com', 4433839811, '10/28/2023', '12:00pm', 'Depilado de Piernas', '2023-10-23 13:53:01', 'Ha sido aceptada', '1', '2023-10-23 13:55:30'),
(19, '699595138', 'mau', 'mau12@gmail.com', 2339980971, '10/27/2023', '12:30am', 'Facial de Pepino', '2023-10-23 17:56:22', 'La solicitud ha sido aceptada', '1', '2023-10-23 17:57:34'),
(20, '249502438', 'nelson corzby', 'nel12@gmail.com', 4433839811, '10/16/2023', '12:30am', 'Manicure Precio Estudiantes', '2023-10-23 18:03:36', 'JAAJAS', '1', '2023-10-23 18:06:09'),
(21, '480384515', 'Carlos Iván', 'ivxn12_ju@hotmail.com', 5534879801, '10/30/2023', '4:30pm', 'Manicure Precio Estudiantes', '2023-10-27 05:46:33', 'Tu citas ha sido aceptada', '1', '2023-10-27 05:49:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcustomers`
--

CREATE TABLE `tblcustomers` (
  `ID` int(10) NOT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Gender` enum('Mujer','Hombre','No definido') DEFAULT NULL,
  `Details` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tblcustomers`
--

INSERT INTO `tblcustomers` (`ID`, `Name`, `Email`, `MobileNumber`, `Gender`, `Details`, `CreationDate`, `UpdationDate`) VALUES
(2, 'Edith Velazco', 'dgarzon@cweb.com', 3014673497814, 'Mujer', 'Taken haircut by him', '2019-07-26 11:10:02', '2020-01-24 15:08:42'),
(6, 'Roberto Galan', 'rgalan@cweb.com', 3172232526, 'Hombre', 'Interesante cliente', '2020-01-24 14:56:35', '2023-10-27 05:53:50'),
(8, 'Nelson ', 'nelson@hotmai.com', 5544332298, 'Mujer', 'Manicure con masaje.', '2023-10-23 17:44:21', NULL),
(10, 'JAIR PRECIOSO	', 'jair_210@gmail.com', 4418729730, 'Hombre', 'Es un hombre con ganas de innovación en sus uñas', '2023-10-27 06:01:21', '2023-10-27 06:02:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblinvoice`
--

CREATE TABLE `tblinvoice` (
  `id` int(11) NOT NULL,
  `Userid` int(11) DEFAULT NULL,
  `ServiceId` int(11) DEFAULT NULL,
  `BillingId` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tblinvoice`
--

INSERT INTO `tblinvoice` (`id`, `Userid`, `ServiceId`, `BillingId`, `PostingDate`) VALUES
(26, 1, 1, 535139230, '2020-01-23 23:55:32'),
(27, 6, 1, 232733358, '2020-01-24 14:58:47'),
(29, 4, 15, 609822877, '2020-01-24 17:02:06'),
(31, 8, 9, 326011877, '2023-10-23 17:45:26'),
(32, 9, 6, 227776493, '2023-10-27 05:58:05'),
(33, 10, 4, 820946411, '2023-10-27 06:01:42'),
(34, 10, 20, 139057609, '2023-10-27 06:03:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'Nosotros', '                                        <h3><font size=\"4\" face=\"arial\" color=\"#cc9999\">                                        JaLu Nails, es un sitio de spa de uñas en donde podrás ver diseños y  agendar citas de una manera rápida y eficaz. </font></h3><h3><font size=\"4\" face=\"arial\" color=\"#cc9999\">Nuestra misión es brindar a nuestros clientes la mejor experiencia de cuidado y decoración de uñas.</font></h3>', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contacto', '        Batalla de Casa Mata 385, Chapultepec Sur, 58260 Morelia, Mich.', 'jalu.nails1@gmail.com', 4432908732, NULL, '08:00 am a 6:30 pm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblservices`
--

CREATE TABLE `tblservices` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `Cost` int(10) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tblservices`
--

INSERT INTO `tblservices` (`ID`, `ServiceName`, `Cost`, `CreationDate`) VALUES
(4, 'Manicure de Lujo', 15000, '2019-07-25 11:23:34'),
(6, 'Manicure Precio Estudiantes', 120, '2019-07-25 11:24:01'),
(19, 'Tecnicas', 500, '2023-10-27 05:40:10'),
(20, 'Acrilicas', 350, '2023-10-27 05:40:53'),
(21, 'Press On', 450, '2023-10-27 05:41:30'),
(22, 'Poly Ge', 550, '2023-10-27 05:41:58');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `formulario_contacto`
--
ALTER TABLE `formulario_contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tblappointment`
--
ALTER TABLE `tblappointment`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tblcustomers`
--
ALTER TABLE `tblcustomers`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `formulario_contacto`
--
ALTER TABLE `formulario_contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tblappointment`
--
ALTER TABLE `tblappointment`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `tblcustomers`
--
ALTER TABLE `tblcustomers`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
