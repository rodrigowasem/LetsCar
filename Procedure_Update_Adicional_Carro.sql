CREATE PROCEDURE EditarAdicionalCarro
	@AdicionalId INT, @CarroId INT, @NovoAdicionalId INT
AS
BEGIN

	UPDATE Adicional_Carro
	SET AdicionalId = @NovoAdicionalId
	WHERE 
		AdicionalId = @AdicionalId
	AND @CarroId = @CarroId;

END;