::request.proxy::
Var = 
(
 request({
    method: 'GET',
    url: 'http://ip.chinaz.com/getip.aspx',
    timeout: 8000,
    encoding: null,
    proxy: 'http://91.205.239.120:8080'
}, function (err, _res, body) {
    if (err) throw new Error(err)
    body = body.toString();
    console.log(body);
})
)
code(Var)
return

::http.request::
// http://nodejs.cn/api/http.html#http_http_request_options_callback
// http://yijiebuyi.com/blog/8221eb14c8482e7efd1868946e99ea7c.html
Var = 
(
var postData = JSON.stringify({
        'Phone': mobile,
        'Code': code,
        'Pwd': pwd,
        'Share': share
});

const opt = {
    // host: '119.10.67.144', // ����Ŵ����������ip����������ǧ���ܼ�http
    // port: '808', // ����Ŵ���������Ķ˿ں�
    method: 'POST',
    path: 'http://192.168.0.102',
    timeout: 30000,
    headers: {
        'Content-Type': 'application/json;charset=utf-8',
        'X-Requested-With': 'XMLHttpRequest',
        'Content-Length': postData.length
    },
};

const req = http.request(opt, function (res) {
    console.log(``״̬��: ${res.statusCode}``);
    console.log(``��Ӧͷ: ${JSON.stringify(res.headers)}``);

    res.setEncoding('utf8');

    res.on('data', function (data) {
          console.log(``��Ӧ����: ${data}``);
    });

    res.on('end', () => {
        console.log('��Ӧ���������ݡ�');
    });
});

req.on('error', (e) => {
    console.error('err', e.message);
});

req.write(postData);
req.end();
)
code(Var)
return

::request::
Var = 
(
request({
    method: 'POST',
    url: 'http://192.168.0.102',
    headers: {
        // 'Content-Type': 'application/json',
        // 'X-Requested-With': 'XMLHttpRequest',
    },
    // ����ͻط��������Զ�ת����� json ����
    // ����Ҫ��header������'Content-Type': 'application/json',Ҳ����Ҫ�ֶ�JSON.stringify()ת��Body postdata
    json: true, 
    body: {
        'Phone': mobile,
        'Code': code,
        'Pwd': pwd,
        'Share': share
    },
}, function (err, response, body) {
    console.log(body);
})
)
code(Var)
return

::node-mkdir::
::fs-mkdir::
Var = 
(
var mkdirp = require('mkdirp');
mkdirp(path.join(__dirname,`/data/`), function (err) {
    if (err) console.error(err)
})
)
code(Var)
return

::node-delete::
::node-rm::
::node.delete::
::fs-delete::
::fs-rm::
::fs.rm::
Var = 
(
var fs = require('fs');
var path = require('path');
function deleteall(path) {  
    var files = [];  
    if(fs.existsSync(path)) {  
        files = fs.readdirSync(path);  
        files.forEach(function(file, index) {  
            var curPath = path + "/" + file;  
            if(fs.statSync(curPath).isDirectory()) { // recurse  
                deleteall(curPath);  
            } else { // delete file  
                fs.unlinkSync(curPath);  
            }  
        });  
        fs.rmdirSync(path);  
    }  
};  
)
code(Var)
return


::node.rename::
::fs.rename::
Var = 
(
var fs = require('fs');
var files = fs.rename('./test.txt','./test/test.txt',function(err){
     if(err) console.log("err");
     console.log("�ļ������ɹ�");
})
)
code(Var)
return

::node-read::
::fs-read::
::fs.read::
Var = 
(
var fs = require('fs');
var path = require('path');
fs.readFile(path.join(__dirname,'/data/test.json'), {encoding:'utf-8'} , function (err, data) {
    if(err) throw err;
    console.log(data);
});
)
code(Var)
return

::node-write::
::node.write::
::fs.write::
Var = 
(
var fs = require('fs');
var path = require('path');
fs.writeFile(path.join(__dirname,'/data/test.json'), '����׷�ӵ�����', { flag:"a" }, function (err) {
    if(err) console.error("�ļ�д��ʧ��");
    else console.log("�ļ�д��ɹ�");
})
)
code(Var)
return


::env::
    SendRaw, process.env.NODE_ENV === 'production|development'
return

::node-http::
::node-server::
Var = 
(
var http = require('http');

var server = http.createServer(function (req, rep) {
    rep.writeHead(200, {"Content-Type": "text/plain"});
    rep.end("Hello World!!");
})

server.listen(3000, function (err) {
     console.log('start');
});
)
code(Var)
Return