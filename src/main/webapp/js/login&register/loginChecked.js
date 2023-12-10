backend = "http://localhost:8080/bookstore_war_exploded"
function login(){
    console.log(document.getElementById('login_username').value);
    //ajax post请求
    const loginUser = {
        // userId:1,
        username: document.getElementById("login_username").value,
        password: document.getElementById("login_password").value,
        // phone:"11"
    }
    $(function(){
        $.ajax({
            url: backend + "/user/login",
            type: "post",
            //将json转为string格式发送
            data: JSON.stringify({"loginUser":loginUser}),
            dataType: "json",
            contentType : "application/json;charset=UTF-8",
                success:function(data){
                    console.log(data);
                    //将userId保存在本地
                    if(data.ok===false) {
                        layer.msg(data.msg, {
                            icon: 2,
                            time: 4000 //2秒关闭（如果不配置，默认是3秒）
                          }, function(){
                            location.assign("#");
                          }); 
                    }
                    else {
                        localStorage.setItem("userId",data.data.userId);
                        if(data.data.isAdmin===1){
                            sessionStorage.setItem("admin",document.getElementById('login_username').value);
                        }else{
                            sessionStorage.setItem("user",document.getElementById('login_username').value);
                        }
                        layer.msg(data.msg, {
                            icon: 1,
                            time: 2000 //2秒关闭（如果不配置，默认是3秒）
                          }, function(){
                            window.location.assign('index.html');
                          }); 
                    }
                    
                    //location.assign("shoppingCart.html");
                }
        })
    })
}

function register(){
    
    console.log(document.getElementById('reg_password1').value);
    //ajax post请求
    $(function(){
        $.ajax({
            url: backend + "/user/register",
            type: "post",
            //将json转为string格式发送
            data : JSON.stringify({
                "regUser":{
                    "username": document.getElementById('reg_username').value,
                    "password": document.getElementById('reg_password1').value,
                    "phone": document.getElementById('reg_phone').value
                }
            }),
            dataType: "json",
            contentType : "application/json",
                success:function(data){
                    if(data.ok==false) {
                        layer.msg(data.msg, {
                            icon: 2,
                            time: 4000 //2秒关闭（如果不配置，默认是3秒）
                          }, function(){
                            location.assign("#");
                          }); 
                    }
                    else {
                        // localStorage.setItem("userId",data.data.userId);
                        // sessionStorage.setItem("admin",document.getElementById('login_username').value);
                        layer.msg("注册成功,即将跳转登录...", {
                            icon: 1,
                            time: 2000 //2秒关闭（如果不配置，默认是3秒）
                          }, function(){
                            window.location.assign('login&register.html');
                          }); 
                    }
                }
        })
    })
}