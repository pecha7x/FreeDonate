main =
  init: ->
    @presentMoneySliderScheduler()

  presentMoneySlider: ->
    present_image = $('#present-money .present-image')
    money_image = $('#present-money .money-image')
    present_label = $('#present-money span.present')
    money_label = $('#present-money span.money')

    if money_image.hasClass('hide')
      money_image.show()
      money_image.removeClass('hide')
      present_image.hide()
      present_image.addClass('hide')

      present_label.addClass('skills')
      present_label.removeClass('name')
      money_label.addClass('name')
      money_label.removeClass('skills')
    else
      present_image.show()
      present_image.removeClass('hide')
      money_image.hide()
      money_image.addClass('hide')

      money_label.addClass('skills')
      money_label.removeClass('name')
      present_label.addClass('name')
      present_label.removeClass('skills')

  presentMoneySliderScheduler: ->
    test = ->
      main.presentMoneySlider()
    setInterval(test, 3 * 1000)

$ ->
  main.init()