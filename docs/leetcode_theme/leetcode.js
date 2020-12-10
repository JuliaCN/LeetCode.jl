
let code = document.getElementsByClassName('language-julia')[0];
code.classList.add('none');
code.addEventListener('mouseover', function () {
  code.classList.remove('none');
});
code.addEventListener('mouseout', function () {
  code.classList.add('none');
});

