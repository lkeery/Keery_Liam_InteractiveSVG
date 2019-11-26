const express = require('express');
const router = express.Router();

const sql = require('../utils/sql');

router.get('/', (req, res) => {

    let query = "SELECT * FROM tbl_spotify";

    sql.query(query, (err, result) => {
        if (err) { throw err; console.log(err); }

        res.render('index', { spotifyData: result });
    })
})

router.get('/song/:target', (req, res) => {
    let query = `SELECT * FROM tbl_spotify WHERE id="${req.params.target}"`;
  
    sql.query(query, (err, result) => {
      if (err) { console.log(err); }
      
      console.log(result);
  
      res.json(result[0]);
    })
  })

module.exports = router;