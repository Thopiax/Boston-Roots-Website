# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->


  just_started = true

  nav         = $("nav", "#site_wrapper")
  nav_a       = $("a", "nav")
  nav_brand   = $("#nav_brand", nav)
  nav_height  = nav.height()
  win_top_above = true

  home = $("#home")
  mission = $("#mission")
  setBackgroundSize(home, 1800/2702)
  setBackgroundSize(mission, 1080/1621)

  $(window).on "load", () ->

    addNavToController("home", controller)
    addNavToController("timeline", controller)
    addNavToController("mission", controller)
    addNavToController("team", controller)
    addNavToController("contact", controller)

  $(window).on "load scroll", () ->

    win_top = $(@).scrollTop()

    if (win_top > nav_height && (win_top_above || just_started))
      nav.css("background-color", "white")
      nav_a.css("color", "")
      # console.log nav.css("background")
      nav_brand.velocity("fadeIn",
        duration: 150)

      nav.toggleClass "short-shadow"
      win_top_above = !win_top_above
    else if (win_top < nav_height && (!win_top_above || just_started))
      nav.css("background", "transparent")
      nav_a.css("color", "white")
      nav_brand.velocity("fadeOut",
        duration: 150)

      nav.toggleClass "short-shadow"
      win_top_above = !win_top_above

    just_started = false

  $(window).on "resize", () ->
    setBackgroundSize(home, 1800/2702)
    setBackgroundSize(mission, 1080/1621)


addNavToController = (name, controller) ->
  new ScrollMagic.Scene(triggerElement: "##{name}").setClassToggle("#nav#{name}", "active").addTo controller


setBackgroundSize = (div, img_ratio) ->
  bg_size = ""
  cnt_ratio = div.height() / div.width()
  if cnt_ratio > img_ratio
    bg_size = "#{div.height() / img_ratio}px #{div.height()}px"
  else
    bg_size = "#{div.width()}px #{div.width() * img_ratio}px"
  div.css {
    "background-size": bg_size
  }
