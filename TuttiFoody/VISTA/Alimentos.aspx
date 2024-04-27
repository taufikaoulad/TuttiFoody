<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Alimentos.aspx.cs" Inherits="TuttiFoody.VISTA.Alimentos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Alimentos</title>
    <!-- CSS de alimentos -->
    <link rel="stylesheet" href="~/CONTENT/CSS/Alimento.css"/>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400&display=swap" rel="stylesheet"/>
</head>
<body>
    <div class="container">
         <!-- separacion -->
         <div class="sticky">
             <h2 id="legumbres">Legumbres</h2>
         </div>
 
         <asp:Repeater ID="repLegumbres" runat="server">
             <ItemTemplate>
                 <div class="card">
                     <div class="img-card" style="background-image: url(<%# Eval("Imagen") %>)"></div>
                     
                     <div class="content">
                         <div class="title">
                             <h3><%# Eval("NombreAlimento") %></h3>
                             <div class="calorias">
                                 <p><%# Eval("CaloriasAlimento") %></p> 
                                 <p>Kcal/100g</p>
                             </div>
                         </div>
                         <div>
                             <p class="txtPropiedad">Propiedades</p>
                             <div class="propiedad">
                                <p><%# Eval("Propiedades") %></p>
                            </div>
                         </div>
                         <div class="descripcion">
                            <p><%# Eval("DescripcionAlimento") %></p>
                         </div>
                     </div>
                 </div>
             </ItemTemplate>
         </asp:Repeater>

         <!-- separacion -->
         <div class="sticky">
             <h2 id="verdurasHortalizas">Verduras y hortalizas</h2>
         </div>

         <asp:Repeater ID="repVerduras" runat="server">
            <ItemTemplate>
                <div class="card">
                    <div class="img-card" style="background-image: url(<%# Eval("Imagen") %>)"></div>
            
                    <div class="content">
                        <div class="title">
                            <h3><%# Eval("NombreAlimento") %></h3>
                            <div class="calorias">
                                <p><%# Eval("CaloriasAlimento") %></p> 
                                <p>Kcal/100g</p>
                            </div>
                        </div>
                        <div>
                            <p class="txtPropiedad">Propiedades</p>
                            <div class="propiedad">
                               <p><%# Eval("Propiedades") %></p>
                           </div>
                        </div>
                        <div class="descripcion">
                           <p><%# Eval("DescripcionAlimento") %></p>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
         </asp:Repeater>


         <!-- separacion -->
         <div class="sticky">
             <h2 id="carnesPescados">Carnes, pescados y huevos</h2>
         </div>
 
         <asp:Repeater ID="repCarnes" runat="server">
            <ItemTemplate>
                <div class="card">
                    <div class="img-card" style="background-image: url(<%# Eval("Imagen") %>)"></div>
            
                    <div class="content">
                        <div class="title">
                            <h3><%# Eval("NombreAlimento") %></h3>
                            <div class="calorias">
                                <p><%# Eval("CaloriasAlimento") %></p> 
                                <p>Kcal/100g</p>
                            </div>
                        </div>
                        <div>
                            <p class="txtPropiedad">Propiedades</p>
                            <div class="propiedad">
                               <p><%# Eval("Propiedades") %></p>
                           </div>
                        </div>
                        <div class="descripcion">
                           <p><%# Eval("DescripcionAlimento") %></p>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>

         <!-- separacion -->
         <div class="sticky">
             <h2 id="lacteos">Lácteos</h2>
         </div>

         <asp:Repeater ID="repLacteos" runat="server">
            <ItemTemplate>
                <div class="card">
                    <div class="img-card" style="background-image: url(<%# Eval("Imagen") %>)"></div>
            
                    <div class="content">
                        <div class="title">
                            <h3><%# Eval("NombreAlimento") %></h3>
                            <div class="calorias">
                                <p><%# Eval("CaloriasAlimento") %></p> 
                                <p>Kcal/100g</p>
                            </div>
                        </div>
                        <div>
                            <p class="txtPropiedad">Propiedades</p>
                            <div class="propiedad">
                               <p><%# Eval("Propiedades") %></p>
                           </div>
                        </div>
                        <div class="descripcion">
                           <p><%# Eval("DescripcionAlimento") %></p>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
 

         <!-- separacion -->
         <div class="sticky">
             <h2 id="frutas">Frutas</h2>
         </div>
 
         <asp:Repeater ID="repFrutas" runat="server">
            <ItemTemplate>
                <div class="card">
                    <div class="img-card" style="background-image: url(<%# Eval("Imagen") %>)"></div>
            
                    <div class="content">
                        <div class="title">
                            <h3><%# Eval("NombreAlimento") %></h3>
                            <div class="calorias">
                                <p><%# Eval("CaloriasAlimento") %></p> 
                                <p>Kcal/100g</p>
                            </div>
                        </div>
                        <div>
                            <p class="txtPropiedad">Propiedades</p>
                            <div class="propiedad">
                               <p><%# Eval("Propiedades") %></p>
                           </div>
                        </div>
                        <div class="descripcion">
                           <p><%# Eval("DescripcionAlimento") %></p>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>

         <!-- separacion -->
         <div class="sticky">
             <h2 id="cereales">Cereales</h2>
         </div>
 
         <asp:Repeater ID="repCereales" runat="server">
            <ItemTemplate>
                <div class="card">
                    <div class="img-card" style="background-image: url(<%# Eval("Imagen") %>)"></div>
            
                    <div class="content">
                        <div class="title">
                            <h3><%# Eval("NombreAlimento") %></h3>
                            <div class="calorias">
                                <p><%# Eval("CaloriasAlimento") %></p> 
                                <p>Kcal/100g</p>
                            </div>
                        </div>
                        <div>
                            <p class="txtPropiedad">Propiedades</p>
                            <div class="propiedad">
                               <p><%# Eval("Propiedades") %></p>
                           </div>
                        </div>
                        <div class="descripcion">
                           <p><%# Eval("DescripcionAlimento") %></p>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>

         <!-- separacion -->
         <div class="sticky">
             <h2 id="aceitesGrasas">Aceites y grasas</h2>
         </div>

         <asp:Repeater ID="repAceites" runat="server">
            <ItemTemplate>
                <div class="card">
                    <div class="img-card" style="background-image: url(<%# Eval("Imagen") %>)"></div>
            
                    <div class="content">
                        <div class="title">
                            <h3><%# Eval("NombreAlimento") %></h3>
                            <div class="calorias">
                                <p><%# Eval("CaloriasAlimento") %></p> 
                                <p>Kcal/100g</p>
                            </div>
                        </div>
                        <div>
                            <p class="txtPropiedad">Propiedades</p>
                            <div class="propiedad">
                               <p><%# Eval("Propiedades") %></p>
                           </div>
                        </div>
                        <div class="descripcion">
                           <p><%# Eval("DescripcionAlimento") %></p>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    <div/>
    <!-- Java Script de alimentos -->
    <script src="/CONTENT/JS/Alimento.js"></script>
</body>
</html>

