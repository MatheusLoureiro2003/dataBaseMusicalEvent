-- 1. Seleciona todos os registros da tabela EVENTO
SELECT * FROM EVENTO;

-- 2. Seleciona o nome do evento, o nome do artista, o local, a data e o horário de cada evento
SELECT 
    EVENTO.NOME AS evento,
    ARTISTA.NOME AS artista,
    LOCAL.NOME AS local,
    EVENTO.DATA,
    EVENTO.HORARIO
FROM
    EVENTO,
    ARTISTA,
    LOCAL
WHERE 
    EVENTO.EVENT_ID_ARTIST = ARTISTA.ID_ARTIST 
    AND EVENTO.ID_LOCAL = LOCAL.ID_LOCAL;

-- 3. Seleciona todos os registros da tabela ACOMPANHAR (fãs acompanhando artistas)
SELECT * FROM ACOMPANHAR;

-- 4. Seleciona o nome do fã, o nome do artista e a data de início do acompanhamento
SELECT 
    FAS.NOME AS fã, 
    ARTISTA.NOME AS artista, 
    ACOMPANHAR.DATAINICIO
FROM 
    ACOMPANHAR, FAS, ARTISTA
WHERE 
    ACOMPANHAR.ID_FAS = FAS.ID_FAS 
    AND ACOMPANHAR.ID_ARTIST = ARTISTA.ID_ARTIST
ORDER BY 
    ACOMPANHAR.DATAINICIO;

-- 5. Retorna os eventos em que o artista favorito do fã irá tocar, incluindo o local do evento
SELECT 
    FAS.NOME AS fã, 
    ARTISTA.NOME AS artista, 
    EVENTO.NOME AS evento, 
    LOCAL.NOME AS local
FROM 
    ACOMPANHAR, FAS, ARTISTA, EVENTO, LOCAL
WHERE 
    ACOMPANHAR.ID_FAS = FAS.ID_FAS 
    AND ACOMPANHAR.ID_ARTIST = ARTISTA.ID_ARTIST 
    AND EVENTO.EVENT_ID_ARTIST = ARTISTA.ID_ARTIST 
    AND EVENTO.ID_LOCAL = LOCAL.ID_LOCAL;

-- 6. Fã quer saber a discografia do seu artista favorito, considerando apenas aqueles com alta avaliação
SELECT 
    FAS.NOME AS fã, 
    ARTISTA.NOME AS artista, 
    ARTISTA.DISCOGRAFIA AS discografia, 
    ACOMPANHAR.AVALIACAO AS avaliação
FROM 
    ACOMPANHAR, FAS, ARTISTA
WHERE 
    ACOMPANHAR.ID_FAS = FAS.ID_FAS
    AND ACOMPANHAR.ID_ARTIST = ARTISTA.ID_ARTIST
    AND ACOMPANHAR.AVALIACAO = (
        SELECT MAX(ACOMPANHAR.AVALIACAO)
        FROM ACOMPANHAR
    )
ORDER BY 
    ARTISTA.NOME, FAS.NOME;

-- 7. Retorna a quantidade de ingressos disponíveis para os artistas que o fã acompanha
SELECT 
    FAS.NOME AS fã, 
    ARTISTA.NOME AS artista, 
    EVENTO.NOME AS evento,
    SUM(INGRESSO.QUANTIDADE - INGRESSO.VENDIDOS) AS ingressos_disponíveis
FROM 
    ACOMPANHAR, FAS, ARTISTA, EVENTO, INGRESSO
WHERE 
    ACOMPANHAR.ID_FAS = FAS.ID_FAS 
    AND ACOMPANHAR.ID_ARTIST = ARTISTA.ID_ARTIST 
    AND EVENTO.EVENT_ID_ARTIST = ARTISTA.ID_ARTIST 
    AND INGRESSO.ID_EVENT = EVENTO.ID_EVENT
GROUP BY 
    FAS.NOME, ARTISTA.NOME, EVENTO.NOME;

-- 8. Retorna o número de artistas por gênero musical em cada festival/evento
SELECT 
    ARTISTA.GENERO AS artista_gênero, 
    EVENTO.NOME AS evento, 
    COUNT(*) AS qntd
FROM 
    ARTISTA, EVENTO
WHERE 
    EVENTO.EVENT_ID_ARTIST = ARTISTA.ID_ARTIST
GROUP BY 
    ARTISTA.GENERO, EVENTO.NOME
ORDER BY 
    ARTISTA.GENERO;

-- 9. Retorna o número de ingressos vendidos por artista em cada evento
SELECT 
    SUM(INGRESSO.VENDIDOS) AS vendidos, 
    ARTISTA.NOME AS artista, 
    EVENTO.NOME AS evento
FROM 
    ARTISTA, INGRESSO, EVENTO
WHERE 
    INGRESSO.ID_EVENT = EVENTO.ID_EVENT 
    AND EVENTO.EVENT_ID_ARTIST = ARTISTA.ID_ARTIST
GROUP BY 
    ARTISTA.NOME, EVENTO.NOME;

-- 10. Retorna o número de ingressos restantes por artista em cada evento
SELECT 
    SUM(INGRESSO.QUANTIDADE - INGRESSO.VENDIDOS) AS disponíveis, 
    ARTISTA.NOME AS artista, 
    EVENTO.NOME AS evento
FROM 
    ARTISTA, INGRESSO, EVENTO
WHERE 
    INGRESSO.ID_EVENT = EVENTO.ID_EVENT 
    AND EVENTO.EVENT_ID_ARTIST = ARTISTA.ID_ARTIST
GROUP BY 
    ARTISTA.NOME, EVENTO.NOME;
