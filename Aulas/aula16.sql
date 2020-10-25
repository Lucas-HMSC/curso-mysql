USE cadastro;

CREATE TABLE gafanhoto_assiste_curso (
id INT NOT NULL AUTO_INCREMENT,
data DATE,
idgafanhoto INT,
idcurso INT,
PRIMARY KEY(id),
FOREIGN KEY (idgafanhoto) REFERENCES gafanhotos(id),
FOREIGN KEY (idcurso) REFERENCES cursos(idcurso)
)DEFAULT CHARSET = utf8mb4;

INSERT INTO gafanhoto_assiste_curso VALUES
(DEFAULT, '2014-03-01', '1', '2');

INSERT INTO gafanhoto_assiste_curso VALUES
(DEFAULT, '2015-12-22', '3', '6');

INSERT INTO gafanhoto_assiste_curso VALUES 
(DEFAULT, '2014-01-01', '22', '12');

INSERT INTO gafanhoto_assiste_curso VALUES 
(DEFAULT, '2016-05-12', '1', '19');

SELECT * FROM gafanhoto_assiste_curso;

SELECT g.nome Aluno, c.nome Curso FROM gafanhotos g
JOIN gafanhoto_assiste_curso a 
ON g.id = a.idgafanhoto
JOIN cursos c
ON c.idcurso = a.idcurso
ORDER BY g.nome;