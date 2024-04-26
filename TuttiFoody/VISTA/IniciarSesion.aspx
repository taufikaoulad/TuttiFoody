<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IniciarSesion.aspx.cs" Inherits="TuttiFoody.VISTA.IniciarSesion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="../CONTENT/CSS/registrar.css" />

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <form action="" method="post">
                <h2>Inicia sesión</h2>
                <div class="content">
                    <div class="input-box">
                        <label for="name">Nombre</label>
                        <input id="txtName" runat="server" type="text" placeholder="Escribe aquí tu nombre" name="name" required />
                    </div>
                    <div class="input-box">
                        <label for="password">Contraseña</label>
                        <input id="txtPassword" runat="server" type="password" placeholder="Escribe aquí tu contraseña" name="password" required />
                    </div>
                </div>
                <div class="alert">
                    <p id="errorMsg" runat="server">  
                        <%-- Mensaje de error --%>
                    </p>
                    <p><a href="RecuperarContrasenya.aspx">¿Te has olvidado la contraseña?</a></p>
                    <p>¿No tienes una cuenta?<a href="Registrar.aspx">¡Regístrate!</a></p>
                </div>
                <div class="button-container">
                    <%--<button>Inicia sesión</button>--%>
                    <asp:Button CssClass="btnContinuar" ID="btnIniciaSesion" onclick="btnIniciaSesion_OnClick" runat="server" Text="Inicia sesión" />

                </div>
            </form>
        </div>
    </form>
</body>
</html>
