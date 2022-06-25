Use Ecommerce_Programacionlll
go
Create Trigger TR_EliminarArticulo on Articulos
instead of delete
As
Begin
	Begin Try
		Begin Transaction
			Declare @idArticulo bigint
			Select @idArticulo = IDArticulo From deleted

			Update Imagenes Set Estado = 0 Where IDArticulo = @idArticulo
			Update Articulos_X_Carritos Set Estado = 0 Where IDArticulo = @idArticulo
			Update Articulos Set Estado = 0 Where IDArticulo = @idArticulo
		Commit Transaction
	End Try
	Begin Catch
		RAISERROR('Error, no se pudo eliminar el articulo', 16, 2)
		Rollback Transaction
	End Catch
End
go
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
Create Trigger TR_EliminarCategoria on Categorias
instead of delete
As
Begin
	Begin Try
		Begin Transaction
			Declare @idCategoria smallint
			Select @idCategoria = IDCategoria From deleted

			Update Articulos Set IDCategoria = null Where IDCategoria = @idCategoria
			Update Categorias Set Estado = 0 Where IDCategoria = @idCategoria
		Commit Transaction
	End Try
	Begin Catch
		RAISERROR('Error, no se pudo eliminar la categoria', 16, 2)
		Rollback Transaction
	End Catch
End
go
--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
Create Trigger TR_EliminarImagen on Imagenes
instead of delete
As
Begin
	Begin Try
		Begin Transaction
			Declare @idImagen bigint
			Select @idImagen = IDImagen From deleted

			Update Imagenes Set Estado = 0 Where IDImagen = @idImagen
		Commit Transaction
	End Try
	Begin Catch
		RAISERROR('Error, no se pudo eliminar la categoria', 16, 2)
		Rollback Transaction
	End Catch
End
go
--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
Create Trigger TR_EliminarMarca on Marcas
instead of delete
As
Begin
	Begin Try
		Begin Transaction
			Declare @idMarca smallint
			Select @idMarca = IDMarca From deleted

			Update Marcas Set Estado = 0 Where IDMarca = @idMarca
		Commit Transaction
	End Try
	Begin Catch
		RAISERROR('Error, no se pudo eliminar la marca', 16, 2)
		Rollback Transaction
	End Catch
End
go
--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
Create Trigger TR_EliminarUsuario on Usuarios
instead of delete
As
Begin
	Begin Try
		Begin Transaction
			Declare @idUsuario bigint
			Select @idUsuario = IDUsuario From deleted

			Update Usuarios Set Estado = 0 Where IDUsuario = @idUsuario
		Commit Transaction
	End Try
	Begin Catch
		RAISERROR('Error, no se pudo eliminar el usuario', 16, 2)
		Rollback Transaction
	End Catch
End
go
--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
Create Trigger TR_EliminarContacto on Contactos
instead of delete
As
Begin
	Begin Try
		Begin Transaction
			Declare @idUsuario bigint
			Select @idUsuario = IDUsuario From deleted

			Update Contactos Set Estado = 0 Where IDUsuario = @idUsuario
		Commit Transaction
	End Try
	Begin Catch
		RAISERROR('Error, no se pudo eliminar el contacto', 16, 2)
		Rollback Transaction
	End Catch
End
go
--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
Create Trigger TR_EliminarPais on Pais
instead of delete
As
Begin
	Begin Try
		Begin Transaction
			Declare @idPais tinyint
			Select @idPais = IDPais From deleted

			Update Pais Set Estado = 0 Where IDPais = @idPais
		Commit Transaction
	End Try
	Begin Catch
		RAISERROR('Error, no se pudo eliminar el pais', 16, 2)
		Rollback Transaction
	End Catch
End
go
--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
Create Trigger TR_EliminarProvincia on Provincias
instead of delete
As
Begin
	Begin Try
		Begin Transaction
			Declare @idProvincia int
			Select @idProvincia = IDProvincia From deleted

			Update Provincias Set Estado = 0 Where IDProvincia = @idProvincia
		Commit Transaction
	End Try
	Begin Catch
		RAISERROR('Error, no se pudo eliminar la provincia', 16, 2)
		Rollback Transaction
	End Catch
End
go
--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
Create Trigger TR_EliminarTipoUsuario on TiposUsuarios
instead of delete
As
Begin
	Begin Try
		Begin Transaction
			Declare @idTipoUsuario tinyint
			Select @idTipoUsuario = IDTipoUsuario From deleted

			Update TiposUsuarios Set Estado = 0 Where IDTipoUsuario = @idTipoUsuario
		Commit Transaction
	End Try
	Begin Catch
		RAISERROR('Error, no se pudo eliminar el tipo de usuario', 16, 2)
		Rollback Transaction
	End Catch
End
go