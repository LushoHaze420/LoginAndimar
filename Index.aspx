<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="LoginAndimar.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <!--bootstrap, eliminar integrity y crossorigin-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <!--jquery-->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" ></script>
    <link href="Recursos/Css/Estilos.css" rel="stylesheet"/>

    <title>Inicio</title>
</head>
<body class="index">
    <form id="formulario_index" class="form-control" runat="server">
        <div>
            <asp:Label ID="lblBienvenida" runat="server" Text="" CssClass="h3"></asp:Label>
        </div>
        <div class="BtnCerrarSesion">
            <asp:Button ID="BtnCerrarSesion" runat="server" Text="Cerrar Sesion" CssClass="btn btn-dark" OnClick="BtnCerrarSesion_Click"/>   
        </div>
    </form>
</body>
</html>
