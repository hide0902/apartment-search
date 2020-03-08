$(function () {
  $('#route1').prevAll().hide();
  $('#route1').click(function () {
      if ($(this).prevAll().is(':hidden')) {
          $(this).prevAll().slideDown();
          $(this).text('✖︎');
      } else {
          $(this).prevAll().slideUp();
          $(this).text('JR大阪環状線から選択');
      }
  });
  $('#route2').prevAll().hide();
  $('#route2').click(function () {
      if ($(this).prevAll().is(':hidden')) {
          $(this).prevAll().slideDown();
          $(this).text('✖︎');
      } else {
          $(this).prevAll().slideUp();
          $(this).text('OsakaMetro御堂筋線(北大阪急行南北線)から選択');
      }
  });
  $('#route3').prevAll().hide();
  $('#route3').click(function () {
      if ($(this).prevAll().is(':hidden')) {
          $(this).prevAll().slideDown();
          $(this).text('✖︎');
      } else {
          $(this).prevAll().slideUp();
          $(this).text('OsakaMetro中央線から選択');
      }
  });
  $('#route4').prevAll().hide();
  $('#route4').click(function () {
      if ($(this).prevAll().is(':hidden')) {
          $(this).prevAll().slideDown();
          $(this).text('✖︎');
      } else {
          $(this).prevAll().slideUp();
          $(this).text('OsakaMetro谷町線から選択');
      }
  });
  $('#area1').prevAll().hide();
  $('#area1').click(function () {
      if ($(this).prevAll().is(':hidden')) {
          $(this).prevAll().slideDown();
          $(this).text('✖︎');
      } else {
          $(this).prevAll().slideUp();
          $(this).text('大阪市から選択');
      }
  });
  $('#area2').prevAll().hide();
  $('#area2').click(function () {
      if ($(this).prevAll().is(':hidden')) {
          $(this).prevAll().slideDown();
          $(this).text('✖︎');
      } else {
          $(this).prevAll().slideUp();
          $(this).text('堺市から選択');
      }
  });
  $('#area3').prevAll().hide();
  $('#area3').click(function () {
      if ($(this).prevAll().is(':hidden')) {
          $(this).prevAll().slideDown();
          $(this).text('✖︎');
      } else {
          $(this).prevAll().slideUp();
          $(this).text('その他の地域から選択');
      }
  });
});