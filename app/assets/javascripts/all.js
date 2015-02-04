$(document).ready(function(){
  //  To animate after cliking the scroll down button to the element minus the padding
  $('.scroll_down').on('click', function(){
    $('html, body').animate({
        scrollTop: $('.us').offset().top - 40},
    'slow');
  }) ;


  $("#layerslider").layerSlider({
    skinsPath: 'assets/skins/',
    skin: 'glass',
    navPrevNext: false,
    navButtons: true,
    hoverBottomNav : true,
    thumbnailNavigation: 'disabled'
  });

  $('.facebook, .instagram').hover( function(){
      $(this).addClass('tada');
  },function(){
      $(this).removeClass('tada');
  });
});
