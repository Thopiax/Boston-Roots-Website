# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->

  just_started = true

  nav         = $("nav", "#site_wrapper")
  nav_a       = $("a", "nav")
  nav_drop    = $('#navdropdown', nav)
  nav_brand   = $("#nav_brand", nav)
  nav_brand_l = $("#nav_brand > a", nav)

  nav_height  = nav.height()
  win_top_above = true

  home = $("#home")
  mission = $("#mission")
  setBackgroundSize(home, 1800/2702)
  setBackgroundSize(mission, 1080/1621)

  $("li>a", nav).on "click", ->
    target = $(@).attr('to');
    $(target).velocity 'scroll',
      duration: 500,
      offset: -40,
      easing: 'ease-in-out'

  nav_brand_l.on "click", ->
    target = $(@).attr('to');
    $(target).velocity 'scroll',
      duration: 500,
      offset: -40,
      easing: 'ease-in-out'

  addNavToController("home", controller).offset("-15%")
  addNavToController("timeline", controller).offset(-nav_height)
  addNavToController("mission", controller).offset(-nav_height)
  addNavToController("team", controller).duration("#{$("#team").height()}")
  addNavToController("contact", controller)

  # if ($(window).width() < 768)
  #   # NEED TO IMPLEMENT
  #   # nav_brand_l.on "click", ->
  #   #   slideDir = if nav_drop.is ':visible' then 'slideUp' else 'slideDown'
  #   #   nav_drop.velocity slideDir
  # else
  nav_drop.toggleClass("nav-pills navbar-right")

  $(window).on "load", ->

    just_started = true

  $(window).on "load scroll", ->

    win_top = $(@).scrollTop()

    if (win_top > nav_height && win_top_above)
      nav.css("background-color", "rgba(236,236,236, 0.9)")
      nav_a.css("color", "")
      nav_brand_l.velocity "fadeIn",
        duration: 150

      nav.addClass "short-shadow"
      win_top_above = !win_top_above
    else if (win_top < nav_height && (!win_top_above || just_started))
      nav.css("background", "transparent")
      nav_a.css("color", "white")
      nav_brand_l.velocity("fadeOut",
        duration: 150)

      nav.removeClass "short-shadow"
      win_top_above = !win_top_above

    just_started = false

  $(window).on "resize", () ->
    setBackgroundSize(home, 1800/2702)
    setBackgroundSize(mission, 1080/1621)
    addNavToController("home", controller).offset("-15%")
    addNavToController("timeline", controller).offset(-nav_height)
    addNavToController("mission", controller).offset(-nav_height)
    addNavToController("team", controller).duration("#{$("#team").height()}")
    addNavToController("contact", controller)

addNavToController = (name, controller) ->
  return new ScrollMagic.Scene(
              triggerElement: "##{name}",
              offset:         "-100px").setClassToggle("#nav#{name}", "active").addTo(controller)

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
