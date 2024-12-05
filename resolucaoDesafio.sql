-- 1
SELECT
	Nome,
	Ano
FROM Filmes

-- 2
SELECT Nome, Ano, Duracao
FROM Filmes
ORDER BY Ano ASC;

-- 3
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta Para o Futuro';

-- 4
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano = 1997;

-- 5
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000;

-- 6
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

-- 7
SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

-- 8
SELECT Id, PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'M'

-- 9
SELECT Id, PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10
SELECT f.Nome as Nome, g.Genero as Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id;

-- 11
SELECT f.Nome as Nome, g.Genero as Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id
WHERE Genero = 'Mistério';

-- 12
SELECT f.Nome as Nome, a.PrimeiroNome as PrimeiroNome, a.UltimoNome as UltimoNome, ef.Papel as Papel
FROM Filmes f
JOIN ElencoFilme ef ON f.Id = ef.IdFilme
JOIN Atores a ON ef.IdAtor = a.Id;