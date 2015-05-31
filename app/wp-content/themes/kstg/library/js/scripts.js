
var toggleMenu = document.getElementById('menu-button').addEventListener('click', function(e){
  document.querySelector('.toggle-menu').classList.toggle('open-menu');
  console.log('clicked');
  // e.target.classList.toggle('open-menu');
  // console.log('open menu');
});
