CREATE PROCEDURE ExcluirUsuario
	@UsuarioId INT
AS
BEGIN

DELETE FROM Usuario WHERE Id = @UsuarioId

END;