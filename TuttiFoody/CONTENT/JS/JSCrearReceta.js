
//--- PARA MOSTRAR IMAGEN SUBIDA ---
function previewImage(event) {
    var input = event.target;
    var reader = new FileReader();

    reader.onload = function () {
        var div = document.getElementById('imagen-preview');
        div.innerHTML = '<img src="' + reader.result + '" style="max-width: 200px; max-height: 200px;">';
    };

    reader.readAsDataURL(input.files[0]);
}


//--- AÑADIR NUEVO INGREDIENTE ---
const botonAgregarIngrediente = document.getElementById("agregar_ingrediente");

botonAgregarIngrediente.addEventListener("click", function ()
{
    agregarCuadroIngrediente();
});

function agregarCuadroIngrediente()
{
    const nuevoCuadro = document.createElement("div");
    nuevoCuadro.classList.add("cuadro_ingredientes"); 
    nuevoCuadro.innerHTML = `
        <div id="cuadro_ingrdientes" class="cuadro_ingrediente">
            <select class="controls" id="objetos">
                <option value="objeto1">Objeto 1</option>
                <option value="objeto2">Objeto 2</option>
                <option value="objeto3">Objeto 3</option>
            </select>
            <h2 id="X_text" class="X_text"> X </h2>
            <textarea class="controls" id="cantidad_objetos" placeholder="Cantidad"></textarea>
        </div>
    `;

    const recuadroIngredientes = document.getElementById("recuadro");
    recuadroIngredientes.appendChild(nuevoCuadro);
}

//--- VERIFICAR CAMPOS INTRODUCIDOS/ VACIOS ---

const nombresInput = document.getElementById("nombres");
const pasosInput = document.getElementById("pasos_letra");
const descripcionInput = document.getElementById("descripcion_letra");

function verificarCampo()
{
    const valor = nombresInput.value.trim();
    const valor1 = nombresInput.value.trim();
    const valor2 = nombresInput.value.trim();


    if (valor === "" || valor1 === "" || valor2 === "")
    {
        alert("Por favor, completa el campo de correspondiente");
        return false; 
    }
    return true;
}
const formulario = document.getElementById("miFormulario");
formulario.addEventListener("submit", function (event)
{
    // Evitar que el formulario se envíe si el campo está vacío
    if (!verificarCampo())
    {
        event.preventDefault(); // Evitar el envío del formulario
    }
});


//--- CARGAR LOS NOMBRES DE LOS ALIMENTOS LA LISTA ---


function cargarNombresAlimentos()
{
    fetch('../TuttiFoody/DAL/IngredientesDAL.cs')
        .then(response => response.json())
        .then(data =>
        {
            const select = document.getElementById('objetos');
            // Limpiar las opciones actuales del select
            select.innerHTML = '';
            // Agregar las nuevas opciones al select
            data.forEach(nombre =>
            {
                const option = document.createElement('option');
                option.value = nombre;
                option.textContent = nombre;
                select.appendChild(option);
            });
        })
        .catch(error => console.error('Error al cargar los nombres de los alimentos:', error));
}

window.addEventListener('DOMContentLoaded', cargarNombresAlimentos);

