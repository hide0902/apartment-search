$(function () {
  $('#route1').prevAll().hide();
  $('#route1').click(function () {
      if ($(this).prevAll().is(':hidden')) {
          $(this).prevAll().slideDown();
          $(this).text('✖︎');
      } else {
          $(this).prevAll().slideUp();
          $(this).text('JR大阪環状線⏬');
      }
  });
  $('#route2').prevAll().hide();
  $('#route2').click(function () {
      if ($(this).prevAll().is(':hidden')) {
          $(this).prevAll().slideDown();
          $(this).text('✖︎');
      } else {
          $(this).prevAll().slideUp();
          $(this).text('OsakaMetro御堂筋線(北大阪急行南北線)⏬');
      }
  });
  $('#route3').prevAll().hide();
  $('#route3').click(function () {
      if ($(this).prevAll().is(':hidden')) {
          $(this).prevAll().slideDown();
          $(this).text('✖︎');
      } else {
          $(this).prevAll().slideUp();
          $(this).text('OsakaMetro中央線⏬');
      }
  });
  $('#route4').prevAll().hide();
  $('#route4').click(function () {
      if ($(this).prevAll().is(':hidden')) {
          $(this).prevAll().slideDown();
          $(this).text('✖︎');
      } else {
          $(this).prevAll().slideUp();
          $(this).text('OsakaMetro谷町線⏬');
      }
  });
  $('#area1').prevAll().hide();
  $('#area1').click(function () {
      if ($(this).prevAll().is(':hidden')) {
          $(this).prevAll().slideDown();
          $(this).text('✖︎');
      } else {
          $(this).prevAll().slideUp();
          $(this).text('大阪市⏬');
      }
  });
  $('#area2').prevAll().hide();
  $('#area2').click(function () {
      if ($(this).prevAll().is(':hidden')) {
          $(this).prevAll().slideDown();
          $(this).text('✖︎');
      } else {
          $(this).prevAll().slideUp();
          $(this).text('堺市⏬');
      }
  });
  $('#area3').prevAll().hide();
  $('#area3').click(function () {
      if ($(this).prevAll().is(':hidden')) {
          $(this).prevAll().slideDown();
          $(this).text('✖︎');
      } else {
          $(this).prevAll().slideUp();
          $(this).text('その他の地域⏬');
      }
  });
});