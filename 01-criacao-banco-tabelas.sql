-- Criação da base de dados
CREATE DATABASE eventos;
USE eventos;

-- Criação das tabelas
CREATE TABLE FAS (ID_FAS int not null auto_increment, NOME varchar(40) not null, EMAIL varchar(50), DATANASC date, Primary key (ID_FAS));
CREATE TABLE ARTISTA (ID_ARTIST int not null auto_increment, NOME varchar(40) not null, MEMBROS int, GENERO varchar(40), DISCOGRAFIA int, Primary key (ID_ARTIST));
CREATE TABLE LOCAL (ID_LOCAL int not null auto_increment, NOME varchar(40) not null, CONTATO varchar(12), CAPACIDADE int, ENDERECO varchar(100), Primary key (ID_LOCAL));

-- Criação de tabelas intermediárias com chaves estrangeiras
CREATE TABLE ACOMPANHAR (ID_ARTIST int not null, ID_FAS int not null, DATAINICIO date, AVALIACAO int, Primary key (ID_ARTIST, ID_FAS));
ALTER TABLE ACOMPANHAR ADD CONSTRAINT fk_ID_ARTIST FOREIGN KEY (ID_ARTIST) REFERENCES ARTISTA(ID_ARTIST);
ALTER TABLE ACOMPANHAR ADD CONSTRAINT fk_ID_FAS FOREIGN KEY (ID_FAS) REFERENCES FAS(ID_FAS);

CREATE TABLE EVENTO (ID_EVENT int not null auto_increment, NOME varchar(40) not null, EVENT_ID_ARTIST int not null, ID_LOCAL int not null, DATA date, HORARIO time, Primary key (ID_EVENT));
ALTER TABLE EVENTO ADD CONSTRAINT fk_EVENT_ID_ARTIST FOREIGN KEY (EVENT_ID_ARTIST) REFERENCES ARTISTA(ID_ARTIST);
ALTER TABLE EVENTO ADD CONSTRAINT fk_ID_LOCAL FOREIGN KEY (ID_LOCAL) REFERENCES LOCAL(ID_LOCAL);

CREATE TABLE INGRESSO (ID_INGRESSO int not null auto_increment, ID_EVENT int not null, QUANTIDADE int, VENDIDOS int, CATEGORIA varchar(15), Primary key (ID_INGRESSO));
ALTER TABLE INGRESSO ADD CONSTRAINT fk_ID_EVENT FOREIGN KEY (ID_EVENT) REFERENCES EVENTO(ID_EVENT);
