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
//= require velocity
//= require turbolinks
//= require scrollmagic
//= require headroom.js/dist/jQuery.headroom.min
//= require headroom.js/dist/headroom.min
//= require_tree .

var controller = new ScrollMagic.Controller({
  globalSceneOptions: {
    reverse: true
  }
});

function toggleMobileNav (e) {
    if ($(window).width() < 768) {
        $("nav").toggleClass('navOn');
        return false;
    }
}

