// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .

function myFunction() {
    var x = document.getElementById("day");
    if (x.hidden) {
      x.hidden = false ;
    } else {
      x.hidden = true ;
    }
}

function myFunction2() {
    var x = document.getElementById("week");
    if (x.hidden) {
      x.hidden = false ;
    } else {
      x.hidden = true ;
    }
}