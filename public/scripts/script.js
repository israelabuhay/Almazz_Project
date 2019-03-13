
$(document).ready(function () {
  $(".sidebar-dropdown > a").click(function () {
    $(".sidebar-submenu").slideUp(200);
    if (
      $(this)
        .parent()
        .hasClass("active")
    ) {
      $(".sidebar-dropdown").removeClass("active");
      $(this)
        .parent()
        .removeClass("active");
    } else {
      $(".sidebar-dropdown").removeClass("active");
      $(this)
        .next(".sidebar-submenu")
        .slideDown(200);
      $(this)
        .parent()
        .addClass("active");
    }
  });

  $("#close-sidebar").click(function () {
    $(".page-wrapper").removeClass("toggled");
    $(".fixed-bottom").css("display","");
  });
  $("#show-sidebar").click(function () {
    $(".page-wrapper").addClass("toggled");
    $(".fixed-bottom").css("display","none");
  });

  //FOOTER
  $(window).scroll(function(){
    //Header
    if($(window).scrollTop()>= 100){
       $('.header').addClass('fixed-top');
    }
    else {
      $('.header').removeClass('fixed-top');
    }
    //Footer
      var navpanel = $('.bottom-nav');
      var panelHeight = navpanel.height() - 4;
      var footerHeight = $('.footer').height();
      if( $(document).height() - panelHeight - footerHeight <= $(window).scrollTop() + $(window).height() ) {
        navpanel.removeClass('fixed-bottom');
      } 
    else {
      navpanel.addClass('fixed-bottom');
    }
    
  });

  //LOADER
  var myVar;

function myFunction() {
  myVar = setTimeout(showPage, 3000);
}

function showPage() {
  $("#loader").fadeOut();
  $("#myDiv").fadeIn();
}

myFunction();

});


