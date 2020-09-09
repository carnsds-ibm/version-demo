const app = require('express')()

app.get('/version', (req, res) => {
    const version = process.env.VERSION ? process.env.VERSION : "RED"
    console.log(`FOUND VERSION: ${version}`)
    res.status(200).send(`Version is: ${version}\r\n`)
})
app.all('/*', (req, res) => {
    res.status(500).send('Invalid request\r\n')
})

app.listen(3000)
