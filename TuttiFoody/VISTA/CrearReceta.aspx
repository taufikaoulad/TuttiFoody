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
                <asp:TextBox ID="NombreDeReceta" CssClass="controls" runat="server" Placeholder="Mi receta se llama..." />
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

                        <div id="cuadro_ingrediente" name="cuadroIngredientes">

                            <!-- INGREDIENTES Y CANTIDADES  -->
                            <asp:DropDownList ID="ingrediente" runat="server" CssClass="controls">
                            </asp:DropDownList>
                            <h2 name="X_text"> X </h2>
                            <asp:TextBox ID="cantidad" runat="server" CssClass="controls" placeholder="Cantidad"></asp:TextBox>
                        
                        </div>

                    </div>
                    <!-- Botón para agregar otro cuadro de ingredientes -->
                    <asp:TextBox ID="a" runat="server" CssClass="controls" placeholder="Num ingredientes"></asp:TextBox>
                    <asp:Button ID="agregar_ingrediente" runat="server" Text="Añadir nuevo ingrediente" OnClick="agregarIngrediente_Click" />
                </div>

                <!-- 
                <div id="ingresar_ingredientes">
                    <h3>Ingredientes</h3>
                    <div id="recuadro">
                        <div id="cuadro_ingrdientes">
                            <select class="controls" id="objetos">
                                <option value="objeto1">Objeto 1</option>
                                <option value="objeto2">Objeto 2</option>
                                <option value="objeto3">Objeto 3</option>
                            </select>
                            <h2 id="X_text"> X </h2>
                            <textarea class="controls" id="cantidad_objetos" placeholder="Cantidad"></textarea>
                        </div>
                    </div>
                    <!-- Botón para agregar otro cuadro de ingredientes 
                    <button id="agregar_ingrediente" type="button">Añadir nuevo ingrediente</button>
                </div>
                -->

            </div>
            <div id="ingresar_descripcion">
                <h3>Descripcion</h3>
                <asp:TextBox ID="descripcion_letra" CssClass="controls" runat="server" TextMode="MultiLine" placeholder="La recete es..."></asp:TextBox>
            </div>
            <div id="ingresar_pasos">
                <h3>Pasos de la receta</h3>
                <asp:TextBox ID="pasos_letra" CssClass="controls" runat="server" TextMode="MultiLine" placeholder="Los pasos a seguir son..."></asp:TextBox>
            </div>
            <input id="boton_enviar" class="botons" type="submit" value="Publicar receta" />
        </section>
    </form>
    <script src="../../CONTENT/JS/JSCrearReceta.js"></script>
</body>
</html>
