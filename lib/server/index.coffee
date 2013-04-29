http = require 'http'


handler = (req, res) ->
  res.writeHead(200, { 'content-type': 'text/html'})
  res.end '<html><head><script src="consent.js" type="text/javascript"></script></head><body></body></html>'



module.exports.start = (config) ->
  server = http.createServer handler
  server.listen config.port