// $(document).ready(function() {
//     $('.owl-carousel').owlCarousel({
//         loop: true,
//         margin: 10,
//         nav: true,
//         navText: [
//         "<i class='fa fa-angle-left'></i> Prev",
//         "Next <i clas='fa fa-angle-right'></i>"
//         ],
//     });
// });

$(document).ready(function(){
      $('.owl-carousel').owlCarousel({
        center: true,
    items:1,
    loop:false,
    margin:0
       
    });

  var isMobile = {
    Android: function () {
      return navigator.userAgent.match(/Android/i);
    },
    BlackBerry: function () {
      return navigator.userAgent.match(/BlackBerry/i);
    },
    iOS: function () {
      return navigator.userAgent.match(/iPhone|iPad|iPod/i);
    },
    Opera: function () {
      return navigator.userAgent.match(/Opera Mini/i);
    },
    Windows: function () {
      return navigator.userAgent.match(/IEMobile/i);
    },
    any: function () {
      return (isMobile.Android() || isMobile.BlackBerry() || isMobile.iOS() || isMobile.Opera() || isMobile.Windows());
    }
});


  
 


if (!isMobile.any()) {
    $(window).stellar({
      horizontalScrolling: false,
      verticalOffset: 0,
      horizontalOffset: 0,
      hideDistantElements: false
    });
  }