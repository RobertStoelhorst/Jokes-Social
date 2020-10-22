$(document).ready(function() {

const gemJoke = function() {
  $("#dadJoke").fadeIn(2000).text()
};

const databaseJoke = function() {
  $("#userJoke").fadeIn(2000).text()
};

$("#getDadJoke").on('click', gemJoke)
$("#getUserJoke").on('click', databaseJoke)
});
