'use strict';
var rand, colors, take;
rand = require('unique-random-array');
colors = require('./colors.json');
take = require('prelude-ls').take;
module.exports = function(quantity){
  var palette;
  palette = rand(colors);
  switch (quantity) {
  case 1:
  case 2:
  case 3:
  case 4:
  case 5:
    return take(quantity, palette());
  default:
    return 'Please enter a valid number of colors (1 - 5).';
  }
};