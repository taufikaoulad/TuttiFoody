<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecetasX.aspx.cs" Inherits="TuttiFoody.VISTA.Receta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Receta</title>
    <link rel="stylesheet" href="../../CONTENT/CSS/CrearReceta.css">
</head>

<body>
    <form id="form1" runat="server">
        <section id="miFormulario" class="form-register">

            <div id="ingresar_titulo">
                <asp:Label ID="TituloReceta" runat="server" Text="Titulo de la receta"></asp:Label>
                <asp:Label ID="TiempoReceta" runat="server" Text="20"></asp:Label>
                <asp:Label ID="min" runat="server" Text="min"></asp:Label>
            </div>

            <div id="apartado_dobleB">
                <div id="ingresar_foto">
                    <img src="../../CONTENT/Imagenes/sopaV2.png" class="imagen-fija" alt="Descripción de la imagen" />
                </div>

                <div id="ingresar_ingredientes">
                    <h1>Ingredientes</h1>
                    <div id="recuadroIng" style="display: block;">
                            <asp:Label ID="lblIngrediente1" runat="server" Text="•Tomate X 5"></asp:Label>
                            <asp:Label ID="lblIngrediente2" runat="server" Text="•Tomate X 5"></asp:Label>
                            <asp:Label ID="lblIngrediente3" runat="server" Text="•Tomate X 5"></asp:Label>
                            <asp:Label ID="lblIngrediente4" runat="server" Text="•Tomate X 5"></asp:Label>
                    </div>
                </div>
            </div>

            <div id="kcalRecuadro">
                <asp:Label ID="lblCalorias" runat="server" Text="Calorias totales: "></asp:Label>
                <asp:Label ID="CaloriasReceta" runat="server" Text="40"></asp:Label>
                <asp:Label ID="lblKcal" runat="server" Text="Kcal"></asp:Label>
            </div>

            <div id="ingresar_descripcion">
                <h1>Descripcion</h1>
                <asp:Label ID="DescripcionReceta" runat="server" Text="El caldo de pollo (denominado a veces como sopa de pollo o caldo de gallina) es una sopa.1​ A menudo se sirve con trozos de carne o con granos de arroz o cebada, pasta, zanahoria, papa amarilla, apio, cebolla blanca, etc.2​ Se considera también un remedio curativo y reconfortante contra la gripe y catarros en general."></asp:Label>
            </div>

            <div id="ingresar_pasos">
                <h1>Pasos de la receta</h1>
                <asp:Label ID="PasosReceta" runat="server" Text="El caldo de pollo (denominado a veces como sopa de pollo o caldo de gallina) es una sopa.1​ A menudo se sirve con trozos de carne o con granos de arroz o cebada, pasta, zanahoria, papa amarilla, apio, cebolla blanca, etc.2​ Se considera también un remedio curativo y reconfortante contra la gripe y catarros en general."></asp:Label>
            </div>

        </section>
    </form>
    <script src="../../CONTENT/JS/JSCrearReceta.js"></script>
</body>
</html>
