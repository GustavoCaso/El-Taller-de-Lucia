$(document).ready(function(){
  //  To animate after cliking the scroll down button to the element minus the padding
  $('.scroll_down').on('click', function(){
    $('html, body').animate({
        scrollTop: $('.servicios').offset().top - 40},
    'slow');
  }) ;


  $("#layerslider").layerSlider({
    skinsPath: 'assets/skins/',
    skin: 'glass',
    navButtons: false,
    navStartStop: false
  });

  $('.facebook, .instagram').hover( function(){
      $(this).addClass('tada');
  },function(){
      $(this).removeClass('tada');
  });
});
