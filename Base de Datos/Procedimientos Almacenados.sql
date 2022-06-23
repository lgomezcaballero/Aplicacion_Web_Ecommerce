Use Ecommerce_Programacionlll
go
Create Procedure SP_ListarArticulos
As
Begin
	select a.IDArticulo, a.Nombre Articulo, a.Descripcion, t.IDTalla, t.Talla, t.Estado EstadoTalla, a.Precio, a.Stock, 
	a.FechaRegistro, a.Estado EstadoArticulo, m.IDMarca, m.Nombre Marca, m.FechaRegistro FechaRegistroMarca,
	m.Estado EstadoMarca, c.IDCategoria, c.Nombre Categoria, c.FechaRegistro FechaRegistroCategoria, c.Estado EstadoCategoria,
	g.IDGenero, g.Nombre Genero, g.Estado EstadoGenero 
	From Articulos a Left Join Marcas m on a.IDMarca = m.IDMarca
	Left Join Tallas t on a.IDTalla = t.IDTalla
	Left Join Categorias c on a.IDCategoria = c.IDCategoria 
	Left Join Generos g on a.IDGenero = g.IDGenero
	Where a.Estado = 1
End
go
Create Procedure SP_AgregarArticulo(
	@idMarca smallint,
	@idCategoria smallint,
	@idGenero tinyint,
	@idTalla tinyint,
	@nombre varchar(200),
	@descripcion varchar(500),
	@precio money,
	@stock bigint
)
As
Begin
	Begin Try
		Begin Transaction
			Insert into Articulos (IDMarca, IDCategoria, IDGenero, IDTalla, Nombre, Descripcion, Precio, Stock)
			values (@idMarca, @idCategoria, @idGenero, @idTalla, @nombre, @descripcion, @precio, @stock)
		Commit Transaction
	End Try
	Begin Catch
		RAISERROR('Error, no se pudo agregar el articulo', 16, 1)
		Rollback Transaction
	End Catch
End
go
Create Procedure SP_ModificarArticulo(
	@idArticulo bigint,
	@idMarca smallint,
	@idCategoria smallint,
	@idGenero tinyint,
	@idTalla tinyint,
	@nombre varchar(200),
	@descripcion varchar(500),
	@precio money,
	@stock bigint
)
As
Begin
	Begin Try
		Begin Transaction
			Update Articulos Set IDMarca = @idMarca, IDCategoria = @idCategoria, IDGenero = @idGenero, IDTalla = @idTalla, Nombre = @nombre,
			Descripcion = @descripcion, Precio = @precio, Stock = @stock Where IDArticulo = @idArticulo
		Commit Transaction
	End Try 
	Begin Catch
		RAISERROR('Error, no se pudo modificar el articulo', 16, 1)
		Rollback Transaction
	End Catch
End
go
Create Procedure SP_EliminarArticulo(
	@idArticulo bigint
)
As
Begin
	Begin Try
		Delete From Articulos Where IDArticulo = @idArticulo
	End Try
	Begin Catch
		RAISERROR('Error, no se pudo eliminar el articulo', 16, 1)
	End Catch
End
go
Create Procedure SP_ObtenerArticulo(
	@idArticulo bigint 
)
As
Begin
	select a.IDArticulo, a.Nombre Articulo, a.Descripcion, t.IDTalla, t.Talla, t.Estado EstadoTalla, a.Precio, a.Stock, 
	a.FechaRegistro, a.Estado EstadoArticulo, m.IDMarca, m.Nombre Marca, m.FechaRegistro FechaRegistroMarca,
	m.Estado EstadoMarca, c.IDCategoria, c.Nombre Categoria, c.FechaRegistro FechaRegistroCategoria, c.Estado EstadoCategoria,
	g.IDGenero, g.Nombre Genero, g.Estado EstadoGenero 
	From Articulos a Left Join Marcas m on a.IDMarca = m.IDMarca
	Left Join Tallas t on a.IDTalla = t.IDTalla
	Left Join Categorias c on a.IDCategoria = c.IDCategoria 
	Left Join Generos g on a.IDGenero = g.IDGenero
	Where a.IDArticulo = @idArticulo
