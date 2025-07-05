function soloLetras(texto) {
    return /^[A-Za-zÁÉÍÓÚáéíóúÑñ\s]+$/.test(texto);
}

function correoValido(correo) {
    return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(correo);
}

function contraseñaValida(contra) {
    return /^(?=.*[A-Z])(?=.*\d).{7,}$/.test(contra);
}

function validarUsuario() {
    const nombre = document.getElementById("nombre").value.trim();
    const apellido = document.getElementById("apellido").value.trim();
    const correo = document.getElementById("correo").value.trim();
    const contraseña = document.getElementById("contraseña").value;

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

    if (!contraseñaValida(contraseña)) {
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
    const contraseña = document.getElementById("contraseñaAdmin").value;
    const descripcion = document.getElementById("descripcion").value.trim();
    const estado = document.getElementById("estado").value.trim();

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

    if (!contraseñaValida(contraseña)) {
        alert("La contraseña debe tener al menos una mayúscula, un número y 7 caracteres.");
        return false;
    }
    
    if (!soloLetras(descripcion)) {
        alert("Solo se permiten letras en el campo de descripción (admin).");
        return false;
    }
    
    if (descripcion.length > 500) {
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

    descripcion.addEventListener("input", function () {
        const longitud = descripcion.value.length;
        contador.textContent = `${longitud} / 500 caracteres`;
    });
});

