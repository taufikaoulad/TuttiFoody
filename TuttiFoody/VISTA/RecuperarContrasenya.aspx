<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecuperarContrasenya.aspx.cs" Inherits="TuttiFoody.VISTA.RecuperarContrasenya" %>

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
                <h2>Cambiar contraseña</h2>
                <div class="content">
                    <div class="input-box">
                        <label for="password">Nueva contraseña</label>
                        <input type="password" placeholder="Escribe aquí la nueva contraseña" name="password" required />
                    </div>
                    <div class="input-box">
                        <label for="repeatPassword">Repite la contraseña</label>
                        <input type="password" placeholder="Escribe otra vez la contraseña aquí" name="repeatPassword" required />
                    </div>
                    <div class="input-box">
                        <label for="email">Correo</label>
                        <input type="email" placeholder="Escribe aquí tu correo" name="email" required />
                    </div>
                    <div class="input-box">
                        <label for="code">Código</label>
                        <input type="text" placeholder="Escribe aquí el código recibido por correo" name="code" required />
                    </div>
                    <div class="button-container codeBtn-container">
                        <button>Enviar código</button>
                    </div>
                </div>
                <%--                <div class="alert">
                    <p>¿No tienes una cuenta?<a href="Registrar.aspx">¡Regístrate!</a></p>
                </div>--%>
                <div class="button-container">
                    <button>Guardar nueva contraseña</button>
                </div>
            </form>
        </div>
    </form>
</body>
</html>
