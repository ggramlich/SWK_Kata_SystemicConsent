(require 'chai').should()
OptionVoting = require '../lib/option_voting'
User = require '../lib/user'
Option = require '../lib/option'

describe 'OptionVoting', ->
  optionVoting = null
  user = null
  option = null
  optionValue = null

  beforeEach ->
    user = new User("Mary")
    option = new Option("Linsensuppe")
    optionValue = 0

  it 'should be created with a user', ->
    optionVoting = new OptionVoting(user, option, 0)
    optionVoting.user.should.equal user
    
  it 'should be created with a option', ->
    optionVoting = new OptionVoting(user, option, 0)
    optionVoting.option.should.equal option

  it 'should be created with a option value', -> 
    optionVoting = new OptionVoting(user, option, 0)
    optionVoting.optionValue.should.equal 0

