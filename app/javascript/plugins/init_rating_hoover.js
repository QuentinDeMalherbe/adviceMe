//constant definition
const rate_1 = document.getElementById('rate_1')
const rate_2 = document.getElementById('rate_2')
const rate_3 = document.getElementById('rate_3')
const rate_4 = document.getElementById('rate_4')
const rate_5 = document.getElementById('rate_5')

// function definition
const hooverRatings1 = () => {
  const boobs = `<img src="/assets/boobsSelect.png">`;
  rate_1.innerHTML = boobs
};
const hooverRatings2 = () => {
  const boobs = `<img src="/assets/boobsSelect.png">`;
  rate_2.innerHTML = boobs
};
const hooverRatings3 = () => {
  const boobs = `<img src="/assets/boobsSelect.png">`;
  rate_3.innerHTML = boobs
};
const hooverRatings4 = () => {
  const boobs = `<img src="/assets/boobsSelect.png">`;
  rate_4.innerHTML = boobs
};
const hooverRatings5 = () => {
  const boobs = `<img src="/assets/boobsSelect.png">`;
  rate_5.innerHTML = boobs
};

//listener
rate_1.addEventListener("click", (event) => {
  event.preventDefault();
  hooverRatings1();
});
rate_2.addEventListener("click", (event) => {
  event.preventDefault();
  hooverRatings1();
  hooverRatings2();
});
rate_3.addEventListener("click", (event) => {
  event.preventDefault();
  hooverRatings1();
  hooverRatings2();
  hooverRatings3();
});
rate_4.addEventListener("click", (event) => {
  event.preventDefault();
  hooverRatings1();
  hooverRatings2();
  hooverRatings3();
  hooverRatings4();
});
rate_5.addEventListener("click", (event) => {
  event.preventDefault();
  hooverRatings1();
  hooverRatings2();
  hooverRatings3();
  hooverRatings4();
  hooverRatings5();
});


// const changeimg(boobs) => {
//     boobs.src = (boobs.src=="/assets/boobsUnselect-84abdc325e54acd52e8670687761db4a19576b953a6da3eb5092df88d740d89d.png" ) ? "/assets/boobsUnselect-84abdc325e54acd52e8670687761db4a19576b953a6da3eb5092df88d740d89d.png" : "/assets/boobsSelect-6dd2522ce41418acc9e53aa976a2f5e9fd5d458b6fe55354a1ce98f5e8244085.png";
// } ;

// const changeimg = (boobs) => {
//     boobs.src = (boobs.src=="/assets/boobsUnselect-84abdc325e54acd52e8670687761db4a19576b953a6da3eb5092df88d740d89d.png" ) ? "/assets/boobsUnselect-84abdc325e54acd52e8670687761db4a19576b953a6da3eb5092df88d740d89d.png" : "/assets/boobsSelect-6dd2522ce41418acc9e53aa976a2f5e9fd5d458b6fe55354a1ce98f5e8244085.png";
// } ;
