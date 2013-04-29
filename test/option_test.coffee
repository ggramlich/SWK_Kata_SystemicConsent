(require 'chai').should()
Option = require '../lib/option'

describe 'Option', ->
  option = null

  it 'should be created with a name', ->
    option = new Option("Sushi")
    option.name.should.equal "Sushi"


