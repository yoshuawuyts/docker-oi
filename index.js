const http = require('http')

http.createServer(function (req, res) {
  res.end('oi')
}).listen(8080)
