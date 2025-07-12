document.addEventListener("DOMContentLoaded", () => {
  const formulario = document.getElementById("formularioLogin");

  formulario.addEventListener("submit", async function (event) {
    event.preventDefault();

    const correo = document.getElementById("correo").value;
    const contrasena = document.getElementById("contrasena").value;

    const formData = new FormData();
    formData.append("correo", correo);
    formData.append("contrasena", contrasena);

    const response = await fetch("/EVA4.5/controllers/conexion/iniciodesesion.php", {
      method: "POST",
      body: formData
    });

    if (response.redirected) {
      // Redirige si el backend usó header("Location")
      window.location.href = response.url;
    } else {
      const mensaje = await response.text();
      document.getElementById("mensaje").textContent = mensaje;
    }
  });
});
