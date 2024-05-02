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
            background-image: url(/CONTENT/Imagenes/fondo.png);
            color:aliceblue;
            font-family: sans-serif;
        }

        .margin-integrantes{
            margin-top: 150px;
        }

        .cuadroMensaje{
            width: 500px;
            height:300px;
        }

        .espacioEnBlanco{
            margin-bottom: 30px;
        }

        .centrarPagina{
            margin: auto;
        }

        .equipo{
            display: flex;
            margin-bottom: 20px;
        }

        .card{
            background-color: #9b9b9b;
            border-radius: 10px;
            padding:10px;
            color: #000000;
            top: 2px;
            left: 51px;
            
        }

        .equipo h4{
            font-size: 40px;
        }

        .equipo .contenido {
            width: 70%;
            height: 100%;
        }
        .equipo .imgPerfil {
            width: 22%;
            height: 100%;
            
        }
        
    </style>
</head>
<body class="body">
<form id="form1" runat="server">
    <div class="container">
        <section>
            <div class ="row">
                <div>
                    <h2 class="text-center">QUIENES SOMOS</h2>
                </div>
                <div class="espacioEnBlanco"></div>
            </div >
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
            </div >
         </section>
      </div >
      <div class="espacioEnBlanco"></div>
        <section class="container">
            <div class ="row">
                <h2 class ="col text-center">EQUIPO</h2>
            </div>
            <div class="espacioEnBlanco"></div>
                <div class="row card">
                    <div class="equipo">
                        
                        <div class = "imgPerfil">
                            <img src  = "/CONTENT/Imagenes/andrei.jpg" alt ="Andrei" style="width: 150px; height: auto; margin-top: 0px;"/>
                        </div>
                        <div class = "contenido">
                            <div class="col" >
                            <h5><b>&nbsp;<a href="https://www.linkedin.com/in/andrei-marin-dev/" target="_blank"><img src = "/CONTENT/Imagenes/linkedin.png" alt ="linkedin" style="width: 32px; height: 28px"/></a>&nbsp; Andrei:</b></h5>
                            <p>Desde muy pequeño me ha atraído el mundo de la informática y es por eso que elegí hacer un grado medio de sistemas microinformáticos 
                                y redes y continuar con un grado superior de desarrollo de aplicaciones multiplataformas. Ahora mismo estoy acabando un bootcamp de .NET para pulir más mis habilidades 
                                y poder encontrar un empleo donde crecer profesionalmente.</p>
                             </div>
                        </div>
                    </div>
              </div>
            <div class="espacioEnBlanco"></div>
             <div class ="row card">
                <div class="equipo">
                    
                        <div class = "imgPerfil">
                            <img src = "/CONTENT/Imagenes/Soraya.jpg" alt ="Soraya" style="width: 150px; height: auto"/>
                        </div>  
                        <div class = "contenido">
                        <h5><b>&nbsp;<a href="https://www.linkedin.com/in/soraya-calvera-7b2148128" target="_blank"><img src = "/CONTENT/Imagenes/linkedin.png" alt ="linkedin" style="width: 32px; height: 28px"/></a>&nbsp; Soraya:</b></h5> 
                        <p>Empecé a descubrir el mundo de la programación en el grado de Telecomunicaciones y me embarque en la aventura de realizar un bootcamp de .Net para ampliar
                    mis conocimientos y consolidarlos. </p>
                        </div>
                    </div>
                
               </div>
            <div class="espacioEnBlanco"></div>
              <div class ="row card">
                <div class="equipo">
                    
                        <div class = "imgPerfil">
                            <img src = "/CONTENT/Imagenes/taufik.jpg" alt ="Taufik" style="width: 150px; height: auto"/>
                        </div>
                        <div class = "contenido">
                        <h5><b>&nbsp;<a href="https://www.linkedin.com/in/taufik-aoulad/" target="_blank"><img src = "/CONTENT/Imagenes/linkedin.png" alt ="linkedin" style="width: 32px; height: 28px"/></a>&nbsp; Taufik:</b></h5> 
                        <p>¡Encantado! Soy Taufik un apasionado de la informática que ha completado sus estudios en Desarrollo de Aplicaciones Multiplataforma (DAM) en el Instituto Nicolau Copernico. 
                        En este momento, estoy expandiendo mis conocimientos a través de un BootCamp de .Net con Fundación Esplai. Estoy comprometido con seguir creciendo profesionalmente y contribuir al mundo tecnológico 
                        con mi experiencia y habilidades.</p>
                        </div>
                    </div>
                
                </div>
            <div class="espacioEnBlanco"></div>
                <div class ="row card">
                <div class="equipo">
                    
                    <div class = "imgPerfil">
                    <img src = "/CONTENT/Imagenes/william.jpg" alt ="William" style="width: 150px; height: auto"/>
                    </div>
                    <div class = "contenido">
                    <h5><b>&nbsp;<a href="https://www.linkedin.com/in/william-pe%C3%B1a/" target="_blank"><img src = "/CONTENT/Imagenes/linkedin.png" alt ="linkedin" style="width: 32px; height: 28px"/></a>&nbsp; William:</b> </h5>
                        <p>¡Hola a todos! Después de terminar mi grado superior en creación de videojuegos, estaba ansioso por comenzar mi carrera en la industria. Durante mis estudios, me dediqué en cuerpo y alma a aprender 
                    todo lo posible sobre diseño, programación y arte de videojuegos, y trabajé en varios proyectos que me permitieron desarrollar y refinar mis habilidades.</p>
                </div>
                </div>
               
             </div>
        </section>
        <div class="espacioEnBlanco"></div>

        <section class ="container">
            <div class ="row">
                    <h2 class="text-center"> CONTACTO</h2>
            </div>
            <div class="espacioEnBlanco"></div>
            <div class="text-center">
                <div >
                    <div>
                        <label id ="nombre">Tu nombre: </label>
                    </div>
                    <div>
                        <asp:TextBox ID="cuadroNombre" runat="server"></asp:TextBox>
                    </div>
                </div>
                    <div class="espacioEnBlanco"></div>
                    <div>
                        <div>
                            <label id="correoElectronico">Tu correo electrónico: </label>
                        </div>
                        <div>
                             <asp:TextBox ID="cuadroCorreoElectronico" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="espacioEnBlanco"></div>
                    <div>
                        <div>
                            <label id="mensaje">Tu mensaje: </label>
                        </div>
                        <div>
                            <asp:TextBox CssClass="cuadroMensaje" ID="txtMensaje" runat="server" TextMode="MultiLine" Rows="20" Columns="50"></asp:TextBox>
                        </div>
                    </div>
                    <div class="espacioEnBlanco"></div>
                    <div>
                        <asp:button runat="server" ID="btnEnviar"  type="button" Text="Enviar" OnClick="btnEnviar_Click"></asp:button>
                    </div>
                </div>

        </section>   

          
    </form>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>
</body>
</html>
