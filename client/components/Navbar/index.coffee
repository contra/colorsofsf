fission = require '../../app'
DOM = fission.DOM

Nav = fission.view
  render: ->
    logo = DOM.img
      className: 'title'
      src: 'img/logo.svg'

    return DOM.nav
      className: 'navbar-component'
    , logo, @props.children

module.exports = Nav