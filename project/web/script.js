

const container = document.querySelector('.container');
const seats = document.querySelectorAll('.row .seat:not(.occupied');



container.addEventListener('click', (e) => {
  if (e.target.classList.contains('seat') && !e.target.classList.contains('occupied')) {
    e.target.classList.toggle('selected');
   
  }
});
