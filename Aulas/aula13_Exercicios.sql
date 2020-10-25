/*Uma lista com as profissões dos gafanhotos e seus respectivos quantitativos*/
SELECT profissao, COUNT(*) AS qtd FROM gafanhotos
GROUP BY profissao
ORDER BY qtd DESC;

/*Quantos gafanhotos homens e quantas mulheres nasceram após 01/Jan/2005*/
SELECT 
(SELECT COUNT(*) FROM gafanhotos 
WHERE nascimento >= '2005-01-01') AS Total,
(SELECT COUNT(*) FROM gafanhotos 
WHERE nascimento >= '2005-01-01' AND sexo = 'F') AS Mulheres,
(SELECT COUNT(*) FROM gafanhotos 
WHERE nascimento >= '2005-01-01' AND sexo = 'M') AS Homens
FROM gafanhotos
GROUP BY total;

/*Uma lista com os gafanhotos que nasceram fora do Brasil,
mostrando o páis de origem e o total de pessoas nascidas lá.
Só nos interessam os países que tiveram mais de 3 garanhotos
com essa nacionalidade*/
SELECT nacionalidade, COUNT(*) FROM gafanhotos
WHERE nacionalidade != 'Brasil'
GROUP BY nacionalidade
HAVING COUNT(nacionalidade) >= 3;

/*	Uma lista agrupada pela altura dos gafanhotos, mostrando quantas pessoas
pesam mais de 100Kg e que estão acima da média de altura de todos os cadastrados*/
SELECT altura, COUNT(*) FROM gafanhotos
WHERE  peso > '100'
GROUP BY altura
HAVING altura > (SELECT AVG(altura) FROM gafanhotos);