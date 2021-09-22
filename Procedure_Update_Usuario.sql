CREATE PROCEDURE EditarUsuario
	@UsuarioId INT, 
	@Senha VARCHAR(8),
	@DataNasc DATETIME
AS
BEGIN

	UPDATE Usuario
	SET 
		Senha    = @Senha,
		DataNasc = @DataNasc
	WHERE Id = @UsuarioId;

END;