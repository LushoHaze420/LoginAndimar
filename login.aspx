<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="LoginAndimar.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <!--bootstrap, eliminar integrity y crossorigin-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    
    <!--jquery-->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" ></script>

    <!--JS-->
    <script src="Recursos/Scripts/cbMostrarContrasena.js"></script>

    <!--CSS-->
    <link href="Recursos/Css/Estilos.css" rel="stylesheet" />

    <title>Login Andimar</title>
</head>
<body>
    <div class="container">
        <div class="card">
            <div class="card-header">
                <img src="Recursos/Images/logo-andimar-asecas.png" alt="logo-andimar"/>
            </div>
            <div class="card-body">
                <form id="formulario_login" runat="server">
                    <div class="form-control">
                        <!--<div class="row">
                            <asp:Label class="h2" ID="lblBienvenida" runat="server" Text="Bienvenido/a al Sistema"></asp:Label>
                        </div>-->
                        <div>
                            <asp:Label ID="lblUsuario" runat="server" Text="Usuario"></asp:Label>
                            <asp:TextBox ID="tbUsuario" CssClass="form-control" runat="server" placeholder="Nombre de Usuario"></asp:TextBox>
                        </div>
                        <br />
                        <div>
                            <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                            <asp:TextBox ID="tbPassword" CssClass="form-control" TextMode="Password" runat="server" placeholder="Password" ></asp:TextBox>
                            <asp:CheckBox ID="cbMostrarContrasena" runat="server" Text="Mostrar contraseña" onchange="togglePasswordVisibility('tbPassword', 'cbMostrarContrasena');" />
                        </div>
                        <hr />
                        <div class="row">
                            <asp:Label runat="server" ID="lblError"></asp:Label>
                        </div>
                        <br />
                        <div class="row">
                            <asp:Button ID="BtnIngresar" CssClass="btn btn-primary" runat="server" Text="Ingresar" OnClick="BtnIngresar_Click"></asp:Button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
<!--ASP.NET C♯ || LOGIN básico con procedimientos almacenados y Sesiones desde cero (SQL, CSS, JS)[2021]-->
<!--https://www.youtube.com/watch?v=iOmC2JufnnI-->
