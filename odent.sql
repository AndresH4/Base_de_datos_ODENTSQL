-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-04-2026 a las 19:15:37
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
('AF01', 'U001', 'E1', '2025-05-15'),
('AF02', 'U002', 'E7', '2023-08-06'),
('AF03', 'U003', 'E6', '2025-09-09'),
('AF04', 'U004', 'E2', '2021-02-28'),
('AF05', 'U005', 'E2', '2023-07-21'),
('AF06', 'U006', 'E1', '2022-09-22'),
('AF07', 'U007', 'E4', '2026-01-31'),
('AF08', 'U008', 'E2', '2026-02-12'),
('AF09', 'U009', 'E3', '2023-05-18'),
('AF10', 'U010', 'E5', '2025-03-12'),
('AF11', 'U011', 'E4', '2025-05-21'),
('AF12', 'U012', 'E6', '2016-08-14'),
('AF13', 'U013', 'E1', '2015-06-15'),
('AF14', 'U014', 'E2', '2016-04-12'),
('AF15', 'U015', 'E7', '2025-02-15'),
('AF16', 'U016', 'E3', '2017-06-30'),
('AF17', 'U017', 'E4', '2023-07-21'),
('AF18', 'U018', 'E5', '2022-09-22'),
('AF19', 'U019', 'E1', '2026-01-31'),
('AF20', 'U020', 'E1', '2026-02-12'),
('AF21', 'U021', 'E4', '2023-05-18'),
('AF22', 'U022', 'E6', '2025-03-12'),
('AF23', 'U023', 'E2', '2025-05-21'),
('AF24', 'U024', 'E7', '2016-08-14'),
('AF25', 'U025', 'E1', '2015-06-15'),
('AF26', 'U026', 'E6', '2020-08-24'),
('AF27', 'U027', 'E1', '2024-03-15'),
('AF28', 'U028', 'E6', '2020-04-12'),
('AF29', 'U029', 'E4', '2025-08-24'),
('AF30', 'U030', 'E5', '2025-09-04'),
('AF31', 'U031', 'E2', '2026-02-22');

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
  `EstadoAgenda_ID` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `agenda`
--

