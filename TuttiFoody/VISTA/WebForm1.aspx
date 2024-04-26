<%@ Page Title="" Language="C#" MasterPageFile="~/VISTA/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TuttiFoody.VISTA.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>
@font-face 
{
    font-family: 'Bukhari Script';
    src: url('..\CONTENT\CSS\Bukhari Script.ttf');
    font-weight: bold;
    font-style: bold;
}

* 
{
margin: 0;
padding: 0;
box-sizing: border-box;
}

body 
{
  background-image: url('fondo.png');
}

.form-register {
  width: 75%;
  background: #121820;
  padding: 30px;
  margin: auto;
  margin-top: 50px;
  margin-bottom: 30px;
  border-radius: 4px;
  font-family: 'calibri';
  color: white;
  box-shadow: 7px 13px 37px #000;
}

.form-register h4 {
  font-size: 22px;
  margin-bottom: 20px;
}

.controls {
  width: 100%;
  background: #24303c;
  padding: 10px;
  border-radius: 4px;
  margin-bottom: 16px;
  border: 1px solid #1f53c5;
  font-family: 'calibri';
  font-size: 18px;
  color: white;
  resize: none;
}

.form-register p {
  height: 40px;
  text-align: center;
  font-size: 18px;
  line-height: 40px;
}

.form-register a {
  color: white;
  text-decoration: none;
}

.form-register a:hover {
  color: white;
  text-decoration: underline;
}

.form-register .botons 
{
  width: 100%;
  background: #1f53c5;
  border: none;
  padding: 12px;
  color: white;
  margin: 16px 0;
  font-size: 16px;
}


#apartado_doble
{
    display: flex;
    gap: 5%;
}

#recuadro
{
    background: #24303c;
    border-radius: 10px;
    height: 190px;
    overflow-y: auto;
}

#cuadro_ingrdientes
{
    display: flex;
    width: 90;
    height: 50px;
    margin-left: 10px;
    margin-right: 10px;
    /* background: #0080ff; */

    align-items: center; /* Alinear verticalmente los elementos */
    gap: 10px; /* Espacio entre los elementos */
    padding: 20px;
    

}

#ingresar_foto
{
    text-align: center;
    width: 55%;
    height: 100%;
    background: #24303c;
    border-radius: 10px;
}

#imagen-preview
{
    margin-top: 20px;
    margin-bottom: 10px;
}

#imagen
{
    margin-bottom: 10px;
}

#objetos {
    width: 200px;
    margin-top: 20px;
}

#X_text {
    margin: 0 10px;
    margin-top: 5px;
}

#cantidad_objetos {
    width: 90px; 
    height: 45px;
    resize: none;
    overflow-y: hidden;
    margin-top: 20px;
}

#añadir_ingrediente
{
    text-align: left;
    text-size-adjust: 10px;
}

h3
{
    font-family: 'Bukhari Script';
}

#descripcion_letra
{
    height:200px;
}

#pasos_letra
{
    height:200px;
}

#imagen::-webkit-file-upload-button {
    background-color: #1f53c5; /* Cambia el color de fondo del botón */
    color: white; /* Cambia el color del texto del botón */
    padding: 10px 15px; /* Ajusta el relleno del botón según sea necesario */
    border: none; /* Quita el borde del botón */
    border-radius: 4px; /* Agrega bordes redondeados */
    cursor: pointer; /* Cambia el cursor al pasar sobre el botón */
}

/* Estilos adicionales para la apariencia del botón */
#imagen::-webkit-file-upload-button:hover {
    background-color: #1a4177; /* Cambia el color de fondo del botón al pasar el cursor sobre él */
}

#ingresar_descripcion
{
    margin-top: 20px;
}

#agregar_ingrediente
{
    background-color: #1f53c5; /* Cambia el color de fondo del botón */
    color: white; /* Cambia el color del texto del botón */
    padding: 10px 15px; /* Ajusta el relleno del botón según sea necesario */
    border: none; /* Quita el borde del botón */
    border-radius: 4px; /* Agrega bordes redondeados */
    cursor: pointer;
    width: 100%;
    margin-top: 5px;
}

</style>

</head>

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
<script>
    //--- PARA MOSTRAR IMAGEN SUBIDA ---
    function previewImage(event) {
        var input = event.target;
        var reader = new FileReader();

        reader.onload = function () {
            var div = document.getElementById('imagen-preview');
            div.innerHTML = '<img src="' + reader.result + '" style="max-width: 200px; max-height: 200px;">';
        };

        reader.readAsDataURL(input.files[0]);
    }


    //--- AÑADIR NUEVO INGREDIENTE ---
    // Obtener referencia al botón "Añadir nuevo ingrediente"
    const botonAgregarIngrediente = document.getElementById("agregar_ingrediente");

    // Escuchar el evento de clic en el botón "Añadir nuevo ingrediente"
    botonAgregarIngrediente.addEventListener("click", function () {
        agregarCuadroIngrediente(); // Llamar a la función para agregar un nuevo cuadro de ingredientes
    });

    // Función para agregar un nuevo cuadro de ingredientes
    function agregarCuadroIngrediente() {
        const nuevoCuadro = document.createElement("div");
        nuevoCuadro.classList.add("cuadro_ingredientes"); // Agregar la clase correspondiente
        nuevoCuadro.innerHTML = `
        <div id="cuadro_ingrdientes" class="cuadro_ingrediente">
            <select class="controls" id="objetos">
                <option value="objeto1">Objeto 1</option>
                <option value="objeto2">Objeto 2</option>
                <option value="objeto3">Objeto 3</option>
            </select>
            <h2 id="X_text" class="X_text"> X </h2>
            <textarea class="controls" id="cantidad_objetos" placeholder="Cantidad"></textarea>
        </div>
    `;

        // Agregar el nuevo cuadro de ingredientes al recuadro de ingredientes
        const recuadroIngredientes = document.getElementById("recuadro");
        recuadroIngredientes.appendChild(nuevoCuadro);
    }

</script>
</body>

</div>
</asp:Content>
