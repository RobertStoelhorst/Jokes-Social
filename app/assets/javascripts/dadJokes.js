$(document).ready(function() {

var gemJoke = function() {
  $("#dadJoke").fadeIn(2000).text()
};

var databaseJoke = function() {
  $("#userJoke").fadeIn(2000).text()
};

$("#getDadJoke").on('click', gemJoke)
$("#getUserJoke").on('click', databaseJoke)
});
