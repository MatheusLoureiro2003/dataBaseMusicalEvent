-- População das tabelas do banco de dados "eventos"

-- Populando a tabela FAS
INSERT INTO FAS (ID_FAS, NOME, EMAIL, DATANASC)
VALUES 
    (1, 'João Silva', 'joao.silva@hotmail.com', '1990-03-01'),
    (2, 'Maria Santos', 'maria.santos@yahoo.com.br', '1992-07-11'),
    (3, 'Pedro Silva Almeida', 'pedro.almeida@gmail.com', '1986-11-18'),
    (4, 'Ana Oliveira Nascimento', 'ana.oliveira@gmail.com', '1994-04-19');

-- Verificando os dados inseridos na tabela FAS
SELECT * FROM FAS;

-- Populando a tabela ARTISTA
INSERT INTO ARTISTA (NOME, MEMBROS, GENERO, DISCOGRAFIA)
VALUES 
    ('Marvin Gaye', 1, 'Soul', 12),
    ('Aretha Franklin', 1, 'Soul', 30),
    ('Stevie Wonder', 1, 'Soul', 23),
    ('Ray Charles', 1, 'Blues', 18),
    ('B.B. King', 1, 'Blues', 43),
    ('Tom Jobim', 1, 'Bossa Nova', 22),
    ('João Gilberto', 1, 'Bossa Nova', 15),
    ('Elis Regina', 1, 'Bossa Nova', 18),
    ('Black Pumas', 2, 'Soul', 2),
    ('Chico Buarque', 1, 'mpb', 35);

-- Verificando os dados inseridos na tabela ARTISTA
SELECT * FROM ARTISTA;

-- Populando a tabela LOCAL
INSERT INTO LOCAL (NOME, CONTATO, CAPACIDADE, ENDERECO)
VALUES 
    ('Ópera de Arame', '41 1234-5678', 1000, 'Rua João Gava, s/n - Abranches, Curitiba'),
    ('Teatro Guaíra', '41 9876-5432', 1500, 'Rua XV de Novembro, 971 - Centro, Curitiba'),
    ('Pedreira Paulo Leminski', '41 5555-1234', 2000, 'Rua João Gava, s/n - Pilarzinho, Curitiba');

-- Verificando os dados inseridos na tabela LOCAL
SELECT * FROM LOCAL;

-- Populando a tabela EVENTO
INSERT INTO EVENTO (NOME, EVENT_ID_ARTIST, ID_LOCAL, DATA, HORARIO)
VALUES 
    ('Soul Fest', 1, 1, '2023-07-15', '20:00:00'),
    ('Soul Fest', 2, 1, '2023-07-15', '21:00:00'),
    ('Soul Fest', 3, 1, '2023-07-15', '22:00:00'),
    ('Everybody Sings The Blues', 4, 3, '2023-08-05', '19:00:00'),
    ('Everybody Sings The Blues', 5, 3, '2023-08-05', '19:30:00'),
    ('O Poder da Bossa Nova', 6, 2, '2023-09-10', '20:00:00'),
    ('O Poder da Bossa Nova', 7, 2, '2023-09-10', '20:30:00'),
    ('O Poder da Bossa Nova', 8, 2, '2023-09-10', '21:00:00');

-- Verificando os dados inseridos na tabela EVENTO
SELECT * FROM EVENTO;

-- Populando a tabela INGRESSO
INSERT INTO INGRESSO (ID_EVENT, QUANTIDADE, VENDIDOS, CATEGORIA)
VALUES
    -- Ingressos para o Evento ID 1
    (1, 500, 300, 'Pista'),
    (1, 200, 100, 'Pista Premium'),
    (1, 50, 20, 'Camarote'),
    
    -- Ingressos para o Evento ID 2
    (2, 500, 250, 'Pista'),
    (2, 200, 150, 'Pista Premium'),
    (2, 50, 30, 'Camarote'),
    
    -- Ingressos para o Evento ID 3
    (3, 500, 200, 'Pista'),
    (3, 200, 170, 'Pista Premium'),
    (3, 50, 40, 'Camarote'),
    
    -- Ingressos para o Evento ID 4
    (4, 500, 300, 'Pista'),
    (4, 200, 120, 'Pista Premium'),
    (4, 50, 22, 'Camarote'),
    
    -- Ingressos para o Evento ID 5
    (5, 500, 350, 'Pista'),
    (5, 200, 160, 'Pista Premium'),
    (5, 50, 45, 'Camarote'),
    
    -- Ingressos para o Evento ID 6
    (6, 500, 400, 'Pista'),
    (6, 200, 100, 'Pista Premium'),
    (6, 50, 46, 'Camarote'),
    
    -- Ingressos para o Evento ID 7
    (7, 500, 250, 'Pista'),
    (7, 200, 185, 'Pista Premium'),
    (7, 50, 35, 'Camarote'),
    
    -- Ingressos para o Evento ID 8
    (8, 500, 400, 'Pista'),
    (8, 200, 80, 'Pista Premium'),
    (8, 50, 50, 'Camarote');

-- Verificando os dados inseridos na tabela INGRESSO
SELECT * FROM INGRESSO;

-- Populando a tabela ACOMPANHAR
INSERT INTO ACOMPANHAR (ID_ARTIST, ID_FAS, DATAINICIO, AVALIACAO)
VALUES
    (1, 2, '2023-02-15', 5),
    (1, 3, '2023-03-20', 3),
    (2, 2, '2023-02-01', 5),
    (2, 3, '2023-03-10', 4),
    (3, 1, '2023-02-25', 4),
    (3, 3, '2023-04-05', 5),
    (4, 1, '2023-03-05', 3),
    (4, 2, '2023-04-15', 4),
    (4, 3, '2023-05-20', 5),
    (5, 1, '2023-04-01', 5),
    (6, 2, '2023-03-15', 4),
    (6, 3, '2023-04-20', 3),
    (7, 1, '2023-05-01', 4),
    (7, 3, '2023-06-05', 3),
    (8, 1, '2023-05-15', 5),
    (8, 3, '2023-06-10', 4);

-- Verificando os dados inseridos na tabela ACOMPANHAR
SELECT * FROM ACOMPANHAR;