INSERT INTO `agenda` (`Agenda_ID`, `Especialista_ID`, `Fecha`, `Hora_Inicio`, `Hora_Final`, `EstadoAgenda_ID`) VALUES
('A001', 'E001', '2026-03-09', '09:00:00', '09:30:00', 'EA1'),
('A002', 'E002', '2026-03-15', '14:00:00', '14:30:00', 'EA2'),
('A003', 'E003', '2026-03-21', '10:00:00', '10:30:00', 'EA3'),
('A004', 'E004', '2026-03-21', '14:00:00', '15:00:00', 'EA2'),
('A005', 'E005', '2026-03-23', '13:00:00', '13:30:00', 'EA2'),
('A006', 'E006', '2026-03-26', '16:00:00', '17:30:00', 'EA2'),
('A007', 'E007', '2026-03-27', '08:00:00', '08:30:00', 'EA2'),
('A008', 'E008', '2026-03-27', '13:00:00', '13:40:00', 'EA1'),
('A009', 'E009', '2026-03-27', '14:00:00', '14:30:00', 'EA2'),
('A010', 'E010', '2026-03-28', '14:00:00', '15:00:00', 'EA2');

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
('AD001', 'U001', 'AC01', '2025-10-22', 'Datos asegurados'),
('AD002', 'U002', 'AC01', '2025-10-23', 'Datos asegurados'),
('AD003', 'U003', 'AC01', '2025-10-24', 'Datos asegurados'),
('AD004', 'U004', 'AC01', '2025-10-25', 'Datos asegurados'),
('AD005', 'U005', 'AC01', '2025-10-26', 'Datos asegurados'),
('AD006', 'U006', 'AC01', '2025-10-27', 'Datos asegurados'),
('AD007', 'U007', 'AC01', '2025-10-28', 'Datos asegurados'),
('AD008', 'U008', 'AC01', '2025-10-29', 'Datos asegurados'),
('AD009', 'U009', 'AC01', '2025-10-30', 'Datos asegurados'),
('AD010', 'U010', 'AC01', '2025-10-31', 'Datos asegurados'),
('AD011', 'U011', 'AC01', '2025-11-01', 'Datos asegurados'),
('AD012', 'U012', 'AC01', '2025-11-02', 'Datos asegurados'),
('AD013', 'U013', 'AC01', '2025-11-03', 'Datos asegurados'),
('AD014', 'U014', 'AC01', '2025-11-04', 'Datos asegurados'),
('AD015', 'U015', 'AC01', '2025-11-05', 'Datos asegurados'),
('AD016', 'U016', 'AC01', '2025-11-06', 'Datos asegurados'),
('AD017', 'U017', 'AC01', '2025-11-07', 'Datos asegurados'),
('AD018', 'U018', 'AC01', '2025-11-08', 'Datos asegurados'),
('AD019', 'U019', 'AC01', '2025-11-09', 'Datos asegurados'),
('AD020', 'U020', 'AC01', '2025-11-10', 'Datos asegurados'),
('AD021', 'U021', 'AC01', '2025-11-11', 'Datos asegurados'),
('AD022', 'U022', 'AC01', '2025-11-12', 'Datos asegurados'),
('AD025', 'U025', 'AC01', '2025-11-13', 'Datos asegurados'),
('AD026', 'U026', 'AC01', '2025-11-14', 'Datos asegurados'),
('AD028', 'U028', 'AC01', '2025-11-15', 'Datos asegurados'),
('AD029', 'U029', 'AC01', '2025-11-16', 'Datos asegurados'),
('AD030', 'U030', 'AC01', '2025-11-17', 'Datos asegurados'),
('AD031', 'U031', 'AC01', '2025-11-18', 'Datos asegurados');

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
('ESP01', 'Endodoncia'),
('EPS02', 'Odontopediatria'),
('EPS03', 'Odontologia General'),
('EPS04', 'Cirugia Oral'),
('EPS05', 'Ortodoncia'),
('EPS06', 'Control brackets');

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
('E002', 'ESP02'),
('E003', 'ESP03'),
('E004', 'ESP04'),
('E005', 'ESP05'),
('E006', 'ESP06'),
('E007', 'ESP01'),
('E008', 'ESP02'),
('E009', 'ESP03'),
('E010', 'ESP04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_agenda`
--

CREATE TABLE `estado_agenda` (
  `EstadoAgenda_ID` varchar(5) NOT NULL,
  `Nombre_Estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estado_agenda`
--

INSERT INTO `estado_agenda` (`EstadoAgenda_ID`, `Nombre_Estado`) VALUES
('EA1', 'Disponible'),
('EA2', 'Ocupado'),
('EA3', 'Cancelado');

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
('M001', 'C015', 'EM2'),
('M002', 'C022', 'EM1'),
('M003', 'C026', 'EM2'),
('M004', 'C031', 'EM2'),
('M005', 'C033', 'EM1'),
('M006', 'C037', 'EM1'),
('M007', 'C038', 'EM2'),
('M008', 'C042', 'EM2'),
('M009', 'C045', 'EM2'),
('M010', 'C049', 'EM1');

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
('P001', 'U003'),
('P002', 'U004'),
('P003', 'U005'),
('P004', 'U006'),
('P005', 'U009'),
('P006', 'U010'),
('P007', 'U014'),
('P008', 'U015'),
('P009', 'U019'),
('P010', 'U021'),
('P011', 'U022'),
('P012', 'U023'),
('P013', 'U024'),
('P014', 'U025'),
('P015', 'U026'),
('P016', 'U027'),
('P017', 'U028'),
('P018', 'U029'),
('P019', 'U030'),
('P020', 'U031');

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
-- Volcado de datos para la tabla `regimen_eps`
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
-- Volcado de datos para la tabla `tipo_eps`
--

INSERT INTO `tipo_eps` (`TipoEPS_ID`, `Nombre_Tipo`) VALUES
('T01', 'Cotizante'),
('T02', 'Beneficiario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tratamiento`
--

CREATE TABLE `tratamiento` (
  `Tratamiento_ID` varchar(5) NOT NULL,
  `Historial_ID` varchar(5) NOT NULL,
  `Descripcion` varchar(255) NOT NULL
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
('U002', 'Iris Dayana', 'Joya Estupiñan', 'D01', '1054888650', 'Irisjoya12*', '2002-03-12', 'G01', 'iris.dayana@gmail.com', '3056894808', 'EU1', 'R2'),
('U003', 'Isabella Maria', 'Cabal Rodriguez', 'D01', '1020834210', 'Isacabal9.', '2000-11-03', 'G01', 'isacabalr09@gmail.com', '3108849033', 'EU1', 'R3'),
('U004', 'Maicol Stiven', 'Poveda Cuellar', 'D01', '1230764856', 'Maicolpoveda..40', '2001-07-23', 'G02', 'maicollsfanfan@gmail.com', '3124569845', 'EU1', 'R3'),
('U005', 'Lorena Valentina', 'Peñaloza Gomez', 'D01', '1023987345', 'Lorevpeñaloza__30', '2006-04-15', 'G01', 'lore_valentina30@gmail.com', '3219964823', 'EU1', 'R3'),
('U006', 'Kevin Andres', 'Ocampo Vasquez', 'D01', '1000684012', 'Kandresovasquez*07', '2002-01-11', 'G02', 'kevandres04@gmail.com', '3132438921', 'EU1', 'R3'),
('U007', 'Juliana', 'Olarte Gomez', 'D01', '1095425107', 'Juli_olarte28', '1998-12-30', 'G01', 'julianaolarte@gmail.com', '3255699949', 'EU1', 'R2'),
('U008', 'Paula Alejandra', 'Hernandez Parra', 'D03', '11696298', 'Paulahern.*56', '1991-06-05', 'G01', 'paulahernandez@gmail.com', '3125487690', 'EU1', 'R2'),
('U009', 'Dayana Alexandra', 'Agudelo Medina', 'D03', '7264893', 'Alexandraagu44*', '2005-09-18', 'G01', 'dayanaa_agudelo@gmail.com', '3108982640', 'EU1', 'R3'),
('U010', 'Gabriela Lishet', 'Pozo Ortiz', 'D01', '1023666105', 'gabY2910.', '2004-06-22', 'G01', 'gabrilpozo_16@gmail.com', '3213244214', 'EU1', 'R3'),
('U011', 'Clara Maria', 'Castillo marquez', 'D01', '1018885632', 'Claramn_09', '2001-02-09', 'G01', 'claracastillo01@gmail.com', '3227845689', 'EU1', 'R2'),
('U012', 'Jorge Andres', 'Perez Joya', 'D03', '1022455699', 'Jorgitop.30', '2000-10-30', 'G02', 'jorgeperez02@gmail.com', '3244455578', 'EU1', 'R2'),
('U013', 'Lucia Maria', 'Colmenares Martinez', 'D01', '1099958546', 'Luciacolmenares_28', '2007-04-28', 'G01', 'luciolmenares@gmail.com', '3125689708', 'EU1', 'R2'),
('U014', 'Alisson Sofia', 'Gonzales Rivera', 'D02', '1024762387', 'Alissongonzales12%', '2012-09-12', 'G01', 'Alissonsfiagonr@gmail.com', '3208731292', 'EU1', 'R3'),
('U015', 'Martin Alejandro', 'Ordoñez Parra', 'D01', '1004466755', 'Martinp04_', '2006-10-04', 'G02', 'martin26op@gmail.com', '3116489554', 'EU1', 'R3'),
('U016', 'Katy Andrea', 'Lagos Manrique', 'D01', '1113976297', 'katyLagos_02', '2000-07-02', 'G01', 'katylagos@gmail.com', '3244744875', 'EU1', 'R2'),
('U017', 'Carlos Felipe', 'Castellano Maldonado', 'D01', '1132527487', 'carlosCC_09.', '2004-01-09', 'G02', 'maldonado.carlos@gmail.com', '3225476125', 'EU1', 'R2'),
('U018', 'Jurleidis Maria', 'Gonzales Prieto', 'D03', '1151078677', 'jMuly.08', '1997-12-08', 'G01', 'jurleidisprieto@gmail.com', '3200054876', 'EU1', 'R2'),
('U019', 'Angela', 'Arias Cañon', 'D02', '1230678310', 'Angelaa99.', '2014-11-09', 'G01', 'angelarias4@gmail.com', '3142186778', 'EU1', 'R3'),
('U020', 'Natalia Isabella', 'Parra Perez', 'D01', '1188181058', 'Nataliaparra_31', '2004-10-31', 'G01', 'nataliaparra@gmail.com', '3006546925', 'EU1', 'R2'),
('U021', 'Sara Maria', 'Garcia Reina', 'D01', '1432982314', 'Saaragarcia*06', '2006-12-06', 'G01', 'saramgar28@gmail.com', '3208871462', 'EU1', 'R3'),
('U022', 'Juan Jose', 'Pérez García', 'D01', '1429637536', 'Juann**28', '2001-01-28', 'G02', 'juanperez@gmail.com', '3113145821', 'EU1', 'R3'),
('U023', 'Maria Fernanda', 'López Torres', 'D01', '1023674009', 'MariaFernanda05.', '2005-05-05', 'G01', 'lopezfernanda@gmail.com', '3209425824', 'EU1', 'R3'),
('U024', 'Carlos Felipe', 'Ruiz Lima', 'D01', '1019762538', 'Carlosruiz0880', '1995-08-24', 'G02', 'carlosruiz@gmail.com', '3102857413', 'EU1', 'R3'),
('U025', 'Ana Maria', 'Belen Rojas', 'D01', '1006667274', 'Anaa*.27', '2001-05-27', 'G01', 'anamaria88@gmail.com', '3220145856', 'EU1', 'R3'),
('U026', 'Luis Fernando', 'Castro Ortiz', 'D01', '1208554755', 'Luiscas&20', '2003-04-20', 'G02', 'luisxcastro@gmail.com', '3117547674', 'EU1', 'R3'),
('U027', 'Elena Sofia', 'Mendez Paz', 'D01', '1109986749', 'ElenaM._11', '2007-01-11', 'G01', 'elenamendez@gmail.com', '3205892244', 'EU1', 'R3'),
('U028', 'Jorge Enrique', 'Villa Sol', 'D01', '1006456477', 'Jorge_e09', '1998-02-09', 'G02', 'jorgevilla@gmail.com', '3136485315', 'EU1', 'R3'),
('U029', 'Paula Sofia', 'Luna Mar', 'D01', '1024440980', 'Paulaluna*06', '2007-10-06', 'G01', 'paulitalinda@gmail.com', '3123251678', 'EU1', 'R3'),
('U030', 'Roberto Andres', 'Diaz Mena', 'D01', '1002366327', 'Robertodd.03', '2004-05-03', 'G02', 'robertod@gmail.com', '3152468228', 'EU1', 'R3'),
('U031', 'Lucia Alejandra', 'Vega Solis', 'D01', '1109263541', 'Luciavega24*', '2007-08-24', 'G01', 'luciavega@gmail.com', '3195543648', 'EU1', 'R3');

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
  ADD PRIMARY KEY (`EstadoAgenda_ID`);

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
  ADD PRIMARY KEY (`Tratamiento_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
