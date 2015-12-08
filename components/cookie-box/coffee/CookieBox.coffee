class CookieBox

  constructor: (selector, @delay) ->
    @delay ?= 300
    selector ?= 'cookie-box'

    @setElement(selector)
      .bind()

    @$el.addClass(@closeClass)

    if(!Cookies.get('accept-cookie'))
      setTimeout( =>
        @open()
      , 0)

  setElement: (selector) ->
    @$el = $('#' + selector)

    @$buttonClose = @$el.find('.' + selector + '-close')
    @openClass = selector + '-isopen'
    @closeClass = selector + '-isclose'
    return @


  bind: ->
    @$buttonClose.on('click', (e) =>
      e.preventDefault()
      @close()
    )
    return @

  open: ->
    @$el.addClass(@openClass)
    @$el.removeClass(@closeClass)
    return @

  close: ->
    Cookies.set('accept-cookie', true)
    @$el.addClass(@closeClass)
    @$el.removeClass(@openClass)

    setTimeout( =>
      @$el.remove()
    , @delay)


    return @



module?.exports = CookieBox
