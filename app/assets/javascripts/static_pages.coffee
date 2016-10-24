# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "turbolinks:load" , ->

  # DECLARATION

  just_started = true

  nav         = $("nav", "#site_wrapper")
  nav_a       = $("a", "nav")
  nav_brand_l = $("#nav_brand > a", nav)

  nav_height  = nav.height()
  win_top_above = true

  home = $("#home")
  mission = $("#mission")
  setBackgroundSize(home, 1800/2702)
  setBackgroundSize(mission, 1080/1621)

  # SCROLLING ANIMATION

  $("li>a", nav).on "click", ->
    target = $(@).attr('to');
    $(target).velocity 'scroll',
      duration: 1000,
      offset: -40,
      easing: 'ease-in-out'

  nav_brand_l.on "click", ->
    target = $(@).attr('to');
    $(target).velocity 'scroll',
      duration: 500,
      offset: -40,
      easing: 'ease-in-out'

  $(window).on "load", ->

    just_started = true

  $(window).on "load scroll", ->

    win_top = $(@).scrollTop()

    # NAVBAR FADE OUT

    if (win_top > nav_height && (win_top_above || just_started))
      nav.css("background-color", "rgba(236,236,236, 0.9)")
      nav_a.css("color", "")
      nav_brand_l.velocity "fadeIn",
        duration: 150

      nav.addClass "short-shadow"
      win_top_above = !win_top_above
      just_started = false
    else if (win_top < nav_height && (!win_top_above || just_started))
      nav.css("background", "transparent")
      nav_a.css("color", "white")
      nav_brand_l.velocity("fadeOut",
        duration: 150)

      nav.removeClass "short-shadow"
      win_top_above = !win_top_above
      just_started = false

  $(window).on "resize load", () ->

    setBackgroundSize(home, 1800/2702)
    setBackgroundSize(mission, 1080/1621)
    addNavToController("home", controller)
    addNavToController("timeline", controller)
    addNavToController("mission", controller)
    addNavToController("team", controller)
    addNavToController("contact", controller)

# FUNCTIONS
addNavToController = (name, controller) ->
  new ScrollMagic.Scene(
        triggerElement: "##{name}").setClassToggle("#nav#{name}", "active").addTo(controller)

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
