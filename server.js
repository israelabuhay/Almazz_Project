
const ejs = require('ejs');
const express = require('express');
const app = express();
const expressLayouts = require('express-ejs-layouts');

app.set('view engine', 'ejs');

app.use(express.static(__dirname + '/public'));


app.use(expressLayouts);

app.get('/', (req, res) => {

    res.render('index', {
        title: 'Page Title',
        description: 'Page Description',
        header: 'Page Header',
    });
});

app.get('/test', (req, res) => {

    res.render('test', {
        title: 'Page Title',
        description: 'Page Description',
        header: 'Page Header',
    });
});

const server = app.listen(7000, () => {
    console.log(`Express Running on port ${server.address().port}`);
});


