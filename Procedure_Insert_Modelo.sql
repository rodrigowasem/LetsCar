CREATE PROCEDURE InserirModelo
	@MarcaId INT, 
	@Nome VARCHAR(30)
AS
BEGIN

INSERT INTO Modelo(MarcaId, Nome)
	VALUES (@MarcaId, 
			@Nome);

END;