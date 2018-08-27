function runFormAnimation() {
  // Variables
  const buttons = document.querySelectorAll('#next');
  const container = document.querySelector(".question-container");
  console.log(buttons);


  // Functions
  function initScroll(event){
    event.preventDefault();

    window.scrollBy({
        "behavior": "smooth",
        "top": container.offsetHeight
    });
  }

  // Events
  buttons.forEach(function(button) {
    button.addEventListener('click', initScroll)
  })
}



export default runFormAnimation;
