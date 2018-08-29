const needle = document.querySelector("img.needle");
const chartSkills = document.querySelector('.chart-skills')


function needleMove() {
  if (chartSkills === null) { return false; }

  const rating = Number(chartSkills.dataset.rating);
  // console.log(needle, rating);
  const angle = (rating / 5 ) * 180;
  needle.style.transform = `rotate(${angle}deg)`;
}

export default needleMove;
