const express = require('express')
const app = express()
const host = '0.0.0.0'
const port = 80

app.use('/', express.static('./dist/'))
app.listen(port,host,()=>{
    console.log(`Server start on: "${host}:${port}"`)
})