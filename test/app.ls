'use strict'

require! {
  '../src/index.ls': flat-palettes
  '../colors.json'
  'chai': {expect}
  'prelude-ls': {each}
}

describe "flat-palettes Testing Specifications" ->

  errorCases = ['User enters a string' 0]
  string     = flat-palettes errorCases.0
  outOfRange = flat-palettes errorCases.1

  countColors = (element) ->
    expect element.length .to.equal 5

  specify 'Used palettes should be in a valid array' ->
    expect colors .to.be instanceof Array

  specify 'There should be at least 30 palettes' ->
    expect colors.length .to.be.above 30

  specify 'Each palette should have 5 colors' ->
    each (countColors), colors

  specify 'Error: It should return a valid error message when user enters a non-valid number of colors' ->
    expect string .to.be.a \string
    expect outOfRange .to.be.a \string

  specify 'Error: It should return the correct error message when user enters a non-valid number of colors' ->
    expect string .to.equal 'Please enter a valid number of colors (1 - 5).'
    expect outOfRange .to.equal 'Please enter a valid number of colors (1 - 5).'
