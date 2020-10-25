/* Exercícios das Aulas 11 e 12*/
/*Uma lista com o nome de todas as gafanhotas*/
SELECT nome FROM gafanhotos
WHERE sexo = 'F';

/*Uma lista com os dados de todos aqueles que nasceram entre 01/Jan/2000 e 31/Dez/2015*/
SELECT * FROM gafanhotos
WHERE nascimento BETWEEN '2000-01-01' AND '2015-12-31'; /*DATE -> YEAR/MONTH/DAY*/

/*Uma lista com o nome de todos os homens que trabalham como Programadores*/
SELECT nome FROM gafanhotos
WHERE sexo = 'M' AND profissao = 'Programador';

/*Uma lista com os dados de todas mulheres que nasceram no Brasil e que têm seu nome iniciado com a letra J*/
SELECT * FROM gafanhotos
WHERE sexo = 'F' AND nome LIKE 'J%' AND nacionalidade = 'Brasil';

/*Uma lista com o nome a e nacionalidade de todos os homens que têm Silva no nome, 
não nasceram no Brasil e pesam menos de 100Kg*/
SELECT nome, nacionalidade FROM gafanhotos
WHERE nome LIKE '%_silva' AND nacionalidade != 'Brasil';

/*Qual é a maior altura entre os gafanhotos homens que nasceram no Brasil?*/
SELECT MAX(altura) FROM gafanhotos
WHERE sexo = 'M' AND nacionalidade = 'Brasil';

/*Qual é a média de peso dos gafanhotos cadastrados?*/
SELECT AVG(peso) FROM gafanhotos;

/*Qual é o menor peso entre os gafanhotos mulheres que nasceram fora do Brasil, 
entre 01/Jan/1990 e 31/Dez/2000?*/
SELECT MIN(peso) FROM gafanhotos
WHERE sexo = 'F' AND nacionalidade != 'Brasil' AND nascimento BETWEEN '1990-01-01' AND '2000-12-31';

/*Quantas gafanhotas mulheres têm mais de 1,90m de altura?*/
SELECT count(altura) FROM gafanhotos
WHERE sexo = 'F' AND altura > '1.90';
