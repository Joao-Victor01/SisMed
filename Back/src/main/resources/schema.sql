-- Pacientes (conforme PacientesEntity / PacientesRepository)
CREATE TABLE IF NOT EXISTS Pacientes (
  nomePaciente VARCHAR(200),
  cpfPaciente VARCHAR(20) PRIMARY KEY,
  dataNascPaciente DATE,
  sexoPaciente VARCHAR(20),
  flamengo BOOLEAN DEFAULT FALSE,
  onepiece BOOLEAN DEFAULT FALSE,
  souza BOOLEAN DEFAULT FALSE,
  tipoUsuario INT DEFAULT 0
);

-- Medicos (conforme MedicosEntity / MedicosRepository)
CREATE TABLE IF NOT EXISTS Medicos (
  nomeMedico VARCHAR(200),
  crm VARCHAR(50) PRIMARY KEY,
  dataNascMedico DATE,
  sexoMedico VARCHAR(20),
  emailMedico VARCHAR(150),
  celularMedico VARCHAR(30),
  tipoUsuario INT DEFAULT 1
);

-- Admins (conforme AdminsEntity / AdminsRepository)
CREATE TABLE IF NOT EXISTS Admins (
  nomeAdmin VARCHAR(200),
  cpfAdmin VARCHAR(20) PRIMARY KEY,
  dataNascAdmin DATE,
  sexoAdmin VARCHAR(20),
  emailAdmin VARCHAR(150),
  celularAdmin VARCHAR(30),
  tipoUsuario INT DEFAULT 2
);

-- Descontos (conforme DescontosEntity e DescontosRepository)
-- Observação: a classe usa campo `onePiece` em Java, mas nas queries/DDL o nome esperado é "onepiece".
CREATE TABLE IF NOT EXISTS Descontos (
  cpfPaciente VARCHAR(20) PRIMARY KEY,
  flamengo BOOLEAN DEFAULT FALSE,
  souza BOOLEAN DEFAULT FALSE,
  onepiece BOOLEAN DEFAULT FALSE,
  CONSTRAINT fk_descontos_paciente FOREIGN KEY (cpfPaciente) REFERENCES Pacientes(cpfPaciente)
);

-- Consultas (conforme ConsultasEntity / ConsultasRepository / ConsultaRowMapper)
CREATE TABLE IF NOT EXISTS Consultas (
  idConsulta INT AUTO_INCREMENT PRIMARY KEY,
  cpfPaciente VARCHAR(20),
  crm VARCHAR(50),
  dataConsulta TIMESTAMP,
  motivoConsulta VARCHAR(500),
  valorConsulta INT,
  CONSTRAINT fk_consulta_paciente FOREIGN KEY (cpfPaciente) REFERENCES Pacientes(cpfPaciente),
  CONSTRAINT fk_consulta_medico FOREIGN KEY (crm) REFERENCES Medicos(crm)
);
