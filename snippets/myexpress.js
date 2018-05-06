http://expressjs.com/en/4x/api.html#router
var express = require('express')
var request = require('request');
var bodyParser = require('body-parser');

var app = express();

// �������� request �� body�� urlencoded�ַ�
app.use(bodyParser.urlencoded({ extended: false }));

// ���� application/json ����
app.use(bodyParser.json());

// ���ÿ������
app.all('*', function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    // ���ֻ��һ�ֶԿͻ��˵ķ���˵��������������ֹ��������ķ��ͣ����ԲŻ���OPTIONԤ���������������֧��ʲô
    // ����������˵�Ҳ�֧��post����ʵ���Ͽͻ�����Ȼ�ɷ���post����ġ�
    res.header("Access-Control-Allow-Methods","PUT,POST,GET,DELETE,OPTIONS");
    res.header("Content-Type", "application/json;charset=utf-8");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept, Authorization, token");
    next();
});

// �½�һ��·��
var router = express.Router();

// �Զ����м��
router.use(function (req, res, next) {
  console.log('Time: ', Date.now())
  next()
})

// whether using GET, POST, PUT, DELETE, or any other HTTP request method
router.all('/', function (req, res) {
  // OPTIONS����ֱ�ӷ��سɹ�
  if (req.method == 'OPTIONS') {
      return res.end('ok');
  }
  // ��ȡ post ����
  console.log(req.body);
  // ��ȡ rest api ·�ɲ���
  console.log(req.params);
  // ��ȡ get ����
  console.log(req.query);
  // ��ȡ header ����ͷ�ǲ���
  console.log(req.headers);
  // ���ؽ��
  res.end('ok');
})

app.use('/', router);

app.listen('3000', function(err){
    console.log('start');
});