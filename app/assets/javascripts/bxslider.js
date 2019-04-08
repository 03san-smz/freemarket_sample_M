// item/mainカルーセル
$(function(){
  $('.bxslider').bxSlider({
    auto: true,
    adaptiveHeight: true
  });
});


//item/item-detailカルーセル
$(function(){
  $('.photo-slider').bxSlider({
    pagerCustom: '.photo-thumbnail',
    controls:false
  });
});

//item/item-detailサムネイル
$(function(){
  $('.photo-thumbnail').bxSlider({
    pager:false,
    minSlides: 4,
    maxSlides: 4,
    slideWidth: 75,
    slideMargin: 0,
  });
});
