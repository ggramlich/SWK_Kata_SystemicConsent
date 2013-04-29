(require 'chai').should()
User = require '../lib/user'

describe 'User', ->
  user = null

  beforeEach ->
    #user = new User

  it 'should be created with a name', ->
    user = new User("Dolphin")
    user.name.should.equal "Dolphin"

