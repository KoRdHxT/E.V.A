window.addEventListener("DOMContentLoaded", async () => {
  try {
    const response = await fetch("/EVA4.5/controllers/consultas/verificar_sesion.php");
    const estado = await response.text();

    if (estado === "1") {
      // Ya hay sesión, redirige a página privada
      window.location.href = "/EVA4.5/views/html/sesion.html";
    }
  } catch (error) {
    console.error("Error verificando sesión:", error);
  }
});
