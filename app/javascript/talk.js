function talk() {
  const firstButton    = document.getElementById("first-button")
  const secondQuestion = document.getElementById("second-question")
  const secondButton   = document.getElementById("second-button")
  const thirdQuestion  = document.getElementById("third-question")
  const thirdButton    = document.getElementById("third-button")
  const fourthQuestion = document.getElementById("fourth-question")
  const fourthButton   = document.getElementById("fourth-button")
  const fifthQuestion  = document.getElementById("fifth-question")
  const fifthButton    = document.getElementById("fifth-button")
  const sixthQuestion  = document.getElementById("sixth-question")
  const sixthButton  = document.getElementById("sixth-button")
  const seventhQuestion = document.getElementById("seventh-question")
  const seventhButton    = document.getElementById("seventh-button")
  const eighthQuestion = document.getElementById("eighth-question")
  const eighthButton  = document.getElementById("eighth-button")
  const ninthQuestion = document.getElementById("ninth-question")


  firstButton.addEventListener('click', function() {
    secondQuestion.setAttribute("style", "display:block;")
  });
  secondButton.addEventListener('click', function() {
    thirdQuestion.setAttribute("style", "display:block;")
  });
  thirdButton.addEventListener('click', function() {
    fourthQuestion.setAttribute("style", "display:block;")
  });
  fourthButton.addEventListener('click', function() {
    fifthQuestion.setAttribute("style", "display:block;")
  });
  fifthButton.addEventListener('click', function() {
    sixthQuestion.setAttribute("style", "display:block;")
  });
  sixthButton.addEventListener('click', function() {
    seventhQuestion.setAttribute("style", "display:block;")
  });
  seventhButton.addEventListener('click', function() {
    eighthQuestion.setAttribute("style", "display:block;")
  });
  eighthButton.addEventListener('click', function() {
    ninthQuestion.setAttribute("style", "display:block;")
  });
}

window.addEventListener("load", talk);