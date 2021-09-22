CREATE PROCEDURE ExcluirAdicionalCarro
	@AdicionalId INT, @CarroId INT
AS
BEGIN

DELETE FROM Adicional_Carro WHERE @AdicionalId = @AdicionalId AND CarroId = @CarroId;

END;