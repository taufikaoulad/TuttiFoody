<%@ Page Title="" Language="C#" MasterPageFile="~/VISTA/SiteMaster.Master" AutoEventWireup="true" CodeBehind="Registrar.aspx.cs" Inherits="TuttiFoody.VISTA.RegistrarM" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../CONTENT/CSS/registrar.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="container">
            <form action="" method="post">
                <h2>Regístrate</h2>
                <div class="content">
                    <div class="input-box">
                        <label for="name">Nombre</label>
                        <input class="controler" id="txtName" type="text" placeholder="Escribe aquí tu nombre" name="name" required runat="server" />
                    </div>
                    <div class="input-box">
                        <label for="email">Email</label>
                        <input class="controler" id="txtEmail" type="text" placeholder="Escribe aquí tu correo" name="email" required runat="server" />
                    </div>
                    <div class="input-box">
                        <label for="password">Contraseña</label>
                        <input class="controler" id="txtPassword" type="password" placeholder="Escribe aquí tu contraseña" name="password" required runat="server" />
                    </div>
                    <div class="input-box">
                        <label for="confirmPassword">Repite la contraseña</label>
                        <input class="controler" id="txtConfirmPassword" type="password" placeholder="Vuelve a escribir tu contraseña" name="password" required runat="server" />
                    </div>
                </div>
                <div class="alert">
                    <p id="errorMsg" runat="server">
                        <%-- Mensaje de error --%>
                    </p>
                    <p>¿Ya tienes una cuenta?<a href="IniciarSesion.aspx"> inicia sesión</a>.</p>
                    <p>Al registrarte estás de acuerdo con nuestros <a href="#">términos</a>, <a href="#">política de privacidad</a> y <a href="#">política de cookies</a>.</p>
                </div>
                <div class="button-container">
                    <%--<button id="btnRegistrar" runat="server" >Regístrate</button>--%>
                    <asp:Button CssClass="btnContinuar" ID="btnRegistrar" OnClick="btnRegistrar_OnClick" runat="server" Text="Regístrate" />
                </div>
            </form>
        </div>
    </form>
</asp:Content>
