main =
  init: ->
    @presentMoneySliderScheduler()
    @checkRegistrationErrors()
    presentMoneyContainer = $('#present-money')
    @present_image = presentMoneyContainer.find('.present-image')
    @money_image = presentMoneyContainer.find('.money-image')
    @present_label = presentMoneyContainer.find('span.present')
    @money_label = presentMoneyContainer.find('span.money')

  checkRegistrationErrors: ->
    if $('form#new_user #error_explanation').length > 0
      $('.navbar-nav .page-scroll a[href="#signup"]')[0].click()

  presentMoneySlider: ->
    if @money_image.hasClass('hide')
      main.procSlider({img: @money_image, lb: @money_label}, {img: @present_image, lb: @present_label})
    else if @present_image.hasClass('hide')
      main.procSlider({img: @present_image, lb: @present_label}, {img: @money_image, lb: @money_label})
    else
      main.presentMoneySlider()

  procSlider: (will_show, will_hide) ->
    will_show.img.show().removeClass('hide')
    will_hide.img.hide().addClass('hide')
    will_hide.lb.addClass('skills').removeClass('name')
    will_show.lb.addClass('name').removeClass('skills')


  presentMoneySliderScheduler: ->
    test = ->
      main.presentMoneySlider()
    setInterval(test, 3 * 1000)

$ ->
  main.init()