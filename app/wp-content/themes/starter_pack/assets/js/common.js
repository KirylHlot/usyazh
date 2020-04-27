var open_menu = document.getElementById('open_menu');
var close_menu_mass = document.getElementsByClassName('close_menu');
var body = document.getElementById('body');

//hidden menu
open_menu.addEventListener('click', function () {
  openHiddenMenu();
});
for (let i = 0; i < close_menu_mass.length; i++) {
  close_menu_mass[i].addEventListener('click', function(){
    closeHiddenMenu();
  });
}
function openHiddenMenu(){
  setOverlay();
  body.classList.add('show_menu');

  return true;
}
function closeHiddenMenu(){
  removeOverlay();
  body.classList.remove('show_menu');

  return true;
}

// show_search_popup
var show_search_popup = document.getElementById('show_search_popup');
var close_search_popup = document.querySelector('.close_search_popup');


show_search_popup.addEventListener('click', function () {
  setOverlay();
  showSearchModal();
})
close_search_popup.addEventListener('click', function () {
  hideSearchModal();
})
function showSearchModal(){
  body.classList.add('search_modal');
  closeLeftMenuByMissClick();
  return true;
}
function hideSearchModal(){
  body.classList.remove('search_modal');
  removeOverlay();
  return true;
}

function closeLeftMenuByMissClick() {
  $(document).mouseup(function(e) {
    let t = $(".modal_search_wrapper");
    t.is(e.target) || 0 !== t.has(e.target).length || hideSearchModal();
  });
}

//Popups
var claim_mass = document.getElementsByClassName('claim');
var subscribe_mass = document.getElementsByClassName('subscribe');
var callback_mass = document.getElementsByClassName('callback');
var close_callback_popup_mass = document.getElementsByClassName('close_callback_popup');

if(callback_mass){
  for (let i = 0; i < callback_mass.length ; i++) {
    callback_mass[i].addEventListener('click', function () {
      show_callback_popup('callback_popup');
    })
  }
}
if(claim_mass){
  for (let i = 0; i < claim_mass.length ; i++) {
    claim_mass[i].addEventListener('click', function () {
      show_callback_popup('claim_popup');
    })
  }
}
if(subscribe_mass){
  for (let i = 0; i < subscribe_mass.length ; i++) {
    subscribe_mass[i].addEventListener('click', function () {
      show_callback_popup('subscribe_popup');
    })
  }
}




if(close_callback_popup_mass){
  for (let i = 0; i < close_callback_popup_mass.length ; i++) {
    close_callback_popup_mass[i].addEventListener('click', function () {
      close_popup();
    })
  }
}

function popup_alert_done(popup_id){

  document.getElementById(popup_id).querySelector('.main_content').classList.add('d_none');
  document.getElementById(popup_id).querySelector('.alert_done').classList.remove('d_none');

  return true;

}
function show_callback_popup(popup_id){
  show_popup(popup_id);
  closePopupByMissClick();
  return true;
}
function show_popup(name){
  setOverlay();
  document.getElementById(name).classList.remove('d_none');
  return true;
}
function close_popup(){
  let popup_mass = document.getElementsByClassName('popup');
  for (let i = 0; i < popup_mass.length; i++) {
    popup_mass[i].classList.add('d_none');
  }
  removeOverlay();
  return true;
}
function closePopupByMissClick() {
  $(document).mouseup(function(e) {
    let t = $(".popup");
    t.is(e.target) || 0 !== t.has(e.target).length || close_popup()
  })
}

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
$(document).ready(function () {
  $("#claim_form").submit(function () {
    $.ajax({
      type: "POST",
      url: "\\wp-content\\themes\\starter_pack\\mails\\claim_mail.php",
      data: $(this).serialize()
    }).done(function () {
      popup_alert_done('claim_popup');
    }).fail(function () {
    });
    return false;
  });
});
$(document).ready(function () {
  $("#subscribe_form").submit(function () {
    $.ajax({
      type: "POST",
      url: "\\wp-content\\themes\\starter_pack\\mails\\subscribe_mail.php",
      data: $(this).serialize()
    }).done(function () {
      popup_alert_done('subscribe_popup');
    }).fail(function () {
    });
    return false;
  });
});



