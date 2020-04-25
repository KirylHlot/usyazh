let $dots = $('.owl-dot');
$dots.attr('aria-label', 'owl carousel');

$(document).ready(function () {
  $("#callback_form").submit(function () {
    $.ajax({
      type: "POST",
      url: "\\wp-content\\themes\\starter_pack\\mails\\callback_mail.php",
      data: $(this).serialize()
    }).done(function () {
      popup_alert_done('callback_popup');
    }).fail(function () {
    });
    return false;
  });
});

//main page our works carousel
var our_works_carousel=$(".our_works_carousel");
our_works_carousel.owlCarousel({
  loop: true,
  nav: false,
  margin: 20,
  padding: 0,
  dots: true,
  responsive: {
    0: {
      items: 1
    },
    576: {
      items: 2
    },
    768: {
      items: 3
    }
  }
});

$(".our_works_carousel_nav_left").click(function(){
  our_works_carousel.trigger("next.owl.carousel");
});
$(".our_works_carousel_nav_right").click(function(){
  our_works_carousel.trigger("prev.owl.carousel");
});


//прокрутка
if (document.body.clientWidth > 1199 && $(window).scroll(function() {
  $(window).scrollTop() >= 50 ? $("#bottom_content_menu").addClass("hide") : $("#bottom_content_menu").removeClass("hide")
}));

function closeLeftMenuByMissClick() {
  $(document).mouseup(function(e) {
    let t = $(".left_menu");
    t.is(e.target) || 0 !== t.has(e.target).length || close_left_menu()
  })
}