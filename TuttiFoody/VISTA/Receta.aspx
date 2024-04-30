<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Receta.aspx.cs" Inherits="TuttiFoody.VISTA.Receta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Receta</title>
    <link rel="stylesheet" href="../../CONTENT/CSS/CrearReceta.css">
</head>

<body>
    <section id="miFormulario" class="form-register">

    <div id="ingresar_titulo">
        <h1 id="TituloReceta">Titulo de la receta</h1>
    </div>

    <div id="apartado_doble">
        
        <div id="ingresar_foto">
            <div id="imagen-preview"></div>
            <input type="file" id="imagen" name="imagen" accept="image/*" onchange="previewImage(event)">
        </div>

        <div id="ingresar_ingredientes">
            <h1>Ingredientes</h1>
            <div id="recuadro">
                <div id="cuadro_ingrdientes">
                    <h4>•Tomate X 5</h4>
                </div>
            </div>
        </div>
    </div>
    

    <div id="ingresar_descripcion">
        <h1>Descripcion</h1>
        <h4>Passosososos</h4>
        </div>

    <div id="ingresar_pasos">
        <h1>Pasos de la receta</h1>
        <h4>Passosososos</h4>
    </div>
    
</section>

<script src="../../CONTENT/JS/JSCrearReceta.js"></script>
</body>
</html>
