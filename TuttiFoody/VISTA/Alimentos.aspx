<%@ Page Title="" Language="C#" MasterPageFile="~/VISTA/SiteMaster.Master" AutoEventWireup="true" CodeBehind="Alimentos.aspx.cs" Inherits="TuttiFoody.VISTA.AlimentosM" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../CONTENT/CSS/Alimento.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400&display=swap" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="buscador">
        <asp:TextBox class="input" ID="inputBusqueda" runat="server" type="text" placeholder="Buscar"></asp:TextBox>
        <button class="btn" id="btnBuscar" runat="server" onserverclick="btnBuscar_Click">
            <i class="fa fa-search"></i>
        </button>

    </div>

    <div class="container">
        <!-- separacion -->
        <div class="sticky">
            <h2 id="legumbres">Legumbres</h2>
        </div>
        <div class="separador">
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
                                <div class="proteinas">
                                    <p class="txtPropiedad">Propiedades</p>
                                    <div class="prote">
                                        <p><%# Eval("ProteinasAlimento") %></p> 
                                        <p>g/100g</p>
                                        <p class="txtProteinas">Proteinas</p>
                                    </div>
                                </div>

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
        </div>

        <!-- separacion -->
        <div class="sticky">
            <h2 id="verdurasHortalizas">Verduras y hortalizas</h2>
        </div>
        <br />
        <br />
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

        <br />
        <br />

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

        <br />
        <br />

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

        <br />
        <br />

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

        <br />
        <br />

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

        <br />
        <br />

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
        <div />
        <div />
</asp:Content>
