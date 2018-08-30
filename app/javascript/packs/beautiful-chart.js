import Chart from 'chart.js';
function initChart() {

  const myChartElement = document.getElementById("myChart");
  if (myChartElement === null) { return false; }

  const myData = document.querySelector('.ratings_tools');
  console.log(myData);
  const ctx = myChartElement.getContext('2d');

  Chart.defaults.global.hover.mode = 'nearest';
  Chart.defaults.global.legend.display = false;
  Chart.defaults.global.defaultFontFamily = "'lato'";
  Chart.defaults.global.defaultFontWeight = '200';
  Chart.defaults.global.defaultFontSize = 8;
  Chart.defaults.global.defaultFontColor = '#FFF';
  Chart.defaults.scale.gridLines.display = false;

  var myChart = new Chart(ctx, {
      type: 'line',
      data: {
          labels: $('.ratings_tools').data('labels'),
          datasets: [{
              label: 'Notes on 5',
              data: $('.ratings_tools').data('ratings'),
              backgroundColor: [
                  'rgba(255, 255, 255, 0.3)'
              ],
              borderColor: [
                  'rgba(255, 255, 255)'
              ],
              borderWidth: 1
          }]
      },
      options: {
          scales: {
              yAxes: [{
                  ticks: {
                      beginAtZero:true,
                      max:5,
                      stepSize:1,
                      fontFamily: "Lato",
                      fontSize: 7
                  }
              }]
          }
      }
  });
}
export default initChart;
