<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Log in with your account</title>

    <link href="${contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/css/common.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>

    <![endif]-->
    <style >
        html, body {
            margin: 0;
            padding: 0;
            background: url('${contextPath}/images/background3.jpg') no-repeat fixed;
            background-size: cover;
            -moz-background-size: cover;
            -webkit-background-size: cover;
        }
    </style >
</head>

<body>

<div class="container">

    <form method="POST" action="http://www.baidu.com" class="form-signin" id="Login">
        <h2 class="form-heading"><font color='white'>Log in</font></h2>

        <div class="form-group">

            <input name="userName" type="text" class="form-control" placeholder="Username" id="un"
                   autofocus="true"/>
            <span id="sp1"></span>
            <input name="password" type="password" class="form-control" placeholder="Password" id="pw"/>
            <span id="sp2"></span>

            <button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>
            <h4 class="text-center"><a href="${contextPath}/registration">Create an account</a></h4>
        </div>

    </form>

</div>
<!-- /container -->
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<script src="https://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript">
    $(function(){
        //验证密码和用户名非空
        $("#Login").submit(function(e){

            var un = $("#un").val();
            var pw = $("#pw").val();

            var flag1 = false;
            var flag2 = false;


            if(un==null||un==""){
                //提示用户名不能为空
                $("#sp1").html("<font color='white'>username can't be null</font>");
            }else{
                $("#sp1").html("");
                flag1 = true;
            }

            if(pw==null || pw==""){
                //提示密码不能为空
                $("#sp2").html("<font color='white'>password can't be null</font>");
            }else{
                $("#sp2").html("");
                flag2 = true;

            }
            e.preventDefault();//阻止表单提交
            //进行ajax提交'

            if(flag1&&flag2){
                var jsonStr = {"userName":un,"password":pw};
                $.ajax({
                    url:"${pageContext.request.contextPath}/login",
                    type:"post",
                    data:jsonStr,
                    dataType:"text",
                    success:function(rec){
                        //1允许登录,其他,用户名或密码错误,
                        //允许登录

                        if(rec==1){
                            location.href="${pageContext.request.contextPath}/index";
                        }else{
                            $("#sp1").html("<font color='white'>your username or password had a mistake!</font>");
                        }


                    },
                    error:function(){
                        alert("error");
                    }

                });

            }

        });
    })
</script>
</body>
</html>
