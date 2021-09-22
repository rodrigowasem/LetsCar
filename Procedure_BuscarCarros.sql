CREATE PROCEDURE BuscarCarros
	@ListaIdAdicional VARCHAR(100),
	@ModalidadePag VARCHAR(100),
	@ValorMin DECIMAL(16,2),
	@ValorMax DECIMAL(16,2),
	@CorId INT,
	@AnoMin INT,
	@AnoMax INT
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
		(SELECT
			ac.CarroId
		FROM
			Adicional_Carro ac
			LEFT JOIN 
				Adicional a ON a.Id = ac.AdicionalId
		WHERE
			a.Id IN (SELECT convert(int, value) FROM string_split(@ListaIdAdicional, ','))
		GROUP BY
			ac.CarroId) aux
		LEFT JOIN 
			Carro c ON c.Id = aux.CarroId
		LEFT JOIN
			Modelo m ON m.Id = c.ModeloId
		LEFT JOIN 
			Marca mc ON mc.Id = m.MarcaId
		LEFT JOIN 
			 Cor ON Cor.Id = c.CorId
		INNER JOIN 
			(SELECT 
				mpc.CarroId
			FROM
				Modalidade_Pag_Carro mpc
			WHERE
				mpc.ModalidadePagId IN (SELECT convert(int, value) FROM string_split(@ModalidadePag, ','))
			GROUP BY
				mpc.CarroId) mpc ON mpc.CarroId = aux.CarroId 
	WHERE
		c.Valor BETWEEN @ValorMin AND @ValorMax
		AND c.CorId = @CorId
		AND c.Ano BETWEEN @AnoMin AND @AnoMax	
END;



