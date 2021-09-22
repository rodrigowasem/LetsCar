CREATE PROCEDURE EditarCarro
	@CarroId INT, 
	@ModeloId INT,
	@CorId INT,
	@Ano INT,
	@Valor DECIMAL (16,2)
AS
BEGIN

	UPDATE Carro
	SET 
		ModeloId = @ModeloId,
		CorId    = @CorId,
		Ano      = @Ano,
		Valor    = @Valor
	WHERE Id = @CarroId;

END;