$(document).ready(function(){
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
