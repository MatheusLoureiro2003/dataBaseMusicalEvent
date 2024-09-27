# dataBaseMusicalEvent
Descrição
Este projeto consiste em um banco de dados que armazena informações sobre fãs, artistas, eventos musicais, locais, ingressos e acompanhamentos. O objetivo é fornecer consultas e operações para gerenciar eventos musicais e a interação entre fãs e artistas.

Funcionalidades
Cadastro de Fãs: Armazena dados como nome, e-mail e data de nascimento dos fãs.
Cadastro de Artistas: Inclui informações sobre artistas, como número de membros, gênero musical e discografia.
Gerenciamento de Eventos: Registra eventos musicais com detalhes como local, data, horário e artistas participantes.
Controle de Ingressos: Armazena e gerencia a quantidade de ingressos disponíveis, vendidos e por categoria (pista, camarote, etc).
Acompanhamento de Artistas: Permite que fãs acompanhem seus artistas favoritos e avaliem o acompanhamento.
Estrutura do Banco de Dados
Tabelas
FAS: Armazena informações sobre os fãs (ID, nome, e-mail, data de nascimento).
ARTISTA: Guarda detalhes dos artistas (nome, membros, gênero, discografia).
LOCAL: Contém informações sobre os locais dos eventos (nome, contato, capacidade, endereço).
EVENTO: Detalha os eventos musicais (nome, artista, local, data e horário).
INGRESSO: Gerencia ingressos por evento (quantidade, vendidos, categoria).
ACOMPANHAR: Registra o acompanhamento de fãs a artistas, incluindo avaliações.
Consultas SQL
O projeto também oferece uma série de consultas SQL para facilitar a recuperação de informações do banco de dados, tais como:

Consultar todos os eventos e os artistas que irão se apresentar.
Consultar os eventos futuros que os fãs acompanham.
Verificar a discografia do artista favorito com base nas avaliações dos fãs.
Listar ingressos disponíveis e vendidos para cada evento.
Como usar
Configuração do banco de dados: Execute os scripts SQL fornecidos para criar as tabelas e popular o banco de dados com dados de exemplo.
Consultas: Use as consultas incluídas no projeto para interagir com os dados e obter informações sobre eventos, artistas e ingressos.
Tecnologias Utilizadas
SQL: Linguagem usada para manipulação e consulta dos dados.
MySQL/PostgreSQL: Bancos de dados recomendados para rodar este projeto.
