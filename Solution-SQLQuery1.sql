-- 1
SELECT Nome, Ano FROM Filmes

-- 2
SELECT Nome, Ano FROM Filmes ORDER BY Ano DESC

-- 3
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'DE VOLTA PARA O FUTURO'

--4
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997

--5 
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano > 2000

--6

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao DESC

--7 
SELECT Ano,COUNT(*) AS QuantidadeFilmes FROM Filmes
GROUP  BY Ano
ORDER BY QuantidadeFilmes DESC

-- 8
SELECT * FROM Atores
WHERE Genero = 'M'

-- 9
SELECT * FROM Atores
WHERE Genero = 'f'
ORDER BY PrimeiroNome

-- 10
SELECT Filmes.Nome, G.Genero FROM Filmes
INNER JOIN FilmesGenero FG ON Filmes.Id = FG.IdFilme
INNER JOIN Generos G ON G.Id = FG.IdGenero

-- 11

SELECT * FROM Filmes
INNER JOIN FilmesGenero FG ON Filmes.Id = FG.IdFilme
INNER JOIN Generos ON Generos.Id = FG.IdGenero
WHERE Genero = 'Mistério'


-- 12 
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome,EF.Papel FROM Atores
INNER JOIN ElencoFilme EF ON Atores.Id = EF.IdAtor
INNER JOIN  Filmes ON Filmes.Id = EF.IdFilme

