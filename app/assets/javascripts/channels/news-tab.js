$(function() {
  // ①タブをクリックしたら発動
  $('.mypage-tabs li').click(function() {
    // ②クリックされたタブの順番を変数に格納
    var index = $('.mypage-tabs li').index(this);
    // ③クリック済みタブのデザインを設定したcssのクラスを一旦削除
    $('.mypage-tabs li').removeClass('active');
    // ④クリックされたタブにクリック済みデザインを適用する
    $(this).addClass('active');
    // ⑤コンテンツを一旦非表示にし、クリックされた順番のコンテンツのみを表示
    $('.tab-content ul').removeClass('show').eq(index).addClass('show');
  });
});


$(function() {
  // ①タブをクリックしたら発動
  $('.todo-tabs li').click(function() {
    // ②クリックされたタブの順番を変数に格納
    var index = $('.todo-tabs li').index(this);
    // ③クリック済みタブのデザインを設定したcssのクラスを一旦削除
    $('.todo-tabs li').removeClass('active');
    // ④クリックされたタブにクリック済みデザインを適用する
    $(this).addClass('active');
    // ⑤コンテンツを一旦非表示にし、クリックされた順番のコンテンツのみを表示
    $('.todo-content ul').removeClass('show').eq(index).addClass('show');
  });
});
