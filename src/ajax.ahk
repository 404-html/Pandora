AppsKey & a::
>^a::
::ajax::
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
Var = 
(
$.ajax({
    url: "http://localhost:3000",
    type: "post",
    data: JSON.stringify({
        test: 123
    }),
    headers: {
        token: '123'
    },
    dataType: 'json',
    contentType: 'application/json;charset=utf-8',
    success: function (data) {
        console.log(%t%, data);
    },
    error: function(e, m){
       console.log('���ݽӿ������쳣', e, m);
    }
})
)
code(Var)
Return

::xhrajax::
::_ajax::
::xhr::
::_xhr::
Var =
(
var request = new XMLHttpRequest();
// ����request.Send() ֻ�ܷ���POST�����������������ʹ��GET���󣬾Ͳ�Ҫʹ��Send���������ݲ���������ֱ����URL��ƴ�Ӳ������ɡ�
request.open('POST', '/my/url', true);
request.onload = function() {
  if (request.status >= 200 && request.status < 400) {
    // Success!
    window.alert('Success!');
    var resp = request.responseText;
    console.log(resp)
  } else {
  	// Fail
  	 window.alert('Fail');
  }
};

request.onerror = function() {
	window.alert('Error!');
};

request.send();
)
code(Var)
return

::ajax.get::
::ajaxget::
::getajax::
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
Var =
(
$.ajax({
    url: getPostUrl('http://192.168.8.199:8080') + "/api/dcfda/catering/fdaCateringOrder/searchDTO",
    type: "get",
    dataType: 'json',
    contentType: 'application/json;charset=utf-8',
    success: function (data) {
        console.log(%t%, data)
    }
})
)
code(Var)
return


::formajax::
::ajaxform::
::ajax.form::
::form.ajax::
::postform::
Var =
(
// ����form�ύ��ʽ����a=b&c=d����ο���https://www.cnblogs.com/CyLee/p/9441535.html
$(function(){
  var formData = new FormData();
  formData.append("username", "Groucho");
  formData.append("accountnum", 123456);

  $.ajax({
      url: "http://fuckyou.com/test.php",
      type: "post",
      data: formData,
      processData:false,
      contentType:false,
      success: function (data) {
          console.log(data);
      }
  })
})
)
code(Var)
return

::formajax2::
::formstringajax::
::formstrajax::
::formobjajax::
::ajaxformstring::
::ajaxformstr::
::ajaxformobj::
::form.ajax2::
Var =
(
var obj2formdata = (body) => {
    let formparams = '';
    Object.keys(body).forEach(key => {
         if (formparams.length > 0) {
           formparams += '&';
         }
         formparams = formparams + key + '=' + body[key];
    });
    return formparams
}

var request = new XMLHttpRequest();
request.open("POST", "http://fuckyou.com/test.php", true);
request.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
request.send(obj2formdata({a: 'b', c: 'd'}));
)
code(Var)
return