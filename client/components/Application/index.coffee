fission = require '../../app'
DOM = fission.DOM
Index = fission.createFactory require '../Index'
Navbar = fission.createFactory require '../Navbar'

modes = ['forest', 'royal']

Application = fission.view
  displayName: 'Application'
  init: ->
    mode: 'forest'

  setMode: (mode) ->
    console.log 'setting mode to', mode
    @setState mode: mode

  render: ->
    clickables = modes.map (mode) =>
      return DOM.button
        key: mode
        className: 'mode-button'
        onClick: @setMode.bind @, mode
      , mode

    nav = Navbar null, clickables
    house = Index mode: @state.mode

    return DOM.div
      className: 'application-component'
    , nav, house

module.exports = Application