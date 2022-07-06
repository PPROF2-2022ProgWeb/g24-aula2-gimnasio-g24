const rutas = require('express').Router()

rutas.get('/', function(req, res){
res.send('hola desde rutas de inicio')

});

module.exports= rutas;