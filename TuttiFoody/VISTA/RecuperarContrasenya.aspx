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
                        <label id="lbPass" for="password" runat="server" visible="false">Nueva contraseña</label>
                        <%--<input id="txtPassword" type="password" placeholder="Escribe aquí la nueva contraseña" name="password" required runat="server" />--%>
                        <asp:TextBox class="controler" ID="txtPassword" TextMode="Password" runat="server" AutoPostBack="false" Visible="false"/>

                    </div>
                    <div class="input-box">
                        <label id="lbRepPass" for="repeatPassword" runat="server" visible="false">Repite la contraseña</label>
                        <%--<input id="txtRepeatPassword" type="password" placeholder="Escribe otra vez la contraseña aquí" name="repeatPassword" required runat="server" />--%>
                        <asp:TextBox class="controler" ID="txtRepeatPassword" TextMode="Password" runat="server" AutoPostBack="false" Visible="false"/>

                    </div>
                    <div class="input-box">
                        <label id="lbEmail" for="email" runat="server">Correo</label>
                        <%--<input id="txtEmail" type="email" placeholder="Escribe aquí tu correo" name="email" required runat="server" />--%>
                        <asp:TextBox class="controler" ID="txtEmail" TextMode="Email" runat="server" AutoPostBack="false" required/>

                    </div>
                    <div class="input-box">
                        <label id="lbCode" for="code" runat="server">Código</label>
                        <%--<input id="txtCode" type="text" placeholder="Escribe aquí el código recibido por correo" name="code" runat="server" />--%>
                        <asp:TextBox class="controler" ID="txtCode" runat="server" AutoPostBack="false" required/>

                    </div>
                    <div class="button-container codeBtn-container">
                        <%--<button>Enviar código</button>--%>
                        <asp:Button CssClass="btnCode" ID="btnCode" runat="server" OnClick="btnCode_OnClick" Text="Enviar código" />

                    </div>
                </div>
                <div class="alert">
                    <p id="errorMsg" runat="server">
                        <%-- Mensaje de error --%>
                    </p>
                </div>
                <div class="button-container">
                    <asp:Button CssClass="btnContinuar" ID="btnGuardar" OnClick="btnGuardar_OnClick" runat="server" Text="Continuar" />
                </div>
            </form>
        </div>
    </form>
</body>
</html>
