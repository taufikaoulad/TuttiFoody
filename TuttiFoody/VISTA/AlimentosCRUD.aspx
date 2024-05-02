<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AlimentosCRUD.aspx.cs" Inherits="TuttiFoody.VISTA.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="UTF-8">
	<title>Insertar Alim</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<!-- CSS de Recetas -->
	<link rel="stylesheet" href="/CONTENT/CSS/AlimentoCRUD.css"/>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"/>
	<link rel="preconnect" href="https://fonts.googleapis.com"/>
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400&display=swap" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
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
					<asp:Button ID="insertar" runat="server" Text="Insertar" CssClass="btn" OnClick="insertar_Click"/>
					<asp:Button ID="modificar" runat="server" Text="Modificar" CssClass="btn" OnClick="modificar_Click"/>
					<asp:Button ID="eliminar" runat="server" Text="Eliminar" CssClass="btn" OnClick="eliminar_Click"/>
				</div>
			</div>
	   </div>    
    </form>
</body>
</html>