End
go
-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
Create Procedure SP_ListarCategorias
As
Begin
	Select IDCategoria, Nombre, FechaRegistro, Estado From Categorias Where Estado = 1
End
go
Create Procedure SP_AgregarCategoria(
	@nombre varchar(50)
)
As
Begin
	Begin Try
		Begin Transaction
			Insert into Categorias (Nombre) values (@nombre)
		Commit Transaction
	End Try
	Begin Catch
		RAISERROR('Error, no se pudo agregar la categoria', 16, 1)
		Rollback Transaction
	End Catch
End
go
Create Procedure SP_ModificarCategoria(
	@idCategoria smallint,
	@nombre varchar(50)
)
As
Begin
	Begin Try
		Begin Transaction
			Update Categorias Set Nombre = @nombre Where IDCategoria = @idCategoria
		Commit Transaction
	End Try 
	Begin Catch
		RAISERROR('Error, no se pudo modificar la categoria', 16, 1)
		Rollback Transaction
	End Catch
End
go
Create Procedure SP_EliminarCategoria(
	@idCategoria smallint
)
As
Begin
	Begin Try
		Delete From Categorias Where IDCategoria = @idCategoria
	End Try
	Begin Catch
		RAISERROR('Error, no se pudo eliminar el articulo', 16, 1)
	End Catch
End
go
-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
Create Procedure SP_ListarImagenesArticulo(
	@idArticulo bigint
)
As
Begin
	Select IDImagen, URLImagen, Estado From Imagenes Where IDArticulo = @idArticulo
End
go
Create Procedure SP_AgregarImagen(
	@idArticulo bigint,
	@urlImagen varchar(300)
)
As
Begin
	Begin Try
		Begin Transaction
			Insert into Imagenes(IDArticulo, URLImagen) values (@idArticulo, @urlImagen)
		Commit Transaction
	End Try
	Begin Catch
		RAISERROR('Error, no se pudo agregar la imagen', 16, 1)
		Rollback Transaction
	End Catch
End
go
Create Procedure SP_ModificarImagen(
	@idImagen bigint,
	@idArticulo bigint,
	@urlImagen varchar(300)
)
As
Begin
	Begin Try
		Begin Transaction
			Update Imagenes Set IDArticulo = @idArticulo, URLImagen = @urlImagen Where IDImagen = @idImagen
		Commit Transaction
	End Try 
	Begin Catch
		RAISERROR('Error, no se pudo modificar la imagen', 16, 1)
		Rollback Transaction
	End Catch
End
go
Create Procedure SP_EliminarImagen(
	@idImagen bigint
)
As
Begin
	Begin Try
		Delete From Imagenes Where IDImagen = @idImagen
	End Try
	Begin Catch
		RAISERROR('Error, no se pudo eliminar la imagen de articulo', 16, 1)
	End Catch
End
go
-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
Create Procedure SP_ListarUsuarios
As
Begin
	Select u.IDUsuario, u.Apellidos, u.Nombres, u.DNI, u.NombreUsuario, u.Contraseņa, u.Estado EstadoUsuario, 
	tu.IDTipoUsuario, tu.Nombre TipoUsuario, tu.Estado EstadoTipoUsuario, c.IDUsuario, c.Email, c.Telefono, 
	c.Estado EstadoContacto, l.IDLocalidad, l.CP CodigoPostal, l.Nombre NombreLocalidad, l.Estado EstadoLocalidad, 
	p.IDProvincia, p.Nombre Provincia, p.Estado EstadoProvincia, pa.IDPais, pa.Nombre Pais, pa.Estado EstadoPais
	From Usuarios u Inner Join TiposUsuarios tu on u.IDTipoUsuario = tu.IDTipoUsuario
	Inner Join Contactos c on u.IDUsuario = c.IDUsuario
	Inner Join Localidad l on u.IDLocalidad = l.IDLocalidad
	Inner Join Provincias p on l.IDProvincia = p.IDProvincia
	Inner Join Pais pa on p.IDPais = pa.IDPais
