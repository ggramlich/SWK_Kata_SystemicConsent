should = (require 'chai').should()
port = 4000
request = require('request')
server = require('../lib/server')
server.start(port: port)

describe 'the server', ->
  it 'should deliver a page with the javascript scripts', (done) ->
    request(uri: 'http://localhost:4000', (req, res) ->
      should.exist(res)
      res.statusCode.should.equal(200)
      res.headers['content-type'].should.contain('text/html')
      res.body.should.contain('<script src="consent.js" type="text/javascript"></script>')
      done()
    )

  it 'should deliver a page with the javascript scripts on another port', (done) ->
    server.start(port: 4001)
    request(uri: 'http://localhost:4001', (req, res) ->
      should.exist(res)
      res.body.should.contain('javascript')
      done()
    )

