function showCorrectTab(){
  $(".tab-content div").hide();
  var activeLi = $(".tab-headers li.active");
  var tabId = activeLi.data("tab");

  $("#" + tabId).show();
}

$(window).ready(function(){


  $("button#showAll").on("click", function(){
    $(".superhero").show("slow");
  });

  $("li.superhero").on("click", function() {

    $("li.superhero").removeClass("active");
    $(this).addClass("active");

    // shows on click of li.superhero
    showCorrectTab();
  });


  // show correct tab on page load
  showCorrectTab();

});
