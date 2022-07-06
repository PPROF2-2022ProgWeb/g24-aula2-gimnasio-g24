const expres = require('express');
const router = expres.Router();

router.get('/', (req, res)=>{
    res.send('NADA')
});

module.exports = router;