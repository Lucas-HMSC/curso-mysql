USE cadastro;

DESC pessoas;

ALTER TABLE pessoas
RENAME TO gafanhotos;

DESC gafanhotos;

ALTER TABLE pessoas
ADD COLUMN profissao VARCHAR(10) AFTER nome;

ALTER TABLE pessoas
ADD codigo INT FIRST;

ALTER TABLE pessoas
MODIFY COLUMN profissao VARCHAR(20) DEFAULT '';

ALTER TABLE pessoas
CHANGE COLUMN profissao prof VARCHAR(20);

ALTER TABLE pessoas
DROP COLUMN profissao;

SELECT * FROM pessoas;

CREATE TABLE IF NOT EXISTS cursos (
nome VARCHAR(30) NOT NULL UNIQUE,
descricao TEXT,
carga INT UNSIGNED,
totAulas INT UNSIGNED,
ano YEAR DEFAULT '2016'
) DEFAULT CHARSET = utf8mb4;

ALTER TABLE cursos
ADD COLUMN idcurso INT FIRST;

ALTER TABLE cursos
ADD PRIMARY KEY (idcurso);

DESC cursos;

CREATE TABLE IF NOT EXISTS teste(
id INT,
nome VARCHAR(10),
idade INT
);

INSERT INTO teste VALUES
('1', 'Pedro', '22'),
('2', 'Maria', '12'),
('3', 'Maricota', '77');

SELECT * FROM teste;

DROP TABLE IF EXISTS teste;