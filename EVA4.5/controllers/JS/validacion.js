function soloLetras(texto) {
    return /^[A-Za-zÁÉÍÓÚáéíóúÑñ\s]+$/.test(texto);
}

function correoValido(correo) {
    return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(correo);
}

function contrasenaValida(contra) {
    return /^(?=.*[A-Z])(?=.*\d).{7,}$/.test(contra);
}

function numeroValido(numero) {
    return /^\d{10}$/.test(numero);
}

function validarUsuario() {
    const nombre = document.getElementById("nombre").value.trim();
    const apellido = document.getElementById("apellido").value.trim();
    const correo = document.getElementById("correo").value.trim();
    const contrasena = document.getElementById("contrasena").value;

    if (!soloLetras(nombre)) {
        alert("Solo se permiten letras en el campo de nombre.");
        return false;
    }

    if (!soloLetras(apellido)) {
        alert("Solo se permiten letras en el campo de apellido.");
        return false;
    }

    if (!correoValido(correo)) {
        alert("Correo inválido. Usa el formato: ejemplo@correo.com");
        return false;
    }

    if (!contrasenaValida(contrasena)) {
        alert("La contraseña debe tener al menos una mayúscula, un número y 7 caracteres.");
        return false;
    }

    alert("¡Formulario válido para usuario/deportista!");
    return true;
}

function validarAdmin() {
    const nombre = document.getElementById("nombreAdmin").value.trim();
    const apellido = document.getElementById("apellidoAdmin").value.trim();
    const correo = document.getElementById("correoAdmin").value.trim();
    const contrasena = document.getElementById("contrasenaAdmin").value;
    const numero = document.getElementById("numeroAdmin").value.trim();
    

    if (!soloLetras(nombre)) {
        alert("Solo se permiten letras en el campo de nombre (admin).");
        return false;
    }

    if (!soloLetras(apellido)) {
        alert("Solo se permiten letras en el campo de apellido (admin).");
        return false;
    }

    if (!correoValido(correo)) {
        alert("Correo inválido. Usa el formato: ejemplo@correo.com");
        return false;
    }

    if (!contrasenaValida(contrasena)) {
        alert("La contraseña debe tener al menos una mayúscula, un número y 7 caracteres.");
        return false;
    }
    
    if (!numeroValido(numero)) {
        alert("Solo se permiten números en el campo de teléfono \"1234567890\" min/max 10 digitos(admin).");
        return false;
    }
    
    alert("¡Formulario válido para administrador!");
    return true;
}

    /*if (descripcion.length > 500) {
        alert("La descripción no puede superar los 500 caracteres.");
        return false;
    }
    
    if (!soloLetras(estado)) {
        alert("Solo se permiten letras en el campo de estado (admin).");
        return false;
    }

    alert("¡Formulario válido para administrador!");
    return true;
}
document.addEventListener("DOMContentLoaded", function () {
    const descripcion = document.getElementById("descripcion");
    const contador = document.getElementById("contadorDescripcion");

    if (descripcion && contador) {
        descripcion.addEventListener("input", function () {
            const longitud = descripcion.value.length;
            contador.textContent = `${longitud} / 500 caracteres`;
        });
    }
});
*/


