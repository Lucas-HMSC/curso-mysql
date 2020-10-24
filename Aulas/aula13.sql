USE cadastro;

SELECT totaulas, COUNT(*) AS Qtd FROM cursos /*Busca e retorna a quantidade de atributos com o mesmo valor*/
GROUP BY totaulas
ORDER BY totaulas;

SELECT ano, COUNT(*) AS qtd FROM cursos /*HAVING só pode ser usado com o mesmo atributo usado em GROUP BY*/
GROUP BY ano
HAVING COUNT(ano) >= 5
ORDER BY qtd DESC;

SELECT carga, COUNT(*) FROM cursos
WHERE ano > 2015
GROUP BY carga
HAVING carga > (SELECT AVG(carga) FROM cursos);