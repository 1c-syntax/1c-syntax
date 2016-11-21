grammarTest = require 'atom-grammar-test'
path = require 'path'

describe "language-1c-bsl", ->

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage('language-1c-bsl')

  grammarTest path.join(__dirname, 'fixtures/grammar/syntax_test_bsl.bsl')
  grammarTest path.join(__dirname, 'fixtures/grammar/syntax_test_bsl.os')
  grammarTest path.join(__dirname, 'fixtures/grammar/syntax_test_sdbl.txt')
