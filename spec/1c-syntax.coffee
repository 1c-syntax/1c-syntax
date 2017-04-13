grammarTest = require 'atom-grammar-test'
path = require 'path'

describe "1c-syntax", ->

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage('1c-syntax')

  grammarTest path.join(__dirname, 'fixtures/grammar/syntax_test_bsl.bsl')
  grammarTest path.join(__dirname, 'fixtures/grammar/syntax_test_bsl.os')
  grammarTest path.join(__dirname, 'fixtures/grammar/syntax_test_sdbl.txt')
