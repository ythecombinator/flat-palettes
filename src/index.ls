'use strict'

require! {
  'unique-random-array': rand
  './colors.json'
  'prelude-ls': {take}
  'prelude-ls-extended': ext
}

module.exports = (quantity) ->

  palette = rand colors

  switch quantity
  | [1 to 5] => take quantity, ext.shuffle palette!
  | _        => 'Please enter a valid number of colors (1 - 5).'
