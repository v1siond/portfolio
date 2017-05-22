// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

jQuery(document).ready(function($) {
  var sections = $('section');
  var i =0;
  var scrolto = 0;
  var height = $(window).height();
  $('.prev-section').hide();
  $('html, body').animate({
        scrollTop: sections[0].offsetTop
      }, 2000);
  function next(){
    if (height < $(sections[i+1]).height()) {
      $(sections[i+1]).css({
        'overflow-y' : 'scroll',
        'height' : '100vh'
      });
    }
    if(i == 0){
      $('.prev-section').show();
    }
    if(i < sections.length -1){
      i++;
      if(i == sections.length -1){
        $('.next-section').hide();
      }
      $('html, body').animate({
        scrollTop: sections[i].offsetTop
      }, 2000);
    }else{
      alert('end reached');
    }
  }
  function prev(){
    if (height < $(sections[i+1]).height()) {
      $(sections[i+1]).css({
        'overflow-y' : 'scroll',
        'height' : '100vh'
      });
    }
    if(i == sections.length -1){
      $('.next-section').show();
    }
    if(i > 0){
      i--;
      if(i == 0){
        $('.prev-section').hide();
      }
      $('html, body').animate({
        scrollTop: sections[i].offsetTop
      }, 2000);
    }
  }
  $('html').keydown(function(e){
    if(e.which == '38'){
      prev();
    }
   if(e.which == '40'){
      next();
    }
  });
  $('.next-section').click(function(e){
     e.preventDefault();
     next();
  });

  $('.prev-section').click(function(e){
     e.preventDefault();
     prev();
  });
});