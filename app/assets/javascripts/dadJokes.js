$(document).ready(function() {

let gemJoke = function() {
  $("#dadJoke").fadeIn(2000).text()
};

let databaseJoke = function() {
  $("#userJoke").fadeIn(2000).text()
};

$("#getDadJoke").on('click', gemJoke)
$("#getUserJoke").on('click', databaseJoke)
});