End
go
Create Procedure SP_AgregarUsuario(
	@apellidos varchar(100),
	@nombres varchar(100),
	@dni varchar(15),
	@nombreUsuario varchar(20),
	@contraseņa varchar(30),
	@idTipoUsuario tinyint,
	@idLocalidad int
)
As
Begin
	Begin Try
		Begin Transaction
			Insert into Usuarios(Apellidos, Nombres, DNI, NombreUsuario, Contraseņa, IDTipoUsuario, IDLocalidad)
			values (@apellidos, @nombres, @dni, @nombreUsuario, @contraseņa, @idTipoUsuario, @idLocalidad)
		Commit Transaction
	End Try
	Begin Catch
		RAISERROR('Error, no se pudo agregar el usuario', 16, 1)
		Rollback Transaction
	End Catch
End
go
Create Procedure SP_ModificarUsuario(
	@idUsuario bigint,
	@apellidos varchar(100),
	@nombres varchar(100),
	@dni varchar(15),
	@nombreUsuario varchar(20),
	@contraseņa varchar(30),
	@idTipoUsuario tinyint,
	@idLocalidad int
)
As
Begin
	Begin Try
		Begin Transaction
			Update Usuarios Set Apellidos = @apellidos, Nombres = @nombres, DNI = @dni, NombreUsuario = @nombreUsuario,
			Contraseņa = @contraseņa, IDTipoUsuario = @idTipoUsuario, IDLocalidad = @idLocalidad
			Where IDUsuario = @idUsuario
		Commit Transaction
	End Try 
	Begin Catch
		RAISERROR('Error, no se pudo modificar el usuario', 16, 1)
		Rollback Transaction
	End Catch
End
go
Create Procedure SP_EliminarUsuario(
	@idUsuario bigint
)
As
Begin
	Begin Try
		Delete From Usuarios Where IDUsuario = @idUsuario
	End Try
	Begin Catch
		RAISERROR('Error, no se pudo eliminar el usuario', 16, 1)
	End Catch
End
go
-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
Create Procedure SP_ListarMarcas
As
Begin
	Select IDMarca, Nombre, FechaRegistro, Estado From Marcas
End
go
Create Procedure SP_AgregarMarca(
	@nombre varchar(50)
)
As
Begin
	Begin Try
		Begin Transaction
			Insert into Marcas(Nombre) values (@nombre)
		Commit Transaction
	End Try
	Begin Catch
		RAISERROR('Error, no se pudo agregar la marca', 16, 1)
		Rollback Transaction
	End Catch
End
go
Create Procedure SP_ModificarMarca(
	@idMarca smallint,
	@nombre varchar(50)
)
As
Begin
	Begin Try
		Begin Transaction
			Update Marcas Set Nombre = @nombre Where IDMarca = @idMarca
		Commit Transaction
	End Try 
	Begin Catch
		RAISERROR('Error, no se pudo modificar la imagen', 16, 1)
		Rollback Transaction
	End Catch
End
go
Create Procedure SP_EliminarMarca(
	@idMarca smallint
)
As
Begin
	Begin Try
		Delete From Marcas Where IDMarca = @idMarca
	End Try
	Begin Catch
		RAISERROR('Error, no se pudo eliminar la marca', 16, 1)
	End Catch
End
go
-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------
Create Procedure SP_ListarCarrito(
	@idUsuario bigint
)
As
Begin
	Select c.IDCarrito, c.Estado EstadoCarrito, axl.IDArticulo, axl.Cantidad, axl.Estado EstadoArticuloCarrito
	From Carritos c Inner Join Articulos_X_Carritos axl on c.IDCarrito = axl.IDCarrito
	Where c.IDCarrito = @idUsuario
End
go
