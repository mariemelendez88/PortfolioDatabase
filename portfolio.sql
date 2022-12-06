-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2022 at 11:19 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `estudios`
--

CREATE TABLE `estudios` (
  `id` int(11) NOT NULL,
  `logo` longtext DEFAULT NULL,
  `link_instit` longtext DEFAULT NULL,
  `instit` varchar(450) NOT NULL,
  `fecha_inicio` int(11) NOT NULL,
  `fecha_fin` int(11) DEFAULT NULL,
  `titulo` varchar(200) NOT NULL,
  `descripcion` longtext NOT NULL,
  `persona_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `estudios`
--

INSERT INTO `estudios` (`id`, `logo`, `link_instit`, `instit`, `fecha_inicio`, `fecha_fin`, `titulo`, `descripcion`, `persona_id`) VALUES
(1, '/assets/img/USB-logo.png', 'https://www.usb.ve/', 'Universidad Simón Bolívar', 2006, 2013, 'Ingeniero Electricista', 'Sistemas de Potencia, Máquinas Eléctricas', 1),
(2, '/assets/img/Argentina-Programa.png', 'https://argentinaprograma.inti.gob.ar/', 'Argentina Programa - #YoProgramo', 2022, 2023, 'Full Stack Developer', 'Programa de Estudio Digital de programación de páginas web incluyendo frontend y backend.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `experiencias`
--

CREATE TABLE `experiencias` (
  `id` int(11) NOT NULL,
  `logo` longtext DEFAULT NULL,
  `link_instit` longtext DEFAULT NULL,
  `instit` varchar(450) NOT NULL,
  `fecha_inicio` int(11) NOT NULL,
  `fecha_fin` int(11) DEFAULT NULL,
  `puesto` longtext NOT NULL,
  `descripcion` longtext NOT NULL,
  `persona_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `experiencias`
--

INSERT INTO `experiencias` (`id`, `logo`, `link_instit`, `instit`, `fecha_inicio`, `fecha_fin`, `puesto`, `descripcion`, `persona_id`) VALUES
(1, '/assets/img/USB-logo.png', 'http://www.usb.ve/', 'Universidad Simón Bolívar', 2013, 2017, 'Profesor', 'Profesor de materias teóricas y prácticas de Ingeniería Eléctrica.', 1),
(2, '/assets/img/Worley-logo.png', 'http://www.worley.com/', 'Worley', 2019, NULL, 'Senior Electrical Engineer', 'Planificación, diseño, ejecución y supervisión de proyectos de ingeniería eléctrica.', 1),
(3, '/assets/img/gocode.png', 'http://www.gocode.ar/', 'GoCode Argentina', 2022, NULL, 'Full Stack Developer / Scrum Master', 'Trabajo en equipo para poner en práctica conocimientos de programación.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `footer`
--

CREATE TABLE `footer` (
  `id` int(11) NOT NULL,
  `cvpdf` longtext DEFAULT NULL,
  `texto` longtext DEFAULT NULL,
  `persona_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `footer`
--

INSERT INTO `footer` (`id`, `cvpdf`, `texto`, `persona_id`) VALUES
(1, '../assets/download/CV-Melendez_Marie - Developer-ENG.pdf', 'Copyright, MarieM 2022. All Rights Reserved', 1);

-- --------------------------------------------------------

--
-- Table structure for table `persona`
--

CREATE TABLE `persona` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `titulo` varchar(45) DEFAULT NULL,
  `frase` longtext DEFAULT NULL,
  `acercade` longtext NOT NULL,
  `imgBanner` longtext DEFAULT NULL,
  `imgPfp` longtext DEFAULT NULL,
  `descripcionPfp` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `persona`
--

INSERT INTO `persona` (`id`, `nombre`, `apellido`, `titulo`, `frase`, `acercade`, `imgBanner`, `imgPfp`, `descripcionPfp`) VALUES
(1, 'Marie', 'Melendez', 'Full Stack Developer', 'No hay demanda de ingenieros mujeres… pero siempre habrá demanda para cualquier persona que pueda hacer bien su trabajo (Edith Clarke, 1883-1959).', 'Entrando en el mundo de la programación, y en búsqueda de mi primer empleo.', '/assets/img/banner2.png', '/assets/img/pfp.png\"', 'engineer, full stack');

-- --------------------------------------------------------

--
-- Table structure for table `proyectos`
--

CREATE TABLE `proyectos` (
  `id` int(11) NOT NULL,
  `logo` longtext DEFAULT NULL,
  `descripcionlogo` varchar(200) NOT NULL,
  `link_repo` longtext DEFAULT NULL,
  `fecha_fin` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `descripcion` longtext NOT NULL,
  `persona_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `proyectos`
--

INSERT INTO `proyectos` (`id`, `logo`, `descripcionlogo`, `link_repo`, `fecha_fin`, `titulo`, `descripcion`, `persona_id`) VALUES
(1, '/assets/img/proyecto-calculator.png', 'interest, calculator', 'https://github.com/mariemelendez88/vftvk-Simple-Interest-Calculator.git', 2021, 'Calculadora de interés simple', 'Calculadora de interés simple para computar cálculos sencillos.', 1),
(2, '/assets/img/proyecto-maquetaHTML.png', 'maqueta frontend', 'https://github.com/mariemelendez88/PortFolioEstatico.git', 2022, 'Portfolio Front End', 'Maquetado de portfolio utilizando HTML, CSS, Bootstrap y Fontawesome.', 1),
(3, '/assets/img/Proyectos-GoCode.png', 'pestaña, proyectos', 'https://gocode.ar/', 2022, 'Página Web GoCode', 'Pestaña \'Proyectos\' que muestra las websites desarrolladas por GoCode.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `redes`
--

CREATE TABLE `redes` (
  `id` int(11) NOT NULL,
  `urlred` longtext NOT NULL,
  `iconred` varchar(200) NOT NULL,
  `persona_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `redes`
--

INSERT INTO `redes` (`id`, `urlred`, `iconred`, `persona_id`) VALUES
(1, 'https://github.com/mariemelendez88?tab=repositories', 'fa-brands fa-github', 1),
(2, 'https://www.linkedin.com/in/mariemdeveloper/', 'fa-brands fa-linkedin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `referencias`
--

CREATE TABLE `referencias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `apellido` varchar(200) DEFAULT NULL,
  `telefono` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `persona_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `referencias`
--

INSERT INTO `referencias` (`id`, `nombre`, `apellido`, `telefono`, `email`, `persona_id`) VALUES
(1, 'Juan', 'Perez', '+54 9 11 1234-5678', 'juanp@mail.com', 1),
(2, 'Maria', 'Esparza', '+54 9 11 8765-4321', 'mariae@mail.com', 1),
(3, 'Francisco', 'Lara', '+54 9 11 1346-7982', 'franciscol@mail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `tipo` varchar(200) NOT NULL,
  `iconskill` varchar(200) DEFAULT NULL,
  `habilidad` varchar(200) NOT NULL,
  `porcentaje` varchar(200) NOT NULL,
  `persona_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `tipo`, `iconskill`, `habilidad`, `porcentaje`, `persona_id`) VALUES
(1, 'Frontend', 'fabrands fa-html5', 'HTML', '90', 1),
(2, 'Frontend', 'fabrands fa-css3-alt', 'CSS', '80', 1),
(3, 'Frontend', 'fabrands fa-angular', 'ANGULAR', '75', 1),
(4, 'Backend', 'fabrands fa-python', 'PYTHON', '88', 1),
(5, 'Backend', 'fabrands fa-java', 'JAVA', '80', 1),
(6, 'Backend', 'fabrands fa-leaf', 'SPRINGBOOT', '60', 1),
(7, 'Idioma', 'fabrands fa-language', 'ESPAÑOL', '100', 1),
(8, 'Idioma', 'fabrands fa-language', 'INGLÉS', '90', 1),
(9, 'Otro', 'fabrands fa-arrows-split-up-and-left', 'SCRUM', '80', 1),
(10, 'Otro', 'fabrands fa-arrows-split-up-and-left', 'PLANIFICACIÓN', '80', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `estudios`
--
ALTER TABLE `estudios`
  ADD PRIMARY KEY (`id`,`persona_id`),
  ADD KEY `fk_estudios_persona1` (`persona_id`);

--
-- Indexes for table `experiencias`
--
ALTER TABLE `experiencias`
  ADD PRIMARY KEY (`id`,`persona_id`),
  ADD KEY `fk_experiencias_persona1` (`persona_id`);

--
-- Indexes for table `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`,`persona_id`),
  ADD KEY `fk_footer_persona1` (`persona_id`);

--
-- Indexes for table `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id`,`persona_id`),
  ADD KEY `fk_proyectos_persona1` (`persona_id`);

--
-- Indexes for table `redes`
--
ALTER TABLE `redes`
  ADD PRIMARY KEY (`id`,`persona_id`),
  ADD KEY `fk_redes_persona` (`persona_id`);

--
-- Indexes for table `referencias`
--
ALTER TABLE `referencias`
  ADD PRIMARY KEY (`id`,`persona_id`),
  ADD KEY `fk_referencias_persona1` (`persona_id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`,`persona_id`),
  ADD KEY `fk_skills_persona1` (`persona_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `estudios`
--
ALTER TABLE `estudios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `experiencias`
--
ALTER TABLE `experiencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `persona`
--
ALTER TABLE `persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `redes`
--
ALTER TABLE `redes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `referencias`
--
ALTER TABLE `referencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `estudios`
--
ALTER TABLE `estudios`
  ADD CONSTRAINT `fk_estudios_persona1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `experiencias`
--
ALTER TABLE `experiencias`
  ADD CONSTRAINT `fk_experiencias_persona1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `footer`
--
ALTER TABLE `footer`
  ADD CONSTRAINT `fk_footer_persona1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `proyectos`
--
ALTER TABLE `proyectos`
  ADD CONSTRAINT `fk_proyectos_persona1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `redes`
--
ALTER TABLE `redes`
  ADD CONSTRAINT `fk_redes_persona` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `referencias`
--
ALTER TABLE `referencias`
  ADD CONSTRAINT `fk_referencias_persona1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `fk_skills_persona1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
