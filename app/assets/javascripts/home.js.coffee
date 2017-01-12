
$(document).on "turbolinks:load", ->

  home = $("#home")
  mission = $("#mission")

  # CHECK IF THIS IS HOME PAGE
  if home.length > 0

    # navbar adaptation
    new ScrollMagic.Scene( 
                          offset: -100,
                          duration: 200 
                          ).setClassToggle("nav", "nav-home")
                           .addTo(controller)

    new ScrollMagic.Scene(triggerElement: "##{name}",
                         triggerHook: "onEnter"
                         ).setVelocity("##{name} > .background", 
                           translateY: "80%", 
                           duration: 400).addTo(controller)

    $(window).on "resize", () ->
      setBackgroundSize(home, 1800/2702)
      setBackgroundSize(mission, 1080/1621)

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
