
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
// Obtener referencia al botón "Añadir nuevo ingrediente"
const botonAgregarIngrediente = document.getElementById("agregar_ingrediente");

botonAgregarIngrediente.addEventListener("click", function ()
{
    agregarCuadroIngrediente(); // Llamar a la función para agregar un nuevo cuadro de ingredientes
});

function agregarCuadroIngrediente()
{
    const nuevoCuadro = document.createElement("div");
    nuevoCuadro.classList.add("cuadro_ingredientes"); // Agregar la clase correspondiente
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

    // Agregar el nuevo cuadro de ingredientes al recuadro de ingredientes
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

// Ejemplo de cómo usar la función verificarCampo() en un formulario
const formulario = document.getElementById("miFormulario");
formulario.addEventListener("submit", function (event)
{
    // Evitar que el formulario se envíe si el campo está vacío
    if (!verificarCampo())
    {
        event.preventDefault(); // Evitar el envío del formulario
    }
});
