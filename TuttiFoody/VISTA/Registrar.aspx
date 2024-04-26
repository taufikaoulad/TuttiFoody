<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrar.aspx.cs" Inherits="TuttiFoody.VISTA.Registrar" %>

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
                <h2>Regístrate</h2>
                <div class="content">
                    <div class="input-box">
                        <label for="name">Nombre</label>
                        <input id="txtName" type="text" placeholder="Escribe aquí tu nombre" name="name" required runat="server"/>
                    </div>
                    <div class="input-box">
                        <label for="email">Email</label>
                        <input id="txtEmail" type="text" placeholder="Escribe aquí tu correo" name="email" required runat="server"/>
                    </div>
                    <div class="input-box">
                        <label for="password">Contraseña</label>
                        <input id="txtPassword" type="password" placeholder="Escribe aquí tu contraseña" name="password" required runat="server"/>
                    </div>
                    <div class="input-box">
                        <label for="confirmPassword">Repite la contraseña</label>
                        <input id="txtConfirmPassword" type="password" placeholder="Vuelve a escribir tu contraseña" name="password" required runat="server"/>
                    </div>
                </div>
                <div class ="alert">
                    <p id="errorMsg" runat="server">  
                        <%-- Mensaje de error --%>
                    </p>
                    <p>¿Ya tienes una cuenta?<a href="IniciarSesion.aspx"> inicia sesión</a>.</p>
                    <p>Al registrarte estás de acuerdo con nuestros <a href="#">términos</a>, <a href="#">política de privacidad</a> y <a href="#">política de cookies</a>.</p>
                </div>
                <div class ="button-container">
                    <%--<button id="btnRegistrar" runat="server" >Regístrate</button>--%>
                    <asp:Button CssClass="btnContinuar" ID="btnRegistrar" onclick="btnRegistrar_OnClick" runat="server" Text="Regístrate" />
                </div>
            </form>
        </div>
    </form>
</body>
</html>
