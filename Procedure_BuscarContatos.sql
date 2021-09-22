CREATE PROCEDURE BuscarContatos
AS
BEGIN
	SELECT
		c.Id AS CarroId,
		m.Nome AS Modelo,
		mc.Nome AS Marca,
		c.Ano,
		Cor.Nome,
		c.Valor,
		cli.Nome,
		cli.Email,
		cont.Mensagem
	FROM
		Contato cont
		LEFT JOIN 
			Cliente cli ON cli.Id = cont.ClienteId
		LEFT JOIN 
			Carro c ON c.Id = cont.CarroId
		LEFT JOIN
			Modelo m ON m.Id = c.ModeloId
		LEFT JOIN 
			Marca mc ON mc.Id = m.MarcaId
		LEFT JOIN 
			 Cor ON Cor.Id = c.CorId
END;



