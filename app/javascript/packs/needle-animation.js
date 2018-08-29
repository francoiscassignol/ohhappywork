const needle = document.querySelector("img.needle");
const rating = Number(document.querySelector('.chart-skills').dataset.rating);

function needleMove() {
  // console.log(needle, rating);
  const angle = (rating / 5 ) * 180;
  needle.style.transform = `rotate(${angle}deg)`;
}

 needleMove();

// export default needleMove;
