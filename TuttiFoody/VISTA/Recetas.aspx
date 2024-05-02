<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Recetas.aspx.cs" Inherits="TuttiFoody.VISTA.Recetas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Recetas</title>
    <!-- CSS de Recetas -->
    <link rel="stylesheet" href="../CONTENT/CSS/Recetas.css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"/>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400&display=swap" rel="stylesheet"/>

</head>
<body>
    <div class="container">
         <form id="form1" runat="server">
            <div class="buscador">
                <asp:TextBox class="input" ID="inputBusqueda" runat="server" type="text" placeholder="Buscar"></asp:TextBox>
                <button class="btn" ID="btnBuscar" runat="server" OnServerClick="btnBuscar_Click">
                    <i class="fa fa-search"></i>
                </button>
        
            </div>
        </form>

         <div class="sticky">
             <h2 id="legumbres">Recetas</h2>
         </div>
         <!-- separacion -->
         <div class="separador">
              <asp:Repeater ID="repRecetas" runat="server">
                <ItemTemplate>
                    <div class="card">
                        <div class="img-card" style="background-image: url(<%# Eval("ArchivoImagen") %>)"></div>
                        <div class="content">
                            <div class="title">
                                <h3><%# Eval("NombreR") %></h3>
                                <div class="ContenedorTempo">
                                    <div class="separacion">
                                        <div class="tiempo">
                                            <p><%# Eval("TiempoR") %></p>
                                        </div>
                                        <p class="tiempo">min.</p>
                                    </div>
                                    <img class="logoTiempo" src="/CONTENT/Imagenes/tiempo.png" />
                                </div>
                            </div>

                            <div class="calorias">
                                <p><%# Eval("CaloriasTotalesR") %></p>
                                <p>Kcal</p>
                            </div>

                            <div class="descripcion">
                                <p><%# Eval("DescripcionR") %></p>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
         </div>
    </div>    
    <!-- Java Script de alimentos -->
    <script src="/CONTENT/JS/Recetas.js"></script>
</body>
</html>

