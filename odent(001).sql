-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-04-2026 a las 03:39:33
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `odent(4)`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accion_aseguramiento`
--

CREATE TABLE `accion_aseguramiento` (
  `Accion_ID` varchar(5) NOT NULL,
  `Nombre_Accion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `accion_aseguramiento`
--

INSERT INTO `accion_aseguramiento` (`Accion_ID`, `Nombre_Accion`) VALUES
('AC01', 'Asegurar'),
('AC02', 'Actualizar'),
('AC03', 'Eliminar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `Administrador_ID` varchar(5) NOT NULL,
  `Usuario_ID` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`Administrador_ID`, `Usuario_ID`) VALUES
('AD1', 'U001');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `afiliacion`
--

CREATE TABLE `afiliacion` (
  `Afiliacion_ID` varchar(5) NOT NULL,
  `Usuario_ID` varchar(5) NOT NULL,
  `EPS_ID` varchar(5) NOT NULL,
  `Fecha_Afiliacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `afiliacion`
--

INSERT INTO `afiliacion` (`Afiliacion_ID`, `Usuario_ID`, `EPS_ID`, `Fecha_Afiliacion`) VALUES
('E1', 'U001', 'E1', '2025-05-15'),
('E10', 'U010', 'E5', '2025-03-12'),
('E11', 'U011', 'E4', '2025-05-21'),
('E12', 'U012', 'E6', '2016-08-14'),
('E13', 'U013', 'E1', '2015-06-15'),
('E14', 'U014', 'E2', '2016-04-12'),
('E15', 'U015', 'E7', '2025-02-15'),
('E16', 'U016', 'E3', '2017-06-30'),
('E17', 'U017', 'E4', '2023-07-21'),
('E18', 'U018', 'E5', '2022-09-22'),
('E19', 'U019', 'E1', '2026-01-31'),
('E2', 'U002', 'E7', '2023-08-06'),
('E20', 'U020', 'E1', '2026-02-12'),
('E21', 'U021', 'E4', '2023-05-18'),
('E22', 'U022', 'E6', '2025-03-12'),
('E23', 'U023', 'E2', '2025-05-21'),
('E24', 'U024', 'E7', '2016-08-14'),
('E25', 'U025', 'E1', '2015-06-15'),
('E26', 'U026', 'E6', '2020-08-24'),
('E27', 'U027', 'E1', '2024-03-15'),
('E28', 'U028', 'E6', '2020-04-12'),
('E29', 'U029', 'E4', '2025-08-24'),
('E3', 'U003', 'E6', '2025-09-09'),
('E30', 'U030', 'E5', '2025-09-04'),
('E31', 'U031', 'E2', '2026-02-22'),
('E4', 'U004', 'E2', '2021-02-28'),
('E5', 'U005', 'E2', '2023-07-21'),
('E6', 'U006', 'E1', '2022-09-22'),
('E7', 'U007', 'E4', '2026-01-31'),
('E8', 'U008', 'E2', '2026-02-12'),
('E9', 'U009', 'E3', '2023-05-18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agenda`
--

CREATE TABLE `agenda` (
  `Agenda_ID` varchar(5) NOT NULL,
  `Especialista_ID` varchar(5) NOT NULL,
  `Fecha` date NOT NULL,
  `Hora_Inicio` time NOT NULL,
  `Hora_Final` time NOT NULL,
  `Estado_ID` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `agenda`
--

INSERT INTO `agenda` (`Agenda_ID`, `Especialista_ID`, `Fecha`, `Hora_Inicio`, `Hora_Final`, `Estado_ID`) VALUES
('A001', 'E001', '2026-03-09', '09:00:00', '09:30:00', 'E1'),
('A002', 'E002', '2026-03-15', '14:00:00', '14:30:00', 'E2'),
('A003', 'E003', '2026-03-21', '10:00:00', '10:30:00', 'E3'),
('A004', 'E004', '2026-03-21', '14:00:00', '15:00:00', 'E2'),
('A005', 'E005', '2026-03-23', '13:00:00', '13:30:00', 'E2'),
('A006', 'E006', '2026-03-26', '16:00:00', '17:30:00', 'E2'),
('A007', 'E007', '2026-03-27', '08:00:00', '08:30:00', 'E2'),
('A008', 'E008', '2026-03-27', '13:00:00', '13:40:00', 'E1'),
('A009', 'E009', '2026-03-27', '14:00:00', '14:30:00', 'E2'),
('A010', 'E010', '2026-03-28', '14:00:00', '15:00:00', 'E2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aseguramiento_datos`
--

CREATE TABLE `aseguramiento_datos` (
  `AseguramientoDatos_ID` varchar(5) NOT NULL,
  `Usuario_ID` varchar(5) NOT NULL,
  `Accion_ID` varchar(5) NOT NULL,
  `Fecha` date NOT NULL,
  `Descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aseguramiento_datos`
--

INSERT INTO `aseguramiento_datos` (`AseguramientoDatos_ID`, `Usuario_ID`, `Accion_ID`, `Fecha`, `Descripcion`) VALUES
('A001', 'U001', 'AC01', '2025-10-22', 'Datos asegurados'),
('A002', 'U002', 'AC01', '2025-10-23', 'Datos asegurados'),
('A003', 'U003', 'AC01', '2025-10-24', 'Datos asegurados'),
('A004', 'U004', 'AC01', '2025-10-25', 'Datos asegurados'),
('A005', 'U005', 'AC01', '2025-10-26', 'Datos asegurados'),
('A006', 'U006', 'AC01', '2025-10-27', 'Datos asegurados'),
('A007', 'U007', 'AC01', '2025-10-28', 'Datos asegurados'),
('A008', 'U008', 'AC01', '2025-10-29', 'Datos asegurados'),
('A009', 'U009', 'AC01', '2025-10-30', 'Datos asegurados'),
('A010', 'U010', 'AC01', '2025-10-31', 'Datos asegurados');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cita`
--

CREATE TABLE `cita` (
  `Cita_ID` varchar(5) NOT NULL,
  `Paciente_ID` varchar(5) NOT NULL,
  `Agenda_ID` varchar(5) NOT NULL,
  `Motivo_Consulta` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cita`
--

INSERT INTO `cita` (`Cita_ID`, `Paciente_ID`, `Agenda_ID`, `Motivo_Consulta`) VALUES
('C001', 'P001', 'A001', 'Dolor Dental'),
('C002', 'P002', 'A002', 'Revisión'),
('C003', 'P003', 'A003', 'Limpieza'),
('C004', 'P004', 'A004', 'Ortodoncia'),
('C005', 'P005', 'A005', 'Ortodoncia'),
('C006', 'P006', 'A006', 'Cirujia'),
('C007', 'P007', 'A007', 'Tratamiento'),
('C008', 'P008', 'A008', 'Ortodoncia'),
('C009', 'P009', 'A009', 'Limpieza'),
('C010', 'P010', 'A010', 'Control Ortodoncia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diagnostico`
--

CREATE TABLE `diagnostico` (
  `Diagnostico_ID` varchar(5) NOT NULL,
  `Nombre_Diagnostico` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `diagnostico`
--

INSERT INTO `diagnostico` (`Diagnostico_ID`, `Nombre_Diagnostico`) VALUES
('D01', 'Caries Dental Profunda'),
('D02', 'Gingivitis Crónica'),
('D03', 'Periodontitis Avanzada'),
('D04', 'Absceso Periapical'),
('D05', 'Tercer Molar Impactado'),
('D06', 'Pulpite Irreversible'),
('D07', 'Maloclusión Clase II'),
('D08', 'Bruxismo Severo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eps`
--

CREATE TABLE `eps` (
  `EPS_ID` varchar(5) NOT NULL,
  `Nombre_EPS` varchar(50) NOT NULL,
  `Telefono_EPS` varchar(15) NOT NULL,
  `Regimen_ID` varchar(10) NOT NULL,
  `TipoEPS_ID` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `eps`
--

INSERT INTO `eps` (`EPS_ID`, `Nombre_EPS`, `Telefono_EPS`, `Regimen_ID`, `TipoEPS_ID`) VALUES
('E1', 'Compensar', '601 4441234', 'REPS1', 'T01'),
('E2', 'Salud Total', '601 4055440', 'REPS1', 'T01'),
('E3', 'NuevaEPS', '601 3077022', 'REPS1', 'T01'),
('E4', 'Famisanar', '301 3078069', 'REPS1', 'T01'),
('E5', 'Sanitas', '601 3759000', 'REPS1', 'T01'),
('E6', 'CapitalSalud', '601 7427257', 'REPS1', 'T01'),
('E7', 'Sura', '601 4897941', 'REPS1', 'T01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidad`
--

CREATE TABLE `especialidad` (
  `Especialidad_ID` varchar(10) NOT NULL,
  `Nombre_Especialidad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `especialidad`
--

INSERT INTO `especialidad` (`Especialidad_ID`, `Nombre_Especialidad`) VALUES
('1', 'Endodoncia'),
('2', 'Odontopediatria'),
('3', 'Odontologia General'),
('4', 'Cirugia Oral'),
('5', 'Ortodoncia'),
('6', 'Control brackets');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialista`
--

CREATE TABLE `especialista` (
  `Especialista_ID` varchar(5) NOT NULL,
  `Usuario_ID` varchar(5) NOT NULL,
  `Tarjeta_Profesional` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `especialista`
--

INSERT INTO `especialista` (`Especialista_ID`, `Usuario_ID`, `Tarjeta_Profesional`) VALUES
('E001', 'U011', '5927164694'),
('E002', 'U012', '4296334121'),
('E003', 'U013', '4120360398'),
('E004', 'U002', '7216022024'),
('E005', 'U007', '9090557364'),
('E006', 'U016', '5231071029'),
('E007', 'U017', '6405121623'),
('E008', 'U018', '9009615096'),
('E009', 'U008', '1007054724'),
('E010', 'U020', '3365822043');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialista_especialidad`
--

CREATE TABLE `especialista_especialidad` (
  `Especialista_ID` varchar(5) NOT NULL,
  `Especialidad_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `especialista_especialidad`
--

INSERT INTO `especialista_especialidad` (`Especialista_ID`, `Especialidad_ID`) VALUES
('E001', 'ESP01'),
('E010', 'ESP10'),
('E002', 'ESP02'),
('E003', 'ESP03'),
('E004', 'ESP04'),
('E005', 'ESP05'),
('E006', 'ESP06'),
('E007', 'ESP07'),
('E008', 'ESP08'),
('E009', 'ESP09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_agenda`
--

CREATE TABLE `estado_agenda` (
  `Estado_ID` varchar(5) NOT NULL,
  `Nombre_Estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estado_agenda`
--

INSERT INTO `estado_agenda` (`Estado_ID`, `Nombre_Estado`) VALUES
('E1', 'Disponible'),
('E2', 'Ocupado'),
('E3', 'Cancelado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_multa`
--

CREATE TABLE `estado_multa` (
  `EstadoMulta_ID` varchar(5) NOT NULL,
  `Nombre_Estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estado_multa`
--

INSERT INTO `estado_multa` (`EstadoMulta_ID`, `Nombre_Estado`) VALUES
('EM1', 'Pendiente'),
('EM2', 'Pagada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_usuario`
--

CREATE TABLE `estado_usuario` (
  `Estado_ID` varchar(5) NOT NULL,
  `Nombre_Estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estado_usuario`
--

INSERT INTO `estado_usuario` (`Estado_ID`, `Nombre_Estado`) VALUES
('EU1', 'Activo'),
('EU2', 'Inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `Genero_ID` varchar(5) NOT NULL,
  `NombreGenero` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`Genero_ID`, `NombreGenero`) VALUES
('G01', 'Femenino'),
('G02', 'Masculino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_clinico`
--

CREATE TABLE `historial_clinico` (
  `Historial_ID` varchar(5) NOT NULL,
  `Cita_ID` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `historial_clinico`
--

INSERT INTO `historial_clinico` (`Historial_ID`, `Cita_ID`) VALUES
('H001', 'C001'),
('H002', 'C002'),
('H003', 'C003'),
('H004', 'C004'),
('H005', 'C005'),
('H006', 'C006'),
('H007', 'C007'),
('H008', 'C008'),
('H009', 'C009'),
('H010', 'C010');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_diagnostico`
--

CREATE TABLE `historial_diagnostico` (
  `Historial_ID` varchar(5) NOT NULL,
  `Diagnostico_ID` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `historial_diagnostico`
--

INSERT INTO `historial_diagnostico` (`Historial_ID`, `Diagnostico_ID`) VALUES
('H001', 'D01'),
('H002', 'D02'),
('H003', 'D03'),
('H004', 'D04'),
('H005', 'D05'),
('H006', 'D06'),
('H007', 'D07'),
('H008', 'D08'),
('H009', 'D09'),
('H010', 'D10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multa`
--

CREATE TABLE `multa` (
  `Multa_ID` varchar(5) NOT NULL,
  `Cita_ID` varchar(5) NOT NULL,
  `EstadoMulta_ID` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `multa`
--

INSERT INTO `multa` (`Multa_ID`, `Cita_ID`, `EstadoMulta_ID`) VALUES
('M001', 'C001', 'EM2'),
('M002', 'C002', 'EM1'),
('M003', 'C003', 'EM2'),
('M004', 'C004', 'EM2'),
('M005', 'C005', 'EM1'),
('M006', 'C006', 'EM1'),
('M007', 'C007', 'EM2'),
('M008', 'C008', 'EM2'),
('M009', 'C009', 'EM2'),
('M010', 'C010', 'EM1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `Paciente_ID` varchar(5) NOT NULL,
  `Usuario_ID` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `paciente`
--

INSERT INTO `paciente` (`Paciente_ID`, `Usuario_ID`) VALUES
('P001', 'U001'),
('P002', 'U002'),
('P003', 'U003'),
('P004', 'U004'),
('P005', 'U005'),
('P006', 'U006'),
('P007', 'U007'),
('P008', 'U008'),
('P009', 'U009'),
('P010', 'U010'),
('P011', 'U011'),
('P012', 'U012'),
('P013', 'U013'),
('P014', 'U014'),
('P015', 'U015'),
('P016', 'U016'),
('P017', 'U017'),
('P018', 'U018'),
('P019', 'U019'),
('P020', 'U020'),
('P021', 'U021'),
('P022', 'U022');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas_ranking`
--

CREATE TABLE `preguntas_ranking` (
  `Preguntas_ID` varchar(5) NOT NULL,
  `Texto_Pregunta` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `preguntas_ranking`
--

INSERT INTO `preguntas_ranking` (`Preguntas_ID`, `Texto_Pregunta`) VALUES
('PR01', '¿El odontólogo fue amable durante la consulta?'),
('PR02', '¿Te explicó claramente el diagnóstico?');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntuacion_especialista`
--

CREATE TABLE `puntuacion_especialista` (
  `Puntuacion_ID` varchar(5) NOT NULL,
  `Especialista_ID` varchar(5) NOT NULL,
  `Respuesta_ID` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `puntuacion_especialista`
--

INSERT INTO `puntuacion_especialista` (`Puntuacion_ID`, `Especialista_ID`, `Respuesta_ID`) VALUES
('PE001', 'E001', 'R01'),
('PE002', 'E002', 'R02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regimen_eps`
--

CREATE TABLE `regimen_eps` (
  `Regimen_ID` varchar(10) NOT NULL,
  `Descripcion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accion_aseguramiento`
--
ALTER TABLE `accion_aseguramiento`
  ADD PRIMARY KEY (`Accion_ID`);

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`Administrador_ID`);

--
-- Indices de la tabla `afiliacion`
--
ALTER TABLE `afiliacion`
  ADD PRIMARY KEY (`Afiliacion_ID`);

--
-- Indices de la tabla `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`Agenda_ID`);

--
-- Indices de la tabla `aseguramiento_datos`
--
ALTER TABLE `aseguramiento_datos`
  ADD PRIMARY KEY (`AseguramientoDatos_ID`);

--
-- Indices de la tabla `cita`
--
ALTER TABLE `cita`
  ADD PRIMARY KEY (`Cita_ID`);

--
-- Indices de la tabla `eps`
--
ALTER TABLE `eps`
  ADD PRIMARY KEY (`EPS_ID`);

--
-- Indices de la tabla `especialista`
--
ALTER TABLE `especialista`
  ADD PRIMARY KEY (`Especialista_ID`);

--
-- Indices de la tabla `estado_agenda`
--
ALTER TABLE `estado_agenda`
  ADD PRIMARY KEY (`Estado_ID`);

--
-- Indices de la tabla `estado_multa`
--
ALTER TABLE `estado_multa`
  ADD PRIMARY KEY (`EstadoMulta_ID`);

--
-- Indices de la tabla `multa`
--
ALTER TABLE `multa`
  ADD PRIMARY KEY (`Multa_ID`);

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`Paciente_ID`);

--
-- Indices de la tabla `regimen_eps`
--
ALTER TABLE `regimen_eps`
  ADD PRIMARY KEY (`Regimen_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
