``#!/usr/bin/env node``

'use strict'

require! {
  meow
  './': flat-palettes
  'chalk': colors
  'prelude-ls': {each}
}

cli = meow {help: [
  ''
  'Options:'
  '  --help  Guess what? It brings you here.'
  '  --version  Displays the current version.'
  ''
  'Usage:'
  '  flat-palettes < number of colors (1-5) >'
  ''
  'Example:'
  '  $ flat-palettes 3'
  ''
]}

setColorWithColor = (color) -> colors.hex color

logColors = (element) ->
  element = element.replace //^"(.*)"$//, '$1'
  console.log setColorWithColor(element)(element)

console.log colors.red '\n Here ' + colors.green 'is ' + colors.cyan 'your ' +
            colors.blue 'flat ' + colors.magenta 'palette: \n'

each (logColors), flat-palettes cli.input.0
