﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SobreNosotros.aspx.cs" Inherits="TuttiFoody.VISTA.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"/> 
    <style>
        .body{
            width: 100%;
            padding-top: 50px;
            padding-left: 80px;
        }

        .margin-integrantes{
            margin-top: 150px;
        }

        
    </style>
</head>
<body class="body">
<form id="form1" runat="server">
    <div class="container">
        <section class="body">
            <div class ="row">
                <div>
                    <h2 style = "padding-left: 500px;">Quienes somos</h2>
                </div>
            <div class ="row">
                <div class ="col">
                    <p><b>¡Hola y bienvenido a TUTTI FOODY! </b></p>
                    <p>Imagina un grupo apasionado de estudiantes, listos para cambiar el mundo desde las aulas de un bootcamp de C# y .Net. </p>
                    <p>Somos ese grupo diverso y vibrante, unidos por una sed de aprendizaje y una misión compartida: <b>¡hacer que comer sano sea emocionante y accesible para todos!</b></p>
                    <p>Nuestro proyecto es más que solo código: es una <b>puerta de entrada a un estilo de vida más consciente y saludable</b>. Desde revelar los secretos nutricionales de tus alimentos favoritos hasta ofrecerte <b>recetas irresistibles</b>.</p>
                    <p>Estamos aquí para inspirarte a tomar decisiones informadas y deliciosas sobre tu dieta.</p>
                    <p>En nuestro viaje hacia un mundo más saludable, <b>tú eres parte de la historia</b>. Únete a nosotros mientras construimos una comunidad dedicada a cambiar hábitos y hacer que cada bocado cuente. </p>
                    <p><b>¡Gracias por ser parte de esta emocionante aventura!</b></p>
                </div>
        </section>
        <section class="container">
            <div class ="row">
               
                <h2 class ="col text-center">Equipo</h2>
                </div>
            <div class="row">
                <img class="col" src = "/CONTENT/Imagenes/Grupo.png" alt ="Foto de grupo" style="width: 500px; height: auto"/>
                
                <div class="col margin-integrantes">
                    <p>-William</p>
                    <p>-Andrei</p>
                    <p>-Taufik</p>
                    <p>-Soraya</p>
                </div>
            </div>
        </section>
               
        </div >
            <div class ="row">
                <h2 class="text-center"> Contacto</h2>


            </div>
          
    </form>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>
</body>
</html>
