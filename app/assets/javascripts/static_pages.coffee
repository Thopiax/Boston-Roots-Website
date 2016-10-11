# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# $(document).ready ->
#   # Initiation
#   navPillAdaptor()
#   checkNavSize()
#   # Event handling
#   $(document).scroll ->
#     startNav(data.main_color, data.sec_color)
#     navPillAdaptor()
#     return
#
#   $(window).on "resize", () ->
#     checkNavSize()
#
#   return
#
# checkNavSize = () ->
#   if $(window).width() <= data["screen-sm-max"]
#     $(".jumboimage img").attr("src", "images/favicon.png")
#   else
#     $(".jumboimage img").attr("src", "images/boston_roots_nav.png")
#   return
#
# startNav = (main_color, sec_color) ->
#   $("nav").css
#     "background-color": sec_color
#   console.log($(".nav .active").css("background-color"))
#   $(".nav a").css
#     color: main_color
#   $(".nav .active a").css
#     color: "white"
#   $(".navbar-brand").show()
#   return
#
# navPillAdaptor = () ->
#   position   = $(window).scrollTop()
#   win_height = $("#home").height()
#   if position < 100
#     $("nav").css
#       "background-color": "transparent"
#     console.log($(".nav .active").css("color"))
#     $(".nav a").css
#       color: "white"
#     $(".navbar-brand").hide()
#   if position < win_height * 0.6
#     $("#navhome").addClass("active")
#     $("#navtimeline").removeClass("active")
#     $("#navmission").removeClass("active")
#     $("#navteam").removeClass("active")
#     $("#navcontact").removeClass("active")
#   else if position >= (win_height * 0.6) and position < win_height + (win_height*0.6)
#     $("#navhome").removeClass("active")
#     $("#navtimeline").addClass("active")
#     $("#navmission").removeClass("active")
#     $("#navteam").removeClass("active")
#     $("#navcontact").removeClass("active")
#   else if position >= win_height + (win_height*0.6) and position < win_height * 2 + win_height * 0.6
#     $("#navhome").removeClass("active")
#     $("#navtimeline").removeClass("active")
#     $("#navmission").addClass("active")
#     $("#navteam").removeClass("active")
#     $("#navcontact").removeClass("active")
#   else if position >= win_height * 2 + win_height * 0.6 and position < win_height * 3 + win_height * 0.6
#     $("#navhome").removeClass("active")
#     $("#navtimeline").removeClass("active")
#     $("#navmission").removeClass("active")
#     $("#navteam").addClass("active")
#     $("#navcontact").removeClass("active")
#    if position >= win_height * 3 + win_height * 0.6
#     $("#navhome").removeClass("active")
#     $("#navtimeline").removeClass("active")
#     $("#navmission").removeClass("active")
#     $("#navteam").removeClass("active")
#     $("#navcontact").addClass("active")
#   return
