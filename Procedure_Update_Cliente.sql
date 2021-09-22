CREATE PROCEDURE EditarCliente
	@ClienteId INT, 
	@Email VARCHAR(256),
	@Nome VARCHAR(50),
	@Sobrenome VARCHAR(100)
AS
BEGIN

	UPDATE Cliente
	SET Email = @Email,
		Nome = @Nome,
		Sobrenome = @Sobrenome
	WHERE Id = @ClienteId;

END;