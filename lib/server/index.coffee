http = require 'http'
path = require 'path'


handler = (req, res) ->
  switch req.url
    when "/"
      res.writeHead(200, { 'content-type': 'text/html'})
      res.end '<html><head><script src="consent.js" type="text/javascript"></script></head><body></body></html>'
      break;
    when "/consent.js"
      res.writeHead(200, { 'content-type': 'text/javascript'})
      res.end 'hello world'
      break;



module.exports.start = (config) ->
  server = http.createServer handler
  server.listen config.port