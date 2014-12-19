fission = require './app'
window.React = fission.React # for devtools
Application = fission.createFactory require './components/Application'
attachFastClick = require 'fastclick'

attachFastClick document.body

fission.React.render Application(), document.body

module.exports = fission