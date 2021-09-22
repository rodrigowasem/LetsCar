CREATE PROCEDURE ExcluirFavorito
	@FavoritoId INT
AS
BEGIN

DELETE FROM Favorito WHERE Id = @FavoritoId

END;