<%@ Page Title="" Language="C#" MasterPageFile="~/VISTA/SiteMaster.Master" AutoEventWireup="true" CodeBehind="CrearReceta.aspx.cs" Inherits="TuttiFoody.VISTA.CrearReceta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../CONTENT/CSS/CrearReceta.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section id="miFormulario" class="form-register">
        <div class="contenedor-separar">
            <div id="ingresar_titulo">
                <h3>Titulo de la receta</h3>
                <div id="titulo_tiempo">
                    <asp:TextBox ID="NombreDeReceta" CssClass="controls" runat="server" Placeholder="Mi receta se llama..." />
                    <asp:TextBox ID="Tiempo" CssClass="controls" runat="server" Placeholder="Tiempo receta" />
                    <asp:Label ID="mensajeError" runat="server" ForeColor="Black"></asp:Label>
                </div>
            </div>
            <div id="apartado_doble">
                <div id="ingresar_foto">
                    <div id="imagen-preview"></div>
                    <asp:FileUpload ID="imagen" runat="server" accept="image/*" onchange="previewImage(event)" />
                    <!--<ul id="listaAlimentos" runat="server"></ul>-->
                </div>

            </div>
            <div id="ingresar_descripcion">
                <h3>Descripcion</h3>
                <asp:TextBox ID="descripcion_letra" CssClass="controls" runat="server" TextMode="MultiLine" placeholder="La recete es..."></asp:TextBox>
            </div>
            <div id="ingresar_pasos">
                <h3>Pasos de la receta</h3>
                <asp:TextBox ID="pasos_letra" CssClass="controls" runat="server" TextMode="MultiLine" placeholder="Los pasos a seguir son..."></asp:TextBox>
            </div>
            <asp:Button ID="boton_enviar" runat="server" OnClick="boton_enviar_Click" Text="Publicar receta" CssClass="botons" />
        </div>
    </section>
    <script src="../../CONTENT/JS/JSCrearReceta.js"></script>
</asp:Content>
