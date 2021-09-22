CREATE PROCEDURE InserirAdicionalCarro
	@AdicionalId INT, @CarroId INT
AS
BEGIN

	INSERT INTO Adicional_Carro(AdicionalId, CarroId)
		VALUES (@AdicionalId, @CarroId)

END