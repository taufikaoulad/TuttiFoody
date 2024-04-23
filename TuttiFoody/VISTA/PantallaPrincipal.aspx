<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PantallaPrincipal.aspx.cs" Inherits="TuttiFoody.VISTA.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Main</title>
    <link rel="stylesheet" href="~/CONTENT/CSS/PantallaPrincip.css">
</head>
<body>  
    <header>
        <nav>
            <a id='logo' href="">Tutti Foody</a>
            <a href="">Principal</a>
            <a href="">Alimentos</a>
            <a href="">Recetas</a>
            <a href="">About us</a>
            <div>
                <img src="/CONTENT/Imagenes/usuario.png" alt="perfil">
            </div>  
        </nav>
    </header>

    <!-- carousel -->
    <div class="carousel">
        <!-- list item -->
        <div class="list">
            <div class="item">
                <img src="/CONTENT/Imagenes/img1.jpg" alt="perfil">
                <div class="content">
                    <!--<div class="author">NUTRITION</div>-->
                    <div class="title">TUTTI FOODY</div>
                    <div class="topic">LEGUMBRES</div>
                    <div class="des">
                        Proporcionan hidratos de carbono, proteínas (en el caso de las legumbres y frutos secos) y ácidos grasos saludables. Tienen función energética por los hidratos de carbono y plástica por las proteínas.
                    </div>
                    <div class="buttons">
                        <button>VER MÁS</button>
                        <!--<button>SUBSCRIBE</button>-->
                    </div>
                </div>
            </div>
            <div class="item">
                <img src="/CONTENT/Imagenes/img2.jpg" alt="perfil">
                <div class="content">
                    <!--<div class="author">NUTRITION</div>-->
                    <div class="title">TUTTI FOODY</div>
                    <div class="topic">VERDURAS Y HORTALIZAS</div>
                    <div class="des">
                        Ricas en vitaminas, minerales, fibra y agua. Tienen función reguladora debido a su contenido en vitaminas y minerales.
                    </div>
                    <div class="buttons">
                        <button>VER MÁS</button>
                        <!--<button>SUBSCRIBE</button>-->
                    </div>
                </div>
            </div>
            <div class="item">
                <img src="/CONTENT/Imagenes/img3.jpg" alt="perfil">
                <div class="content">
                    <!--<div class="author">NUTRITION</div>-->
                    <div class="title">TUTTI FOODY</div>
                    <div class="topic">CARNES, PESCADOS Y HUEVOS</div>
                    <div class="des">
                        Fuentes de proteínas con distintos perfiles de grasas: carnes y huevos contienen ácidos grasos saturados, mientras que el pescado aporta ácidos grasos poliinsaturados, especialmente en el pescado azul. Tienen función plástica por su contenido proteico.
                    </div>
                    <div class="buttons">
                        <button>VER MÁS</button>
                        <!--<button>SUBSCRIBE</button>-->
                    </div>
                </div>
            </div>
            <div class="item">
                <img src="/CONTENT/Imagenes/img4.jpg" alt="perfil">
                <div class="content">
                    <!--<div class="author">NUTRITION</div>-->
                    <div class="title">TUTTI FOODY</div>
                    <div class="topic">LÁCTEOS</div>
                    <div class="des">
                        Alimentos ricos en proteínas y energía, con variaciones en contenido graso que afectan su aporte energético. Poseen función plástica debido a su contenido proteico esencial para la formación y mantenimiento de tejidos.
                    </div>
                    <div class="buttons">
                        <button>VER MÁS</button>
                        <!--<button>SUBSCRIBE</button>-->
                    </div>
                </div>
            </div>
            <div class="item">
                <img src="/CONTENT/Imagenes/img5.jpg" alt="perfil">
                <div class="content">
                    <!--<div class="author">NUTRITION</div>-->
                    <div class="title">TUTTI FOODY</div>
                    <div class="topic">FRUTAS</div>
                    <div class="des">
                        Similar composición a verduras, aportan vitaminas, minerales y azúcares naturales. Tienen función reguladora por su contenido nutricional.
                    </div>
                    <div class="buttons">
                        <button>VER MÁS</button>
                        <!--<button>SUBSCRIBE</button>-->
                    </div>
                </div>
            </div>
            <div class="item">
                <img src="/CONTENT/Imagenes/img6.jpg" alt="perfil">
                <div class="content">
                    <!--<div class="author">NUTRITION</div>-->
                    <div class="title">TUTTI FOODY</div>
                    <div class="topic">CEREALES</div>
                    <div class="des">
                        Principales fuentes de hidratos de carbono y energía. Los cereales integrales también aportan fibra y vitaminas B. El exceso de azúcar y dulces puede contribuir al sobrepeso y la obesidad.
                    </div>
                    <div class="buttons">
                        <button>VER MÁS</button>
                        <!--<button>SUBSCRIBE</button>-->
                    </div>
                </div>
            </div>
            <div class="item">
                <img src="/CONTENT/Imagenes/img7.jpg" alt="perfil">
                <div class="content">
                    <!--<div class="author">NUTRITION</div>-->
                    <div class="title">TUTTI FOODY</div>
                    <div class="topic">ACEITES Y GRASAS</div>
                    <div class="des">
                        Principalmente grasas, también contienen vitaminas liposolubles. Tienen función energética debido a su alto contenido calórico.
                    </div>
                    <div class="buttons">
                        <button>VER MÁS</button>
                        <!--<button>SUBSCRIBE</button>-->
                    </div>
                </div>
            </div>
        </div>
        <!-- list thumnail -->
        <div class="thumbnail">
            <div class="item">
                <img src="/CONTENT/Imagenes/img1.jpg" alt="perfil">
                <div class="content">
                    <div class="title">
                        Legumbres
                    </div>
                    <!--<div class="description">
                        Description
                    </div>-->
                </div>
            </div>
            <div class="item">
                <img src="/CONTENT/Imagenes/img2.jpg" alt="perfil">
                <div class="content">
                    <div class="title">
                        Verduras y hostalizas
                    </div>
                    <!--<div class="description">
                        Description
                    </div>-->
                </div>
            </div>
            <div class="item">
                <img src="/CONTENT/Imagenes/img3.jpg" alt="perfil">
                <div class="content">
                    <div class="title">
                        Carnes, pescados y huevos
                    </div>
                    <!--<div class="description">
                        Description
                    </div>-->
                </div>
            </div>
            <div class="item">
                <img src="/CONTENT/Imagenes/img4.jpg" alt="perfil">
                <div class="content">
                    <div class="title">
                        Lácteos
                    </div>
                    <!--<div class="description">
                        Description
                    </div>-->
                </div>
            </div>
            <div class="item">
                <<img src="/CONTENT/Imagenes/img5.jpg" alt="perfil">
                <div class="content">
                    <div class="title">
                        Frustas
                    </div>
                    <!--<div class="description">
                        Description
                    </div>-->
                </div>
            </div>
            <div class="item">
                <img src="/CONTENT/Imagenes/img6.jpg" alt="perfil">
                <div class="content">
                    <div class="title">
                        Cereales
                    </div>
                    <!--<div class="description">
                        Description
                    </div>-->
                </div>
            </div>
            <div class="item">
                <img src="/CONTENT/Imagenes/img7.jpg" alt="perfil">
                <div class="content">
                    <div class="title">
                        Aceites y grasas
                    </div>
                    <!--<div class="description">
                        Description
                    </div>-->
                </div>
            </div>
        </div>
        <!-- next prev -->

        <div class="arrows">
            <button id="prev"><</button>
            <button id="next">></button>
        </div>
        <!-- time running -->
        <div class="time"></div>
    </div>

    <script src="/CONTENT/JS/PantallaPrincip.js"></script>
    
</body>
</html>
