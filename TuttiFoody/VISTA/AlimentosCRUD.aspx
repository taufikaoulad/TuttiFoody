<%@ Page Title="" Language="C#" MasterPageFile="~/VISTA/SiteMaster.Master" AutoEventWireup="true" CodeBehind="AlimentosCRUD.aspx.cs" Inherits="TuttiFoody.VISTA.AlimentosCRUDM" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    	<link rel="stylesheet" type="text/css" href="style.css">
	<!-- CSS de Recetas -->
	<link rel="stylesheet" href="/CONTENT/CSS/AlimentoCRUD.css"/>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"/>
	<link rel="preconnect" href="https://fonts.googleapis.com"/>
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400&display=swap" rel="stylesheet"/>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	 <div class="container">
		<div class="card">
			<div class="datos">
				<div class="grupo">
                 <label for="txtNombre">Nombre:</label>
                 <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
             </div>
             <div class="grupo">
                 <label for="txtDescripcion">Descripción:</label>
                 <textarea ID="txtDescripcion" runat="server" class="form-control"></textarea>
             </div>
             <div class="grupo">
                 <label for="archivoImagen">Archivo de Imagen:</label>
                 <asp:FileUpload ID="archivoImagen" runat="server" CssClass="form-control" Accept="image/*"/>
             </div>
             <div class="grupo">
                 <label for="calorias">Calorías:</label>
                 <asp:TextBox ID="calorias" runat="server" CssClass="form-control"/>
             </div>
             <div class="grupo">
                 <div>
                     <label>Tipo Alimento:</label>
                     <p CssClass="obligatorio">*Obligatorio</p>
                 </div>
                 <asp:DropDownList ID="cbxTipoAlim" runat="server" CssClass="form-control">
                     <asp:ListItem Value="">Seleccionar Tipo</asp:ListItem>
                 </asp:DropDownList>
             </div>
			</div>

         <div class="lista"> 
             <label for="cbxTipoAlim">Lista de Alimentos:</label>
             <asp:ListBox ID="listAlimentos" runat="server" CssClass="form-list" OnSelectedIndexChanged="listAlimentos_SelectedIndexChanged" AutoPostBack="true" ></asp:ListBox>
         </div>
         
			<div class="buttons">
				<asp:Button ID="insertar1" runat="server" Text="Insertar" CssClass="btn insertar1" OnClick="insertar_Click"/>
				<asp:Button ID="modificar1" runat="server" Text="Modificar" CssClass="btn modificar1" OnClick="modificar_Click"/>
				<asp:Button ID="eliminar1" runat="server" Text="Eliminar" CssClass="btn eliminar1" OnClick="eliminar_Click"/>
			</div>
		</div>
</div>    
</asp:Content>
