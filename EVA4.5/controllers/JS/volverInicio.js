async function volverAlInicio() {
  try {
    const response = await fetch("/EVA4.5/controllers/consultas/verificar_sesion.php",)
    const estado = await response.text();

    if (estado === "1") {
      window.location.href = "/EVA4.5/views/html/sesion.html"; // Página privada
    } else {
      window.location.href = "/EVA4.5/views/html/PaginaWeb.html"; // Página pública
    }
  } catch (error) {
    console.error("Error al volver al inicio:", error);
    window.location.href = "/EVA4.5/index.html";
  }
}
