console.log('it is working')

// searchbar



var input = document.getElementsByClassName("search-input");
input.addEventListener("keyup", function(event) {
  if (event.keyCode === 13) {
   event.preventDefault();
   console.log(event);
  }
});