// $(document).ready(function () {
//   $("#callback_form").submit(function () {
//     $.ajax({
//       type: "POST",
//       url: "\\wp-content\\themes\\starter_pack\\mails\\callback_mail.php",
//       data: $(this).serialize()
//     }).done(function () {
//       popup_alert_done('callback_popup');
//     }).fail(function () {
//     });
//     return false;
//   });
// });



// main page our services carousel
if(document.getElementById('dots_list')) {
  var dots_list = document.getElementById('dots_list');
  var dots_mass = dots_list.getElementsByClassName('dots_item');
  var our_service_carousel = $(".our_service_carousel");
  our_service_carousel.owlCarousel({
    loop: false,
    nav: false,
    margin: 20,
    padding: 0,
    dots: false,
    dotsContainer: '#dots_list',
    responsive: {
      0: {
        items: 1
      }
    }
  });
  $('.dots_item').click(function () {
    our_service_carousel.trigger('to.owl.carousel', [$(this).index(), 300]);
  });
  our_service_carousel.on('changed.owl.carousel', function (e) {
    changeActiveDots(e.item.index);
    return true;
  });

  function changeActiveDots(index) {

    for (let i = 0; i < dots_mass.length; i++) {
      dots_mass[i].classList.remove('active');
    }
    dots_mass[index].classList.add('active');

    return true;
  }

  $(".our_service_carousel_left_nav").click(function () {
    our_service_carousel.trigger("next.owl.carousel");
  });
  $(".our_service_carousel_right_nav").click(function () {
    our_service_carousel.trigger("prev.owl.carousel");
  });
}

//прокрутка
if (body.classList.contains('home') && $(window).scroll(function() {
  $(window).scrollTop() >= 50 ? $("#body").addClass("bg_white") : $("#body").removeClass("bg_white");
}));


// Карусель руководителей
var chiefs_carousel=$(".chiefs_carousel");
chiefs_carousel.owlCarousel({
  loop: true,
  nav: false,
  margin: 20,
  padding: 0,
  dots: false,
  responsive: {
    0: {
      items: 1
    },
    550: {
      items: 2
    },
    992: {
      items: 3
    }
  }
});

$(".chiefs_carousel_left_nav").click(function(){
  chiefs_carousel.trigger("next.owl.carousel");
});
$(".chiefs_carousel_right_nav").click(function(){
  chiefs_carousel.trigger("prev.owl.carousel");
});

// Карусель партнеров
var partners_carousel=$(".partners_carousel");
partners_carousel.owlCarousel({
  loop: true,
  nav: false,
  margin: 20,
  padding: 0,
  dots: false,
  responsive: {
    0: {
      items: 1
    },
    450: {
      items: 2
    },
    567: {
      items: 3
    },
    992: {
      items: 4
    }
  }
});

$(".partners_carousel_left_nav").click(function(){
  partners_carousel.trigger("next.owl.carousel");
});
$(".partners_carousel_right_nav").click(function(){
  partners_carousel.trigger("prev.owl.carousel");
});


// function closeLeftMenuByMissClick() {
//   $(document).mouseup(function(e) {
//     let t = $(".left_menu");
//     t.is(e.target) || 0 !== t.has(e.target).length || close_left_menu();
//   });
// }
//
function setOverlay(){
  document.getElementById('overlay').classList.remove('d_none');
  document.getElementById('body').classList.add('ovf_hidden');
  return true;
}
function removeOverlay(){
  document.getElementById('overlay').classList.add('d_none');
  document.getElementById('body').classList.remove('ovf_hidden');
  return true;
}

let $dots = $('.owl-dot');
$dots.attr('aria-label', 'owl carousel');