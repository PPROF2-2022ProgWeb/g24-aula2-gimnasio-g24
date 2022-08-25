const { Host } = require('@angular/core');
const mysql = require('mysql');
const conexion = mysql.createConnection({
Host: 'localhost',
user: 'root',
password: '',
port: '3306',
database: 'c2110488_prispc'
});

conexion.connect((err)=>{

if(err){
    console.log('ha ocurrido un erro de conexion' + err)
}
else{
    console.log('la bas e de datos se conecto')
}

});

module.exports=conexion;