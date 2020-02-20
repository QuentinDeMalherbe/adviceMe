//constant definition
const rating_1 = document.getElementById('rating_1')
const rating_2 = document.getElementById('rating_2')
const rating_3 = document.getElementById('rating_3')
const rating_4 = document.getElementById('rating_4')
const rating_5 = document.getElementById('rating_5')

// function definition
const hooverRatings = () => {
  const boobs = `<%= image_tag('boobSelect.png') %>`;
  rating_1.innerHTML = boobs
};

//listener
rating_1.addEventListener("click", (event) => {
  hooverRatings()
});
