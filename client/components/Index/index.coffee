fission = require '../../app'
DOM = fission.DOM
fs = require 'fs'
svg = fs.readFileSync __dirname + '/../../img/house.svg'

Index = fission.view
  displayName: 'House'
  render: ->
    houseImg = DOM.svg
      className: "house #{@props.mode}"
      version: '1.1'
      viewBox: '0 0 394.5 576'
      dangerouslySetInnerHTML:
        __html: svg

    return DOM.div
      className: 'index-component'
    , houseImg

module.exports = Index