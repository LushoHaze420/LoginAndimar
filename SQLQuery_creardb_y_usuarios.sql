create database Andimar
use Andimar

create table Usuarios
(
id int identity(1000,1),
Usuario varchar(50),
Contrasena varbinary(500)
)

/*para futuro crear un form de reg*/
create procedure SP_AgregarUsuario 
@Usuario varchar(50),
@Contrasena varchar(50),
@Patron varchar(50)
as
begin
insert into Usuarios(Usuario, Contrasena) values (@Usuario, ENCRYPTBYPASSPHRASE(@Patron, @Contrasena))
end

create procedure SP_ValidarUsuario 
@Usuario varchar(50),
@Contrasena varchar(50),
@Patron varchar(50)
as
begin
select*from Usuarios where Usuario=@Usuario and CONVERT(varchar(50), DECRYPTBYPASSPHRASE(@Patron, Contrasena))=@Contrasena
end

select*from Usuarios

SP_AgregarUsuario 'Luis', 'Rocha', 'Andimar'