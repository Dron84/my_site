const express = require('express')
const app = express()
const host = 'uniquesite.ru'
const port = 80

app.use('/', express.static('./dist/'))
app.listen(port, host, () => {
    console.log(`Server start on: "http://${host}"`)
})