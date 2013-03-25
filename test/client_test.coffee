(require 'chai').should()
Client = require '../lib/client'

describe 'The moderator client', ->
    client = null
    
    beforeEach ->
        client = new Client
        
    
    it 'should accept an option that is added to its list', ->
        client.addOption 'option'
        options = client.getList()
        options.should.contain 'option'