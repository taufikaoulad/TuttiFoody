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
                        <input type="text" placeholder="Escribe aquí tu nombre" name="name" required />
                    </div>
                    <div class="input-box">
                        <label for="email">Email</label>
                        <input type="text" placeholder="Escribe aquí tu correo" name="email" required />
                    </div>
                    <div class="input-box">
                        <label for="password">Contraseña</label>
                        <input type="password" placeholder="Escribe aquí tu contraseña" name="password" required />
                    </div>
                    <div class="input-box">
                        <label for="confirmPassword">Repite la contraseña</label>
                        <input type="password" placeholder="Vuelve a escribir tu contraseña" name="password" required />
                    </div>
                </div>
                <div class ="alert">
                    <p>¿Ya tienes una cuenta?<a href="IniciarSesion.aspx"> inicia sesión</a>.</p>
                    <p>Al registrarte estás de acuerdo con nuestros <a href="#">términos</a>, <a href="#">política de privacidad</a> y <a href="#">política de cookies</a>.</p>
                </div>
                <div class ="button-container">
                    <button>Regístrate</button>
                </div>
            </form>
        </div>
    </form>
</body>
</html>
