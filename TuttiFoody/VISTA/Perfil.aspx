<%@ Page Title="" Language="C#" MasterPageFile="~/VISTA/SiteMaster.Master" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="TuttiFoody.VISTA.Perfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        @font-face {
            font-family: 'Bukhari Script';
            src: url('../../CONTENT/CSS/Bukhari Script.ttf');
            font-weight: bold;
            font-style: bold;
        }

        .controler {
            background: #24303c;
            border: 1px solid #1f53c5;
            color: white;
        }

        .a {
            font-family: 'Bukhari Script'; /*/Añadido por william/*/
        }

        .form1 {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-image: linear-gradient(#380036, #0CBABA);
        }

        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            /*display: flex;*/
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f2f2f2;
        }

        .card {
            width: 800px;
            height: 500px;
            border-radius: 10px;
            /*box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);*/
            background: #121820; /*/Añadido por william/*/
            overflow: hidden;
            display: flex;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        .sidebar {
            width: 200px; /* Ancho del menú */
            background: #121820; /*/Añadido por william/*/

            padding-top: 10px;
            border-top-left-radius: 10px;
            border-bottom-left-radius: 10px;
        }

            .sidebar .a {
                margin-left: 10px;
                padding: 10px;
                text-decoration: none;
                font-size: 18px;
                color: #fff;
                display: block;
                transition: 0.3s;
            }

                .sidebar .a:hover {
                    background-color: #555;
                }

        .content {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            padding: 0px 0;
        }

        .container {
            max-width: 750px;
            min-height: 425px;
            max-height: 425px;
            width: 500px;
            padding: 28px;
            margin: 10px;
            border-radius: 10px;
            overflow: hidden;
            background: rgba(0,0,0,0.7);
            background: #2B384D;
            box-shadow: inset 0 0 20px rgba(0, 0, 0, 0.9);
            flex-grow: 1; /* Para que el contenedor ocupe todo el espacio de altura disponible */
            align-self: stretch; /* Para que el contenido se estire verticalmente */
        }


        h2 {
            font-size: 18px;
            font-weight: bold;
            text-align: left;
            color: #fff;
            padding-bottom: 8px;
            border-bottom: 1px solid silver;
            font-family: 'Bukhari Script'; /*/Añadido por william/*/
        }

        .input-box {
            font-family: 'calibri'; /*/Añadido por william/*/
            display: flex;
            flex-wrap: wrap;
            width: 48%;
            padding-bottom: 15px;
        }

            .input-box label {
                width: 95%;
                color: #ccc;
                font-weight: bold;
                margin: 5px 0;
            }

            .input-box input {
                height: 40px;
                width: 95%;
                padding: 0 10px;
                border-radius: 5px;
                border: 1px solid #ccc;
                outline: none;
                border: 1px solid #f1683a /*/Añadido por william/*/
            }

                .input-box input:is(:focus,:valid) {
                    box-shadow: 0 3px 6px rgba(0,0,0,0.2);
                }

        .alert p {
            font-size: 14px;
            font-style: italic;
            color: #fff;
            margin: 5px 0;
            padding: 10px;
            line-height: 1.5;
        }

        .container p {
            font-size: 14px;
        }

        .subtitle {
            color: #fff;
            font-weight: bold;
        }

        .container p {
            color: #fff;
        }

        .sidebar .cerrarSesion {
            color: #EE4266;
        }

            .sidebar .cerrarSesion:hover {
                color: #fff;
                background-color: #EE4266;
            }

            .button-container .btnContinuar {
    width: 100%;
    margin-top: 10px;
    padding: 10px;
    display: block;
    font-size: 20px;
    color: #fff;
    border: none;
    border-radius: 5px;
    background-image: linear-gradient(to right, #f1683a, #f1683a);
    cursor: pointer;
    transition: 0.3s;
}

.button-container .btnContinuar:hover {
    background-image: linear-gradient(to right,#f1683a, #f1683a);
}


    .codeBtn-container .btnCode:hover {
        background-image: linear-gradient(to right,#4CCD99, #007F73);
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="card">
            <div class="sidebar">
                <asp:LinkButton CssClass="a" ID="btnCrearReceta" runat="server" OnClick="btnCrearReceta_Click">Crear receta</asp:LinkButton>
                <asp:LinkButton CssClass="a" ID="lnkEditarPerfil" runat="server" OnClick="ShowContent">Editar perfil</asp:LinkButton>
                <asp:LinkButton CssClass="a" ID="lnkSeguridad" runat="server" OnClick="ShowContent">Seguridad</asp:LinkButton>
                <asp:LinkButton CssClass="a" ID="lnkAjustesCuenta" runat="server" OnClick="ShowContent">Ajustes de cuenta</asp:LinkButton>
                <asp:LinkButton CssClass="a cerrarSesion" runat="server" OnClick="CerrarSesion_Click">Cerrar sesión</asp:LinkButton>
            </div>

            <div class="content" id="dynamicContent" runat="server">
                <!-- Contenido dinámico se insertará aquí -->

            </div>
        </div>

        <!-- Contenidos ocultos -->
        <%--EDITAR PERFIL--%>
        <div id="editarPerfil" runat="server">
            <div class="container">
                <h2>Editar perfil</h2>
                <div class="content">
                    <div class="input-box">
                        <label for="name">Cambia tu nombre de usuario</label>
                        <input class="controler" id="txtName" type="text" placeholder="Escribe aquí tu nuevo nombre" name="name" runat="server" />
                    </div>
                </div>
                <div class="alert">
                    <p id="errorMsg" runat="server">
                    </p>
                </div>
                <div class="button-container">
                    <asp:Button CssClass="btnContinuar" ID="btnAplicarCambios" OnClick="btnAplicarCambios_Click" runat="server" Text="Aplicar cambios" PostBackUrl="Perfil.aspx" />
                </div>
            </div>
        </div>
        <%--SEGURIDAD--%>
        <div id="seguridad" runat="server">
            <div class="container">
                <h2>Seguridad</h2>
                <div class="content">
                    <div class="input-box">
                        <label for="name">Escribe tu nueva contraseña</label>
                        <input class="controler" id="txtPass" type="text" placeholder="Escribe aquí tu nueva contraseña" name="password" runat="server" />
                    </div>
                    <div class="input-box">
                        <label for="name">Repite la contraseña</label>
                        <input class="controler" id="txtPass2" type="text" placeholder="Repite la contraseña" name="password2" runat="server" />
                    </div>
                </div>
                <div class="alert">
                    <p id="errorMsg1" runat="server">
                    </p>
                </div>
                <div class="button-container">
                    <asp:Button CssClass="btnContinuar" ID="btnGuardarPass" OnClick="btnGuardarPass_Click" runat="server" Text="Aplicar cambios" />
                </div>
            </div>
        </div>
        <%--AJUSTES DE CUENTA--%>
        <div id="ajustesCuenta" runat="server">
            <div class="container">
                <h2>Ajustes de cuenta</h2>
                <p id="P6" class="subtitle" runat="server">
                    Términos de servicio
                </p>
                <p id="P2" runat="server">
                    Al usar nuestro servicio, aceptas cumplir con nuestros términos y condiciones. Esto incluye el respeto a las leyes aplicables y el acuerdo con nuestras políticas. Nos reservamos el derecho de modificar o discontinuar el servicio según sea necesario.
                </p>
                <p id="P3" class="subtitle" runat="server">
                    Política de privacidad
                </p>
                <p id="P4" runat="server">
                    Respetamos tu privacidad y protegemos tus datos personales. Recopilamos información necesaria para brindar nuestros servicios y la usamos de manera responsable. No compartimos tu información con terceros, excepto cuando sea necesario para ofrecer nuestros servicios o cumplir con la ley.
                </p>
                <p id="P5" class="subtitle" runat="server">
                    Eliminar cuenta
                </p>
                <p id="P7" runat="server">
                    Al hacer clic en este botón, tu cuenta será eliminada permanentemente. Esta acción eliminará todos tus datos y no se podrá revertir. Por favor, asegúrate de respaldar cualquier información importante antes de proceder.
                </p>
                <div class="button-container">
                    <asp:Button CssClass="btnContinuar" ID="btnBorrarCuenta" OnClick="btnBorrarCuenta_Click" runat="server" Text="Borrar cuenta" CausesValidation="False" />
                </div>
            </div>
        </div>
    <script>
        //function showContent(contentId) {
        //    var content = document.getElementById(contentId);
        //    var dynamicContent = document.getElementById('dynamicContent');
        //    dynamicContent.innerHTML = content.innerHTML;
        //    dynamicContent.classList.remove('hidden');
        //}
    </script>
</asp:Content>
