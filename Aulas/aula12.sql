USE cadastro;

SELECT * FROM cursos /*Operador LIKE junto com % para buscar todos os cursos que possuem a letra P*/
WHERE nome LIKE '%P%'; /*% -> substitui nenhum ou varios caracteres*/

SELECT * FROM cursos 
WHERE nome NOT LIKE '%a%';

SELECT * FROM cursos
WHERE nome LIKE 'php_'; /*_ -> substitui um caracter*/

SELECT DISTINCT nacionalidade FROM gafanhotos
ORDER BY nacionalidade; /*Busca por nacionalidades sem repetição*/

SELECT COUNT(*) FROM cursos /*Busca e retorna o somatório que satisfaça a expressão*/
WHERE carga > '40';

SELECT MAX(carga) FROM cursos; /*Busca e retorna o maior valor do atributo*/

SELECT nome, MIN(totaulas) FROM cursos
WHERE ano = '2016'; /*Busca e retorna o menor valor do atributo*/

SELECT SUM(totaulas) FROM cursos
WHERE ano = '2016'; /*Busca e retorna o somatório dos valores do atributo*/

SELECT AVG(totaulas) FROM cursos
WHERE ano = '2016'; /*Busca e retorna a media dos valores do atributo*/
