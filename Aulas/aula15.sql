USE cadastro;

DESC gafanhotos;

ALTER TABLE gafanhotos
ADD cursopreferido INT;

ALTER TABLE gafanhotos
ADD CONSTRAINT fk_cursopreferido FOREIGN KEY (cursopreferido)
REFERENCES cursos(idcurso); /*Adiciona uma chave estrangeira e sua referencia*/

SELECT * FROM gafanhotos;
SELECT * FROM cursos;

UPDATE gafanhotos
SET cursopreferido = '6'
WHERE id = '1';

UPDATE gafanhotos 
SET cursopreferido = '22' 
WHERE (id = '2');

UPDATE gafanhotos 
SET cursopreferido = '12' 
WHERE (id = '3');

UPDATE gafanhotos 
SET cursopreferido = '7' 
WHERE (id = '4');

UPDATE gafanhotos 
SET cursopreferido = '1' 
WHERE (id = '5');

UPDATE gafanhotos 
SET cursopreferido = '8' 
WHERE (id = '6');

UPDATE gafanhotos 
SET cursopreferido = '4' 
WHERE (id = '7');
UPDATE gafanhotos 
SET cursopreferido = '5' 
WHERE (id = '8');

UPDATE gafanhotos 
SET cursopreferido = '3' 
WHERE (id = '9');

UPDATE gafanhotos 
SET cursopreferido = '30' 
WHERE (id = '10');

UPDATE gafanhotos 
SET cursopreferido = '22' 
WHERE (id = '11');

SELECT g.nome, c.nome, c.ano
FROM gafanhotos AS g INNER JOIN cursos AS c /*INNER JOIN ou somente JOIN*/
ON c.idcurso = g.cursopreferido
ORDER BY g.nome; /*Sintaxe para unir tabelas a partir do relacionamento entre elas*/

SELECT g.nome, c.nome, c.ano
FROM gafanhotos AS g LEFT OUTER JOIN cursos AS c /*LEFT para ordenar a partir da tabela a esquerda, ou somente LEFT JOIN*/
ON c.idcurso = g.cursopreferido
ORDER BY g.nome;

SELECT g.nome, c.nome, c.ano
FROM gafanhotos AS g RIGHT OUTER JOIN cursos AS c /*RIGHT para ordenar a partir da tabela a direita, ou somente RIGHT JOIN*/
ON c.idcurso = g.cursopreferido
ORDER BY g.nome;

