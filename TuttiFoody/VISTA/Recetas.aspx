<%@ Page Title="" Language="C#" MasterPageFile="~/VISTA/SiteMaster.Master" AutoEventWireup="true" CodeBehind="Recetas.aspx.cs" Inherits="TuttiFoody.VISTA.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- CSS de Recetas -->
    <link rel="stylesheet" href="../CONTENT/CSS/Recetas.css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"/>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400&display=swap" rel="stylesheet"/>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
     
        <div class="buscador">
            <asp:TextBox class="input" ID="inputBusqueda" runat="server" type="text" placeholder="Buscar"></asp:TextBox>
            <button class="btn" ID="btnBuscar" runat="server" OnServerClick="btnBuscar_Click">
                <i class="fa fa-search"></i>
            </button>
    
        </div>
   

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
                            <p class="p"><%# Eval("CaloriasTotalesR") %></p>
                            <p class="p">Kcal</p>
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
</asp:Content>
