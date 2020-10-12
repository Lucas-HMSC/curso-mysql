USE cadastro;

INSERT INTO pessoas
(nome, nascimento,sexo, peso, altura, nacionalidade)
VALUES
('Godofredo', '1984-01-02', 'M', '78.5', '1.83', 'Brasil');

INSERT INTO pessoas
(nome, nascimento,sexo, peso, altura, nacionalidade)
VALUES
('Maria', '1999-12-30', 'F', '55.2', '1.65', 'Portugal');

INSERT INTO pessoas
(id, nome, nascimento,sexo, peso, altura, nacionalidade)
VALUES
(DEFAULT, 'Creuza', '1920-12-30', 'F', '50.2', '1.65', DEFAULT);

INSERT INTO pessoas VALUES
(DEFAULT, 'Adalgiza', '1930-11-02', 'F', '63.2', '1.75', 'Irlanda');

INSERT INTO pessoas VALUES
(DEFAULT, 'Cláudio', '1975-4-22', 'M', '99.0', '2.15', 'Brasil'),
(DEFAULT, 'Pedro', '1999-12-3', 'M', '87', '2', DEFAULT),
(DEFAULT, 'Janaína', '1987-11-12', 'F', '75.4', '1.66', 'EUA');

SELECT * FROM pessoas;