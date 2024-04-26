<%@ Page Title="" Language="C#" MasterPageFile="~/VISTA/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TuttiFoody.VISTA.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <header>
        <link rel="stylesheet" href="../../CONTENT/CSS/CrearReceta.css">
    </header>

<body>

<section class="form-register">

    <div id="ingresar_titulo">
        <h3>Titulo de la receta</h3>
        <input class="controls" type="text" name="nombres" id="nombres" placeholder="Mi receta se llama...">
    </div>

    <div id="apartado_doble">
        
        <div id="ingresar_foto">
            <div id="imagen-preview"></div>
            <input type="file" id="imagen" name="imagen" accept="image/*" onchange="previewImage(event)">
        </div>
    
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
            <!-- Botón para agregar otro cuadro de ingredientes -->
            <button id="agregar_ingrediente" type="button">Añadir nuevo ingrediente</button>
        </div>
    </div>
    

    <div id="ingresar_descripcion">
        <h3>Descripcion</h3>
        <textarea class="controls" id="descripcion_letra" placeholder="La recete es..."></textarea>
    </div>

    <div id="ingresar_pasos">
        <h3>Pasos de la receta</h3>
        <textarea class="controls"  id="pasos_letra" placeholder="Los pasos a seguir son..."></textarea>
    </div>

    <input class="botons" type="submit" value="Publicar receta">
    
</section>

<script src="../../CONTENT/JS/JSCrearReceta.js"></script>

</body>

    <%-- Cosas que faltan:
        - que se muestren los ingredientes de la base de datos en la lista
        - subir imagen a la base de datos
        - enviar formulario a alguna parte?
        
    --%>

</div>
</asp:Content>
