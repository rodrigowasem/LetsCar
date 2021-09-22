CREATE PROCEDURE BuscarFavoritos
	@UsuarioId INT
AS
BEGIN
	SELECT
		c.Id AS CarroId,
		m.Nome AS Modelo,
		mc.Nome AS Marca,
		c.Ano,
		Cor.Nome,
		c.Valor		
	FROM
		Favorito f
		LEFT JOIN
			Carro c ON c.Id = f.CarroId
		LEFT JOIN
			Modelo m ON m.Id = c.ModeloId
		LEFT JOIN 
			Marca mc ON mc.Id = m.MarcaId
		LEFT JOIN 
			Cor ON Cor.Id = c.CorId
	WHERE
		f.UsuarioId = @UsuarioId
END;