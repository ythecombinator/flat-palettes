#!/usr/bin/env node
'use strict';
var meow, flatPalettes, colors, each, cli, logColors;
meow = require('meow');
flatPalettes = require('./');
colors = require('chalk');
each = require('prelude-ls').each;
cli = meow({
  help: ['', 'Options:', '  --help  Guess what? It brings you here.', '  --version  Displays the current version.', '', 'Usage:', '  flat-palettes < number of colors (1-5) >', '', 'Example:', '  $ flat-palettes 3', '']
});
logColors = function(element){
  return console.log(element.replace(/^"(.*)"$/, '$1'));
};
console.log(colors.red('\n Here ' + colors.green('is ' + colors.cyan('your ' + colors.blue('flat ' + colors.magenta('palette: \n'))))));
each(logColors, flatPalettes(cli.input[0]));