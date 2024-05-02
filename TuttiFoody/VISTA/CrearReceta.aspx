<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearReceta.aspx.cs" Inherits="TuttiFoody.VISTA.CrearReceta" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Crear Receta</title>
    <link rel="stylesheet" href="../../CONTENT/CSS/CrearReceta.css" />
</head>
<body>
    <form id="form1" runat="server">
        <section id="miFormulario" class="form-register">
            <div id="ingresar_titulo">
                <h3>Titulo de la receta</h3>
                <div id="titulo_tiempo">
                    <asp:TextBox ID="NombreDeReceta" CssClass="controls" runat="server" Placeholder="Mi receta se llama..." />
                    <asp:TextBox ID="Tiempo"  CssClass="controls" runat="server" Placeholder="Tiempo receta" />
                </div>
            </div>
            <div id="apartado_doble">
                <div id="ingresar_foto">
                    <div id="imagen-preview"></div>
                    <input type="file" id="imagen" name="imagen" accept="image/*" onchange="previewImage(event)">
                    <!--<ul id="listaAlimentos" runat="server"></ul>-->

                </div>

                <div id="ingresar_ingredientes">
                    <h3>Ingredientes</h3>
                    <div id="recuadro" runat="server">

                        <div id="cuadro_ingrediente_0" name="cuadroIngredientes">

                            <!-- INGREDIENTES Y CANTIDADES  -->
                            <asp:DropDownList ID="ingrediente_0" runat="server" CssClass="controls">
                            </asp:DropDownList>
                            <h2 name="X_text"> X </h2>
                            <asp:TextBox  ID="cantidad_0" runat="server" CssClass="controls" placeholder="Cantidad"></asp:TextBox>
                        
                        </div>

                        <div id="cuadro_ingrediente_1" name="cuadroIngredientes">

                            <asp:DropDownList ID="ingrediente_1" runat="server" CssClass="controls">
                            </asp:DropDownList>
                            <h2 name="X_text"> X </h2>
                            <asp:TextBox  ID="cantidad_1" runat="server" CssClass="controls" placeholder="Cantidad"></asp:TextBox>

                        </div>

                        <div id="cuadro_ingrediente_2" name="cuadroIngredientes">

                            <asp:DropDownList ID="ingrediente_2" runat="server" CssClass="controls">
                            </asp:DropDownList>
                            <h2 name="X_text"> X </h2>
                            <asp:TextBox  ID="cantidad_2" runat="server" CssClass="controls" placeholder="Cantidad"></asp:TextBox>

                        </div>

                        <div id="cuadro_ingrediente_3" name="cuadroIngredientes">

                            <asp:DropDownList ID="ingrediente_3" runat="server" CssClass="controls">
                            </asp:DropDownList>
                            <h2 name="X_text"> X </h2>
                            <asp:TextBox  ID="cantidad_3" runat="server" CssClass="controls" placeholder="Cantidad"></asp:TextBox>

                        </div>

                        <div id="cuadro_ingrediente_4" name="cuadroIngredientes">

                            <asp:DropDownList ID="ingrediente_4" runat="server" CssClass="controls">
                            </asp:DropDownList>
                            <h2 name="X_text"> X </h2>
                            <asp:TextBox  ID="cantidad_4" runat="server" CssClass="controls" placeholder="Cantidad"></asp:TextBox>

                        </div>

                        <div id="cuadro_ingrediente_5" name="cuadroIngredientes">

                            <asp:DropDownList ID="ingrediente_5" runat="server" CssClass="controls">
                            </asp:DropDownList>
                            <h2 name="X_text"> X </h2>
                            <asp:TextBox  ID="cantidad_5" runat="server" CssClass="controls" placeholder="Cantidad"></asp:TextBox>

                        </div>

                        <div id="cuadro_ingrediente_6" name="cuadroIngredientes">

                            <asp:DropDownList ID="ingrediente_6" runat="server" CssClass="controls">
                            </asp:DropDownList>
                            <h2 name="X_text"> X </h2>
                            <asp:TextBox  ID="cantidad_6" runat="server" CssClass="controls" placeholder="Cantidad"></asp:TextBox>

                        </div>

                        <div id="cuadro_ingrediente_7" name="cuadroIngredientes">

                            <asp:DropDownList ID="ingrediente_7" runat="server" CssClass="controls">
                            </asp:DropDownList>
                            <h2 name="X_text"> X </h2>
                            <asp:TextBox  ID="cantidad_7" runat="server" CssClass="controls" placeholder="Cantidad"></asp:TextBox>

                        </div>

                        <div id="cuadro_ingrediente_8" name="cuadroIngredientes">

                            <asp:DropDownList ID="ingrediente_8" runat="server" CssClass="controls">
                            </asp:DropDownList>
                            <h2 name="X_text"> X </h2>
                            <asp:TextBox  ID="cantidad_8" runat="server" CssClass="controls" placeholder="Cantidad"></asp:TextBox>

                        </div>

                    </div>

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

        </section>
    </form>
    <script src="../../CONTENT/JS/JSCrearReceta.js"></script>
</body>
</html>
