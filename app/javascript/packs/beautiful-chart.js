import Chart from 'chart.js';

function initChart() {

  const myData = document.querySelector('.ratings_tools');

  console.log(myData);
  const ctx = document.getElementById("myChart").getContext('2d');

  var myChart = new Chart(ctx, {
      type: 'line',
      data: {
          labels: $('.ratings_tools').data('labels'),
          datasets: [{
              label: 'Notes on 5',
              data: $('.ratings_tools').data('ratings'),
              backgroundColor: [
                  'rgba(249, 176, 2, 0.2)'
              ],
              borderColor: [
                  'rgba(249, 176, 2)'
              ],
              borderWidth: 1
          }]
      },
      options: {
          scales: {
              yAxes: [{
                  ticks: {
                      beginAtZero:true
                  }
              }]
          }
      }
  });
}

export default initChart;
