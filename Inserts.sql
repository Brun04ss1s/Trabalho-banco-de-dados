INSERT INTO `Paciente` (`dt_nascimento`, `nm_paciente`, `cpf`, `telefone`, `email`) VALUES
('1985-01-15', 'Maria Silva', '12345678901', '11999999991', 'maria.silva@example.com'),
('1990-07-22', 'João Souza', '23456789012', '11999999992', 'joao.souza@example.com'),
('1975-05-30', 'Ana Lima', '34567890123', '11999999993', 'ana.lima@example.com'),
('1982-03-17', 'Carlos Almeida', '45678901234', '11999999994', 'carlos.almeida@example.com'),
('1995-12-08', 'Fernanda Costa', '56789012345', '11999999995', 'fernanda.costa@example.com'),
('1988-11-01', 'Roberto Fernandes', '67890123456', '11999999996', 'roberto.fernandes@example.com'),
('2000-09-25', 'Mariana Oliveira', '78901234567', '11999999997', 'mariana.oliveira@example.com'),
('1979-02-14', 'Rafael Santos', '89012345678', '11999999998', 'rafael.santos@example.com'),
('1983-08-19', 'Juliana Pereira', '90123456789', '11999999999', 'juliana.pereira@example.com'),
('1992-06-05', 'Paulo Araujo', '01234567890', '11999999990', 'paulo.araujo@example.com');

INSERT INTO `Especialidade` (`especialidade`, `ie_situacao`) VALUES
('Cardiologia', 'A'),
('Dermatologia', 'A'),
('Pediatria', 'A'),
('Ortopedia', 'A'),
('Ginecologia', 'A');


INSERT INTO `Medico` (`crm`, `Nm_medico`, `cd_especialidade`, `telefone`, `email`) VALUES
('123456', 'Dr. Pedro Carvalho', 1, '11988888881', 'pedro.carvalho@hospital.com'),
('234567', 'Dra. Marina Andrade', 2, '11988888882', 'marina.andrade@hospital.com'),
('345678', 'Dr. Lucas Martins', 2, '11988888883', 'lucas.martins@hospital.com'),
('456789', 'Dra. Aline Souza', 2, '11988888884', 'aline.souza@hospital.com'),
('567890', 'Dr. Thiago Pereira', 5, '11988888885', 'thiago.pereira@hospital.com'),
('678901', 'Dra. Patricia Lima', 1, '11988888886', 'patricia.lima@hospital.com'),
('789012', 'Dr. Gustavo Fernandes', 1, '11988888887', 'gustavo.fernandes@hospital.com'),
('890123', 'Dra. Renata Alves', 3, '11988888888', 'renata.alves@hospital.com'),
('901234', 'Dr. Eduardo Castro', 4, '11988888889', 'eduardo.castro@hospital.com'),
('012345', 'Dra. Beatriz Silva', 4, '11988888880', 'beatriz.silva@hospital.com');

INSERT INTO `tipo_atendimento` (`idtipo_atendimento`, `Desc_tipo_atendimento`, `ie_situacao`) VALUES
('1', 'Internado', 'A'),
('2', 'Ambulatorial', 'A'),
('3', 'Externo', 'A');

INSERT INTO `Atendimento_paciente` (`id_paciente`, `id_medico`, `Dt_entrada`, `Dt_alota`, `tipo_atendimento`) VALUES
(1, 1, '2024-06-01 09:00:00', '2024-06-01 09:30:00', '1'),
(2, 2, '2024-06-01 10:00:00', '2024-06-01 10:45:00', '1'),
(3, 3, '2024-06-01 11:00:00', '2024-06-01 11:30:00', '1'),
(4, 4, '2024-06-01 12:00:00', '2024-06-01 12:20:00', '3'),
(5, 5, '2024-06-01 13:00:00', '2024-06-01 13:40:00', '2'),
(6, 6, '2024-06-01 14:00:00', '2024-06-01 14:30:00', '2'),
( 7, 7, '2024-06-01 15:00:00', '2024-06-01 15:20:00', '1'),
(8, 8, '2024-06-01 16:00:00', '2024-06-01 16:40:00', '1'),
(9, 9, '2024-06-01 17:00:00', '2024-06-01 17:30:00', '1'),
(10, 10, '2024-06-01 18:00:00', '2024-06-01 18:45:00', '1');


