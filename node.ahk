
::node-read::
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