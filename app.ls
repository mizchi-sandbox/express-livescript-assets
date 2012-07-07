express = require \express
app = express.createServer!
app.use (require \connect-assets)!

# session
app.use express.bodyParser!
app.use express.cookieParser!

# template engine
coffeekup = require \coffeekup
app.register \.coffee, coffeekup.adapters.express
app.set 'view engine', \coffee
app.use express.static __dirname + \public

app.get \/*, (req, res) ->
  res.render \index, layout: false

app.listen 5000
