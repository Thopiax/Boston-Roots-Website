$(document).on "turbolinks:load", ->

  home = $("#home")
  mission = $("#mission")
  contact = $("#contact")
  team = $("#team")
  dwnarr = $("#jumboarrow")
  dwnarr_icon = $("#jumboarrow .icon")

  nav = $("nav")
  nav_brand = $(nav, "#nav_brand")
  $(".navbar-fixed-top").headroom()

  # CHECK IF THIS IS HOME PAGE
  if home.length 
    nav.addClass "hidden"
    # navbar adaptation
    new ScrollMagic.Scene(
                          offset: -100,
                          duration: "100%"
                          )
                          .setClassToggle("nav", "hidden")
                          .addTo(controller)

    # home arrow functionality
    dwnarr_icon.velocity("fadeIn", duration: 3000)
    dwnarr_icon.velocity( {translateY: '10px'}, { duration: 750, loop: true }).velocity('reverse')

    dwnarr.click ->
      $("#facts").velocity "scroll", { offset: -78, duration: 900, easing: "easeInBack" }

    $("#nav_brand").click ->
      if $(window).width >= 768
        home.velocity "scroll", {duraiton: 1000, easing: "easeInBack"}
    
    $(window).on "resize", () ->
      setBackgroundSize(home, 1800/2702)
      setBackgroundSize(mission, 1080/1621)

  else if contact.length
  
    $("#contactSubmit").click ->
      $("#contactSubmit").velocity({
        borderRadius: "25px",
        width: "45px",
        paddingLeft: "0",
        paddingRight: "0",
        backgroundColor: "#8CC152",
        color: "#fff",
        borderColor: "#8CC152",
        boxShadowX: "0",
        boxShadowY: "0"
      }, {
          duration: 350,
          easing: "easeInQuad"
      });

  else if team.length

    $(".profile").click ->
      $('input').attr('checked', false)
      $('.profile').removeClass "stick"
      $(@).find('input').attr('checked', true)
      $(@).addClass "stick"

addNavToController = (name, controller) ->
  return new ScrollMagic.Scene(triggerElement: "##{name}",
                               triggerHook: "onEnter")
              .setVelocity("##{name} > .background", 
                           {translateY: "80%"}, 
                           {easing: "linear"}).addTo(controller)

setBackgroundSize = (div, img_ratio) ->
  bg_size = ""
  div_height = div.height()
  div_width = div.width()
  cnt_ratio = div_height / div_width
  if cnt_ratio > img_ratio
    bg_size = "#{div_height / img_ratio}px #{div_height}px"
  else
    bg_size = "#{div_width}px #{div_width * img_ratio}px"
  div.css {
    "background-size": bg_size
  }