console.log('it is working')

// searchbar



var input = document.getElementsByClassName("search-input");
input.addEventListener("on", function(event) {
  if (event.keyCode === 13) {
   event.preventDefault();
   console.log(event);
  }
});

function myFunction(val) {
    alert("The input value has changed. The new value is: " + val);
}
