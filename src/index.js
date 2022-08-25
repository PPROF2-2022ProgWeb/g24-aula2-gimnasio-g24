
const morgan = require('morgan');
const express = require('express');
const exphbs  = require('express-handlebars');
const path = require('path');

var app = express();
var hbs = exphbs.create({ /* config */ });

// Register `hbs.engine` with the Express app.
app.engine('handlebars', hbs.engine);
app.set('view engine', 'handlebars');

//inicialiaciones
const app = express();

//setting
//const port = (process.env.port || 4000) ;
app.set('port', process.env.port || 4000);
app.set('views', path.join(__dirname, 'views') );
app.engine('.hbs', exphbs({
   defaultLayout: 'main',
   layoutsDir: path.join(app.get('views'), 'layouts'),
   partialDir: path.join(app.get('views'), 'partials'),
   extname: '.hbs',
   helpers: require('./lib/handlebars.js')
}));
app.set('view enegine', '.hbs');

//middlewes
app.use(morgan('dev'));
app.use(express.urlencoded({extended: false}));
app.use(express.json());

//gobal variable

//routes
app.use(require('./routes/'));

//Public

//starting
app.listen(app.get('port'), () =>{
   console.log('server on port ', app.get('port'));
})










//iniciar expres
