// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require move-top
//= require easing
//= require easyResponsiveTabs
//= require owl.carousel
//= require easyResponsiveTabs
//= require jquery.wmuSlider
//= require_tree .


jQuery(document).ready(function($) {
    $(".scroll").click(function(event){
        event.preventDefault();
        $('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
    });
});

addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }


$(document).ready(function() {
    $("#owl-demo , #owl-demo1").owlCarousel({
        items : 1,
        lazyLoad : true,
        autoPlay : true,
    });
});

$(document).ready(function() {
    $("#owl-demo3").owlCarousel({
        items : 4,
        lazyLoad : true,
        autoPlay : true,
        navigation: false,
        pagination: false,
    });
});

$(function() {
    var pull 		= $('#pull');
    menu 		= $('nav ul');
    menuHeight	= menu.height();
    $(pull).on('click', function(e) {
        e.preventDefault();
        menu.slideToggle();
    });
    $(window).resize(function(){
        var w = $(window).width();
        if(w > 320 && menu.is(':hidden')) {
            menu.removeAttr('style');
        }
    });
});

$(document).ready(function () {
    $('#horizontalTab').easyResponsiveTabs({
        type: 'default', //Types: default, vertical, accordion
        width: 'auto', //auto or any width like 600px
        fit: true   // 100% fit in a container
    });
});

$().UItoTop({ easingType: 'easeOutQuart' });

$('.example1').wmuSlider();