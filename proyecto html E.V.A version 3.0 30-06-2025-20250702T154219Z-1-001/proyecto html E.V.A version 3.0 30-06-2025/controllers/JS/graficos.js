
    
    const ctxTorta = document.getElementById('graficoTorta').getContext('2d');
    const graficoTorta = new Chart(ctxTorta, {
      type: 'pie',
      data: {
        labels: ['5 estrellas', '4-3 estrellas', '2-1 estrellas'],
        datasets: [{
          label: 'Calificaciones',
          data: [30, 45, 25],
          backgroundColor: ['#4CAF50', '#fbfe4e', '#ff4242']
        }]
      },
      options: {
        responsive: true,
        maintainAspectRatio: false,
        animation: false
      }
    });

    
    const ctxBarras = document.getElementById('graficoBarras').getContext('2d');
    const graficoBarras = new Chart(ctxBarras, {
      type: 'bar',
      data: {
        labels: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo'],
        datasets: [{
          label: 'ingresos mensuales en la pagina web',
          data: [120, 95, 82, 110, 102],
          backgroundColor: '#36A2EB'
        }]
      },
      options: {
        responsive: true,
        maintainAspectRatio: false,
        animation: false
      }
    });

    
    const ctxLineas = document.getElementById('graficoLineas').getContext('2d');
    const graficoLineas = new Chart(ctxLineas, {
      type: 'line',
      data: {
        labels: ['Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes'],
        datasets: [{
          label: 'registros diarios',
          data: [45, 22, 31, 54, 19],
          borderColor: '#FF6384',
          backgroundColor: 'rgba(255, 99, 132, 0.2)',
          tension:0, 
          fill: true
        }]
      },
      options: {
        responsive: true,
        maintainAspectRatio: false,
        animation: false,
        scales: {
  y: {
    ticks: {
      callback: function(value) {
        return Number.isInteger(value) ? value : '';
      }
    }
  }
}

      }
    });
  