'use strict'

require! {
  'unique-random-array': rand
  './colors.json'
  'prelude-ls': {take}
}

module.exports = (quantity) ->

  palette = rand colors

  switch quantity
  | [1 to 5] => take quantity, palette!
  | _        => 'Please enter a valid number of colors (1 - 5).'
