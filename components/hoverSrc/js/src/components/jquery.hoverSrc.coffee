# Emulate a hover state for images
#
# @param _on [String] The active suffixe used on [src] attribute
# @param _off [String] The inactive suffixe used on [src] attribute
# @param activeClass [String] The class used to force active state
#
# @return the jQuery object to allow chaining
#
jQuery.fn.hoverSrc = (_on, _off, activeClass) ->
  # Set attributes
  $this = jQuery(this)
  _on ?= '-on'
  _off ?= '-off'
  activeClass ?= 'active'

  # Add the active suffixe to the image src
  hoverIn = ->
    $this = jQuery(this)
    unless $this.hasClass(activeClass)
      srcName = $this.attr('src')
      srcName = srcName.replace(_off, _on)
      $this.attr('src', srcName)

  # Add the inactive suffixe to the image src
  hoverOut = ->
    $this = jQuery(this)
    unless $this.hasClass(activeClass)
      srcName = $this.attr('src')
      srcName = srcName.replace(_on, _off)
      $this.attr('src', srcName)

  $this.each( ->
    # Preload images the active image
    (new Image()).src = $this.attr('src').replace(_off, _on)

    # Bind events
    $this.on('focus mouseenter', hoverIn)
    $this.on('blur mouseleave', hoverOut)
  )
  return $this
