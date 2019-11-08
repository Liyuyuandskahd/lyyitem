var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/banner', function (req, res, next) {
  res.append('Access-Control-Allow-Origin', '*')
  const {
    find
  } = require('./db');

  (async () => {

    let data = await find('banner')
    res.send(data);
  })()
});

router.get('/main', function (req, res, next) {
  res.append('Access-Control-Allow-Origin', '*')
  const {
    find
  } = require('./db');

  (async () => {

    let data = await find('homepage')
    res.send(data);
  })()
});

router.get('/guslike', function (req, res, next) {
  res.append('Access-Control-Allow-Origin', '*')
  const {
    find
  } = require('./db');

  (async () => {

    let data = await find('likelist')
    res.send(data);
  })()
});

router.get('/classify', function (req, res, next) {
  res.append('Access-Control-Allow-Origin', '*')
  const {
    find
  } = require('./db');

  (async () => {

    let data = await find('classify')
    res.send(data);
  })()
});

router.get('/check', function (req, res, next) {
  res.append('Access-Control-Allow-Origin', '*')
  let obj = req.query;
  let isok = false;
  const {
    find
  } = require('./db');

  (async () => {

    let data = await find('user', { username: obj.username })
    if (data.length) {
      res.send(data);
    } else {
      res.send(isok);
    }
  })()
});

router.get('/login', function (req, res, next) {
  res.append('Access-Control-Allow-Origin', '*')
  let obj = req.query;
  console.log(obj);
  const {
    find,
    insert
  } = require('./db');

  (async () => {
    await insert('user', [{
      'username': obj.username,
      'password': obj.password
    }])

    // let data = await find('imgdata')
    // console.log(data)
    res.send('ok');
  })()

});

router.get('/shopcar', function (req, res, next) {
  res.append('Access-Control-Allow-Origin', '*')
  let obj = req.query;
  console.log(obj);
  const {
    find,
    insert
  } = require('./db');

  (async () => {
    await insert('shopcar', [{
      'sid': obj.sid,
      'username': obj.username,
      'images': obj.images,
      'title': obj.title,
      'price': obj.price,
      'num': obj.num,
      'one': obj.one
    }])

    // let data = await find('imgdata')
    // console.log(data)
    res.send('ok');
  })()

});

router.get('/getshops', function (req, res, next) {
  res.append('Access-Control-Allow-Origin', '*')
  let obj2 = req.query;
  const {
    find
  } = require('./db');

  (async () => {

    let data = await find('shopcar', { username: obj2.username })
    res.send(data);
  })()
});

router.get('/delshops', function (req, res, next) {
  res.append('Access-Control-Allow-Origin', '*')
  let obj3 = req.query;
  let arr = obj3.sid.split(',');
  const {
    remove
  } = require('./db');
  arr.map(function (item) {
    (async () => {
      await remove('shopcar', { sid: item })
    })()
  })

  res.send('ok');
});

module.exports = router;
