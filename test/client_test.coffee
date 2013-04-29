(require 'chai').should()
OptionStore = require '../lib/optionStore'

describe 'The moderator optionStore', ->
    optionStore = null
    
    beforeEach ->
        optionStore = new OptionStore
        
    
    it 'should accept an option that is added to its list', ->
        optionStore.addOption 'option'
        options = optionStore.getList()
        options.should.contain 'option'
