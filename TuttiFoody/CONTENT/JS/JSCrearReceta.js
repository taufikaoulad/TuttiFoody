
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

