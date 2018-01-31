const express = require('express')
const morgan = require('morgan')
const bodyParser = require('body-parser')
const config = require('./config')

const app = express()

// logger
app.use(morgan('dev'))

// JSON 解析
app.use(bodyParser.json())

// route
app.use('/wx', require('./routes/wx'))
app.use('/push', require('./routes/push'))

app.listen(config.port, () => {
  console.log('Server started at port number: ', config.port)
})
