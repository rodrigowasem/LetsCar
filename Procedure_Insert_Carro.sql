CREATE PROCEDURE InserirCarro
	@ModeloId INT, 
	@CorId INT, 
	@Ano INT, 
	@Valor DECIMAL(16,2)
AS
BEGIN

INSERT INTO Carro(ModeloId, CorId, Ano, Valor)
	VALUES (@ModeloId, 
			@CorId, 
			@Ano, 
			@Valor);

END;