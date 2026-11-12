use cinema	;

SELECT a.NomeArtistico,
       p.Personagem
FROM ATOR a
INNER JOIN PERSONAGEM p ON a.CodAtor = p.CodAtor
WHERE a.NomeReal = 'Maria da Silva';

SELECT f.NomeFilme,
       p.Personagem
FROM ATOR a
INNER JOIN PERSONAGEM p ON a.CodAtor  = p.CodAtor
INNER JOIN FILME f      ON p.CodFilme = f.CodFilme
WHERE a.NomeArtistico = 'Jim Carrey';

USE clinical;

SELECT p.nomePac   AS paciente,
       m.nomeMed   AS medico,
       c.data
FROM consulta c
INNER JOIN paciente p ON c.codPac = p.codPac
INNER JOIN medico m   ON c.codMed = m.codMed
WHERE c.data >= '2025-04-01'
  AND c.data <  '2025-05-01'
ORDER BY c.data;
