// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require_tree .
//= require gmaps/google

var drop2open = 0;
function drop2(evt) {
if (drop2open == 0) {
document.getElementById('menu2').style.display="block";
document.getElementById('topmenu').classList.toggle("change");
drop2open = 1; }
else {
hide2(); } }

function hide2() {
if (drop2open == 1) {
document.getElementById('menu2').style.display="none";
document.getElementById('topmenu').classList.toggle("change");
drop2open = 0; } }

function topp() {
  document.write(
    '<div class="top2">'+
      '<div class="top2b">'+
        '<a href="/index">Home</a>'+
        '<a href="/why">Why use a specialist?</a>'+
        '<a href="/story">Our story</a>'+
        '<a href="/rent">Properties</a></a>'+
        '<a href="/contact">Contact us</a>'+
      '</div>'+
    '</div>'+
    '<div id="topmenu" onclick="drop2(event)">'+
      '<div class="bar1"></div>'+
      '<div class="bar2"></div>'+
      '<div class="bar3"></div>'+
    '</div>'+

    '<div id="menu2" onclick="hide2()">'+
      '<ul>'+
        '<li><a href="/index">Home</a></li>'+
        '<li><a href="/why">Why use a specialist?</a></li>'+
        '<li><a href="/story">Our story</a></li>'+
        '<li><a href="/rent">Properties</a></li>'+
        '<li><a href="/contact">Contact us</a></li>'+
      '</ul>'+
    '</div>'
  );
 }
