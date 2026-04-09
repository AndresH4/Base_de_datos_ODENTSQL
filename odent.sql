-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-04-2026 a las 17:08:58
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `odent`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accion_aseguramiento`
--

CREATE TABLE `accion_aseguramiento` (
  `Accion_ID` varchar(5) NOT NULL,
  `Nombre_Accion` varchar(20) NOT NULL,
  PRIMARY KEY (`Accion_ID`)
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
  `Usuario_ID` varchar(5) NOT NULL,
  PRIMARY KEY (`Administrador_ID`)
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
  `Fecha_Afiliacion` date NOT NULL,
  PRIMARY KEY (`Afiliacion_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `afiliacion`
--

INSERT INTO `afiliacion` (`Afiliacion_ID`, `Usuario_ID`, `EPS_ID`, `Fecha_Afiliacion`) VALUES
('E1', 'U001', 'E1', '2025-05-15'),
('E2', 'U002', 'E7', '2023-08-06'),
('E3', 'U003', 'E6', '2025-09-09'),
('E4', 'U004', 'E2', '2021-02-28'),
('E5', 'U005', 'E2', '2023-07-21'),
('E6', 'U006', 'E1', '2022-09-22'),
('E7', 'U007', 'E4', '2026-01-31'),
('E8', 'U008', 'E2', '2026-02-12'),
('E9', 'U009', 'E3', '2023-05-18'),
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
('E30', 'U030', 'E5', '2025-09-04'),
('E31', 'U031', 'E2', '2026-02-22');

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
  `Estado_ID` varchar(5) NOT NULL,
  PRIMARY KEY (`Agenda_ID`)
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
  `Descripcion` text NOT NULL,
  PRIMARY KEY (`AseguramientoDatos_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aseguramiento_datos`
--

INSERT INTO `aseguramiento_datos` (`AseguramientoDatos_ID`, `Usuario_ID`, `Accion_ID`, `Fecha`, `Descripcion`) VALUES
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
  `Motivo_Consulta` varchar(50) NOT NULL,
  PRIMARY KEY (`Cita_ID`)
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
  `TipoEPS_ID` varchar(5) NOT NULL,
  PRIMARY KEY (`EPS_ID`)
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

INSERT INTO `especialidad` (`Especialidad_ID`, `Nombre_especialidad`) VALUES
(1, 'Endodoncia'),
(2, 'Odontopediatria'),
(3, 'Odontologia General'),
(4, 'Cirugia Oral'),
(5, 'Ortodoncia'),
(6, 'Control brackets');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialista`
--

CREATE TABLE `especialista` (
  `Especialista_ID` varchar(5) NOT NULL,
  `Usuario_ID` varchar(5) NOT NULL,
  `Tarjeta_Profesional` varchar(20) NOT NULL,
  PRIMARY KEY (`Especialista_ID`)
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
  `Nombre_Estado` varchar(20) NOT NULL,
  PRIMARY KEY (`Estado_ID`)
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
  `Nombre_Estado` varchar(50) NOT NULL,
  PRIMARY KEY (`EstadoMulta_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estado_usuario`
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
  `EstadoMulta_ID` varchar(5) NOT NULL,
  PRIMARY KEY (`Multa_ID`)
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
  `Usuario_ID` varchar(5) NOT NULL,
  PRIMARY KEY (`Paciente_ID`)
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
  `Descripcion` varchar(20) NOT NULL,
  PRIMARY KEY (`Regimen_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `régimen_eps`
--

INSERT INTO `regimen_eps` (`Regimen_ID`, `Descripcion`) VALUES
('REPS1', 'Contributivo'),
('REPS2', 'Subsidiado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta_ranking`
--

CREATE TABLE `respuesta_ranking` (
  `Respuesta_ID` varchar(5) NOT NULL,
  `Cita_ID` varchar(5) NOT NULL,
  `Respuesta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `respuesta_ranking`
--

INSERT INTO `respuesta_ranking` (`Respuesta_ID`, `Cita_ID`, `Respuesta`) VALUES
('R01', 'C001', 5),
('R02', 'C002', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `Rol_ID` varchar(5) NOT NULL,
  `Descripcion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`Rol_ID`, `Descripcion`) VALUES
('R1', 'Administrador'),
('R2', 'Especialista'),
('R3', 'Paciente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documento`
--

CREATE TABLE `tipo_documento` (
  `TipoDoc_ID` varchar(5) NOT NULL,
  `Nombre_Tipo_Documento` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_documento`
--

INSERT INTO `tipo_documento` (`TipoDoc_ID`, `Nombre_Tipo_Documento`) VALUES
('D01', 'Cedula de ciudadania'),
('D02', 'Tarjeta de identidad'),
('D03', 'Permiso por protección temporal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_eps`
--

CREATE TABLE `tipo_eps` (
  `TipoEPS_ID` varchar(5) NOT NULL,
  `Nombre_Tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipoeps_id`
--

INSERT INTO `tipo_eps` (`TipoEPS_ID`, `Nombre_Tipo`) VALUES
(T01, 'Cotizante'),
(T02, 'Beneficiario');
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tratamiento`
--

CREATE TABLE `tratamiento` (
  `Tratamiento_ID` varchar(5) NOT NULL,
  `Historial_ID` varchar(5) NOT NULL,
  `Descripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`Tratamiento_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tratamiento`
--

INSERT INTO `tratamiento` (`Tratamiento_ID`, `Historial_ID`, `Descripcion`) VALUES
('T001', 'H001', 'Profilaxis y aplicación de fluor'),
('T002', 'H002', 'Resina simple en pieza 36'),
('T003', 'H003', 'Endodoncia Multirradicular'),
('T004', 'H004', 'Exodoncia de cordales (3.8,4.8)'),
('T005', 'H005', 'Blanqueamiento dental LED'),
('T006', 'H006', 'Colocación de Brakets'),
('T007', 'H007', 'Corona de porcelana sobre implante'),
('T008', 'H008', 'Raspaje y alisado radicular'),
('T009', 'H009', 'Pulpotomia pediatrica'),
('T010', 'H010', 'Instalación de protesis parcial');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Usuario_ID` varchar(5) NOT NULL,
  `Nombres` varchar(50) NOT NULL,
  `Apellidos` varchar(50) NOT NULL,
  `TipoDoc_ID` varchar(5) NOT NULL,
  `NumeroDocumento` varchar(15) NOT NULL,
  `Contrasena` varchar(100) NOT NULL,
  `FechaNacimiento` date NOT NULL,
  `Genero_ID` varchar(5) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Telefono` varchar(15) NOT NULL,
  `Estado_ID` varchar(5) NOT NULL,
  `Rol_ID` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Usuario_ID`, `Nombres`, `Apellidos`, `TipoDoc_ID`, `NumeroDocumento`, `Contrasena`, `FechaNacimiento`, `Genero_ID`, `Correo`, `Telefono`, `Estado_ID`, `Rol_ID`) VALUES
('U001', 'Andres Felipe', 'Hernandez Rodriguez', 'D01', '1028465975', 'Andresh04_', '1996-08-24', 'G02', 'andresfhernandez4@gmail.com', '3136684258', 'EU1', 'R1'),
('U002', 'Iris Dayana', 'Joya Estupiñan', 'D01', '1054888650', 'Irisdjoya12*', '2002-03-12', 'G01', 'iris.dayana@gmail.com', '3056894808', 'EU1', 'R2'),
('U003', 'Isabella Maria', 'Cabal Rodriguez', 'D01', '1020834210', 'Isacabal9..', '2000-11-03', 'G01', 'Isacabalr09@gmail.com', '3108849033', 'EU1', 'R3'),
('U004', 'Maicol Stiven', 'Poveda Cuellar', 'D01', '1230764856', 'Maicolpoveda..40', '2001-07-23', 'G02', 'maicollsfarfanc@gmail.com', '3124569845', 'EU1', 'R3'),
('U005', 'Lorena Valentina', 'Peñaloza Gomez', 'D01', '1023987345', 'Lorevpeñalozag__30', '2006-04-15', 'G01', 'lore_valentinav30@gmail.com', '3219964823', 'EU1', 'R3')
('U006',	'Kevin Andres',	'Ocampo Vasquez',	'D01',	'1000684012',	'Kandresovasquez*07',	'2002-01-11',	'G02',	'kevandreso04@gmail.com',	'3132438921',	'EU1',	'R3')
('U007',	'Juliana',	'Olarte Gomez',	'D01',	'1095425107',	'Juli_olarte28',	'1998-12-30',	'G01',	'julianaolarte@gmail.com',	'3255699949',	'EU1',	'R2')
('U008',	'Paula Alejandra',	'Hernandez Parra',	'D03',	'11696298',	'Paulahern.*56',	'1991-06-05',	'G01',	'paulahernandez@gmail.com',	'3125487690',	'EU1',	'R2')
('U009',	'Dayana Alexandra',	'Agudelo Medina',	'D03',	'7264893',	'Alexandraagu44*',	'2005-09-15',	'G01',	'dayanaa_agudelo@gmail.com',	'3108982640',	'EU1',	'R3')
('U010',	'Gabriela Lishet',	'Pozo Ortiz',	'D01',	'1023666105',	'gabY2910.',	'2004-06-22',	'G01',	'gabrilpozo_16@gmail.com',	'3213244214',	'EU1',	'R3');

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
  ADD PRIMARY KEY (`Administrador_ID`),
  ADD KEY `Usuario_ID` (`Usuario_ID`);

--
-- Indices de la tabla `afiliacion`
--
ALTER TABLE `afiliacion`
  ADD PRIMARY KEY (`Afiliacion_ID`),
  ADD KEY `Usuario_ID` (`Usuario_ID`),
  ADD KEY `EPS_ID` (`EPS_ID`);

--
-- Indices de la tabla `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`Agenda_ID`),
  ADD KEY `Especialista_ID` (`Especialista_ID`),
  ADD KEY `Estado_ID` (`Estado_ID`);

--
-- Indices de la tabla `aseguramiento_datos`
--
ALTER TABLE `aseguramiento_datos`
  ADD PRIMARY KEY (`AseguramientoDatos_ID`),
  ADD KEY `Usuario_ID` (`Usuario_ID`),
  ADD KEY `Accion_ID` (`Accion_ID`);

--
-- Indices de la tabla `cita`
--
ALTER TABLE `cita`
  ADD PRIMARY KEY (`Cita_ID`),
  ADD KEY `Paciente_ID` (`Paciente_ID`),
  ADD KEY `Agenda_ID` (`Agenda_ID`);

--
-- Indices de la tabla `diagnostico`
--
ALTER TABLE `diagnostico`
  ADD PRIMARY KEY (`Diagnostico_ID`);

--
-- Indices de la tabla `eps`
--
ALTER TABLE `eps`
  ADD PRIMARY KEY (`EPS_ID`),
  ADD KEY `Regimen_ID` (`Regimen_ID`),
  ADD KEY `TipoEPS_ID` (`TipoEPS_ID`);

--
-- Indices de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  ADD PRIMARY KEY (`Especialidad_ID`);

--
-- Indices de la tabla `especialista`
--
ALTER TABLE `especialista`
  ADD PRIMARY KEY (`Especialista_ID`),
  ADD KEY `Usuario_ID` (`Usuario_ID`);

--
-- Indices de la tabla `especialista_especialidad`
--
ALTER TABLE `especialista_especialidad`
  ADD PRIMARY KEY (`Especialista_ID`,`Especialidad_ID`),
  ADD KEY `Especialidad_ID` (`Especialidad_ID`);

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
-- Indices de la tabla `estado_usuario`
--
ALTER TABLE `estado_usuario`
  ADD PRIMARY KEY (`Estado_ID`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`Genero_ID`);

--
-- Indices de la tabla `historial_clinico`
--
ALTER TABLE `historial_clinico`
  ADD PRIMARY KEY (`Historial_ID`),
  ADD KEY `Cita_ID` (`Cita_ID`);

--
-- Indices de la tabla `historial_diagnostico`
--
ALTER TABLE `historial_diagnostico`
  ADD PRIMARY KEY (`Historial_ID`,`Diagnostico_ID`),
  ADD KEY `Diagnostico_ID` (`Diagnostico_ID`);

--
-- Indices de la tabla `multa`
--
ALTER TABLE `multa`
  ADD PRIMARY KEY (`Multa_ID`),
  ADD KEY `Cita_ID` (`Cita_ID`),
  ADD KEY `EstadoMulta_ID` (`EstadoMulta_ID`);

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`Paciente_ID`),
  ADD KEY `Usuario_ID` (`Usuario_ID`);

--
-- Indices de la tabla `preguntas_ranking`
--
ALTER TABLE `preguntas_ranking`
  ADD PRIMARY KEY (`Preguntas_ID`);

--
-- Indices de la tabla `puntuacion_especialista`
--
ALTER TABLE `puntuacion_especialista`
  ADD PRIMARY KEY (`Puntuacion_ID`),
  ADD KEY `Especialista_ID` (`Especialista_ID`),
  ADD KEY `Respuesta_ID` (`Respuesta_ID`);

--
-- Indices de la tabla `regimen_eps`
--
ALTER TABLE `regimen_eps`
  ADD PRIMARY KEY (`Regimen_ID`);

--
-- Indices de la tabla `respuesta_ranking`
--
ALTER TABLE `respuesta_ranking`
  ADD PRIMARY KEY (`Respuesta_ID`),
  ADD KEY `Cita_ID` (`Cita_ID`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`Rol_ID`);

--
-- Indices de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  ADD PRIMARY KEY (`TipoDoc_ID`);

--
-- Indices de la tabla `tipo_eps`
--
ALTER TABLE `tipo_eps`
  ADD PRIMARY KEY (`TipoEPS_ID`);

--
-- Indices de la tabla `tratamiento`
--
ALTER TABLE `tratamiento`
  ADD PRIMARY KEY (`Tratamiento_ID`),
  ADD KEY `Historial_ID` (`Historial_ID`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Usuario_ID`),
  ADD KEY `TipoDoc_ID` (`TipoDoc_ID`),
  ADD KEY `Genero_ID` (`Genero_ID`),
  ADD KEY `Estado_ID` (`Estado_ID`),
  ADD KEY `Rol_ID` (`Rol_ID`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD CONSTRAINT `administrador_ibfk_1` FOREIGN KEY (`Usuario_ID`) REFERENCES `usuarios` (`Usuario_ID`);

--
-- Filtros para la tabla `afiliacion`
--
ALTER TABLE `afiliacion`
  ADD CONSTRAINT `afiliacion_ibfk_1` FOREIGN KEY (`Usuario_ID`) REFERENCES `usuarios` (`Usuario_ID`),
  ADD CONSTRAINT `afiliacion_ibfk_2` FOREIGN KEY (`EPS_ID`) REFERENCES `eps` (`EPS_ID`);

--
-- Filtros para la tabla `agenda`
--
ALTER TABLE `agenda`
  ADD CONSTRAINT `agenda_ibfk_1` FOREIGN KEY (`Especialista_ID`) REFERENCES `especialista` (`Especialista_ID`),
  ADD CONSTRAINT `agenda_ibfk_2` FOREIGN KEY (`Estado_ID`) REFERENCES `estado_agenda` (`Estado_ID`);

--
-- Filtros para la tabla `aseguramiento_datos`
--
ALTER TABLE `aseguramiento_datos`
  ADD CONSTRAINT `aseguramiento_datos_ibfk_1` FOREIGN KEY (`Usuario_ID`) REFERENCES `usuarios` (`Usuario_ID`),
  ADD CONSTRAINT `aseguramiento_datos_ibfk_2` FOREIGN KEY (`Accion_ID`) REFERENCES `accion_aseguramiento` (`Accion_ID`);

--
-- Filtros para la tabla `cita`
--
ALTER TABLE `cita`
  ADD CONSTRAINT `cita_ibfk_1` FOREIGN KEY (`Paciente_ID`) REFERENCES `paciente` (`Paciente_ID`),
  ADD CONSTRAINT `cita_ibfk_2` FOREIGN KEY (`Agenda_ID`) REFERENCES `agenda` (`Agenda_ID`);

--
-- Filtros para la tabla `eps`
--
ALTER TABLE `eps`
  ADD CONSTRAINT `eps_ibfk_1` FOREIGN KEY (`Regimen_ID`) REFERENCES `regimen_eps` (`Regimen_ID`),
  ADD CONSTRAINT `eps_ibfk_2` FOREIGN KEY (`TipoEPS_ID`) REFERENCES `tipo_eps` (`TipoEPS_ID`);

--
-- Filtros para la tabla `especialista`
--
ALTER TABLE `especialista`
  ADD CONSTRAINT `especialista_ibfk_1` FOREIGN KEY (`Usuario_ID`) REFERENCES `usuarios` (`Usuario_ID`);

--
-- Filtros para la tabla `especialista_especialidad`
--
ALTER TABLE `especialista_especialidad`
  ADD CONSTRAINT `especialista_especialidad_ibfk_1` FOREIGN KEY (`Especialista_ID`) REFERENCES `especialista` (`Especialista_ID`),
  ADD CONSTRAINT `especialista_especialidad_ibfk_2` FOREIGN KEY (`Especialidad_ID`) REFERENCES `especialidad` (`Especialidad_ID`);

--
-- Filtros para la tabla `historial_clinico`
--
ALTER TABLE `historial_clinico`
  ADD CONSTRAINT `historial_clinico_ibfk_1` FOREIGN KEY (`Cita_ID`) REFERENCES `cita` (`Cita_ID`);

--
-- Filtros para la tabla `historial_diagnostico`
--
ALTER TABLE `historial_diagnostico`
  ADD CONSTRAINT `historial_diagnostico_ibfk_1` FOREIGN KEY (`Historial_ID`) REFERENCES `historial_clinico` (`Historial_ID`),
  ADD CONSTRAINT `historial_diagnostico_ibfk_2` FOREIGN KEY (`Diagnostico_ID`) REFERENCES `diagnostico` (`Diagnostico_ID`);

--
-- Filtros para la tabla `multa`
--
ALTER TABLE `multa`
  ADD CONSTRAINT `multa_ibfk_1` FOREIGN KEY (`Cita_ID`) REFERENCES `cita` (`Cita_ID`),
  ADD CONSTRAINT `multa_ibfk_2` FOREIGN KEY (`EstadoMulta_ID`) REFERENCES `estado_multa` (`EstadoMulta_ID`);

--
-- Filtros para la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD CONSTRAINT `paciente_ibfk_1` FOREIGN KEY (`Usuario_ID`) REFERENCES `usuarios` (`Usuario_ID`);

--
-- Filtros para la tabla `puntuacion_especialista`
--
ALTER TABLE `puntuacion_especialista`
  ADD CONSTRAINT `puntuacion_especialista_ibfk_1` FOREIGN KEY (`Especialista_ID`) REFERENCES `especialista` (`Especialista_ID`),
  ADD CONSTRAINT `puntuacion_especialista_ibfk_2` FOREIGN KEY (`Respuesta_ID`) REFERENCES `respuesta_ranking` (`Respuesta_ID`);

--
-- Filtros para la tabla `respuesta_ranking`
--
ALTER TABLE `respuesta_ranking`
  ADD CONSTRAINT `respuesta_ranking_ibfk_1` FOREIGN KEY (`Cita_ID`) REFERENCES `cita` (`Cita_ID`);

--
-- Filtros para la tabla `tratamiento`
--
ALTER TABLE `tratamiento`
  ADD CONSTRAINT `tratamiento_ibfk_1` FOREIGN KEY (`Historial_ID`) REFERENCES `historial_clinico` (`Historial_ID`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`TipoDoc_ID`) REFERENCES `tipo_documento` (`TipoDoc_ID`),
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`Genero_ID`) REFERENCES `genero` (`Genero_ID`),
  ADD CONSTRAINT `usuarios_ibfk_3` FOREIGN KEY (`Estado_ID`) REFERENCES `estado_usuario` (`Estado_ID`),
  ADD CONSTRAINT `usuarios_ibfk_4` FOREIGN KEY (`Rol_ID`) REFERENCES `rol` (`Rol_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
