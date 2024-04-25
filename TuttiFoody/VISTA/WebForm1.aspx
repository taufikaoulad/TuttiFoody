<%@ Page Title="" Language="C#" MasterPageFile="~/VISTA/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TuttiFoody.VISTA.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <%-- Encabezado de la página --%>
    <header>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

        <style>
            @font-face 
            {
                font-family: 'MiFuente';
                src: url('ruta/a/tu/archivo/fuente.woff2') format('woff2')
            }
            /*Pagina entera fondo*/
            #Contenido
            {
                background-color: #2a2a2a;
                border-radius: 10px;
                text-align: center;
                margin-top: 30px;
                margin-left: 40px;
                margin-right: 40px;
            }

            #nombre_receta
            {
                margin-top: 30px;
                border-radius: 10px;
                width:70%;
                font-family: 'TT Norms', sans-serif;
                font-size: 30px;
                background-color: #494949;
                color: white;
                outline: none;
                border:none;
            }

            #imagen_receta
            {
                margin-left:50px;
                height:250px;
                width:500px;
                background-color: #494949;
                outline: none;
                border:none;
            }

            #fondo
            {
                background-color: #494949;
                border-radius: 10px;
                height:200px;
                width:500px;

                display: grid;
                place-items: center;
            }


            #descripcion_receta
            {
                border-radius: 10px;
                width:70%;
                height: 130px;
                font-family: 'TT Norms', sans-serif;
                font-size: 15px;
                background-color: #494949;
                color: white;
                outline: none;
                border:none;
                resize: none;
            }

            #pasos_receta
            {
                border-radius: 10px;
                width:70%;
                height: 140px;
                font-family: 'TT Norms', sans-serif;
                font-size: 15px;
                background-color: #494949;
                color: white;
                outline: none;
                border:none;
                resize: none;
            }

            #fila_doble
            {
                margin-top: 30px;
                margin-bottom: 30px;
            }

            /*fuentes de letras*/

            #titulo_ingredientes
            {
                text-align: left;
                font-family: 'Bukhari Script', cursive;
                color: white;
            }

            #titulo_descripcion
            {
                font-family: 'Bukhari Script', cursive;
                color: white;

            }

            #titulo_pasos
            {
                font-family: 'Bukhari Script', cursive;
                color: white;
            }

            #publicar_boton
            {
                width:170px;
                height:70px;
                border-radius: 10px;
                background-color: #439af8;
                color: white;
                outline: none;
                border:none;
                float: right;
                margin-top: 30px;
                margin-bottom: 30px;
                margin-right: 30px;
            }


            body
            {
                background-color:black;
/*
                background-image: url('..CONTENT\Imagenes\fondo.png');
                background-size: cover; 
                background-position: center;
                background-repeat: no-repeat;
                background-attachment: fixed;
*/
            }

            #lista_ingredientes
            {
                outline: none;
                border:none;
                border-radius: 10px;
                background-color: #dddddd;
            }


        </style>
    </header>
    <body>
        <%-- Cuerpo de la página --%>
        <div id="Contenido">

            <%-- Titulo de receta --%>
            <div class="row">
                <div class="col-sm-12" id="Contenido_tituloReceta">
                    <input type="text" name="nombre" id="nombre_receta" placeholder="El nombre de la receta será...">
                </div>
            </div>
        
            <div class="row" id="fila_doble">
                <div class="col-sm-6" id="Subir_imagen">
                    <%-- Subir Imagen --%>
                    <button id="imagen_receta">
                        <h1>a</h1>
                    </button>
                </div>

                <div class="col-sm-6" id="Contenido_ingredientes">
                    <%-- Botones de ingrdientes y cantidades --%>
                    <h1 id="titulo_ingredientes">Ingredientes</h1>
                    <div id="fondo">
                        <div class="row">
                                 <select id="lista_ingredientes">
                                     <option value="opcion1">Tomate</option>
                                     <option value="opcion2">Lechuga</option>
                                     <option value="opcion3">Queso</option>
                                 </select>
                                 <h1>X</h1>
                                 <input type="text" id="nombre_receta" placeholder="Cantidad">
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12" id="Contenido_escripcion">
                    <h1 id="titulo_descripcion">Descripción</h1>
                    <textarea id="descripcion_receta" placeholder="Esta receta és..."></textarea>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12" id="Contenido_pasos">
                    <h1 id="titulo_pasos">Pasos de la receta</h1>
                    <textarea id="pasos_receta" placeholder="Pasos que tendra la receta"></textarea>
                </div>
            </div>

            <div class="row" id="row_final">
                <div class="col-sm-12" id="boton_publicar">
                    <button id="publicar_boton">
                        Publicar receta
                    </button>
                </div>
            </div>
    </body>
    
</div>
</asp:Content>
