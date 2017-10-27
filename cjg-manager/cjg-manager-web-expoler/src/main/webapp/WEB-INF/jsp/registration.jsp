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

    <title>Create an account</title>

    <link href="${contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/css/common.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style >
        html, body {
            margin: 0;
            padding: 0;
            background: url('${contextPath}/resources/images/background3.jpg') no-repeat fixed;
            background-size: cover;
            -moz-background-size: cover;
            -webkit-background-size: cover;
        }
    </style >
</head>

<body>

<div class="container">

    <form method="POST" action="${pageContext.request.contextPath}/regist" class="form-signin" id="userForm">
        <h2 class="form-signin-heading"><font color='white'>Create your account</font></h2>

            <div class="form-group">
                <input name="userName" type="text" class="form-control" placeholder="Username" id="userName"
                       autofocus="true"/>
                <span id="sp1"></span>
            </div>



            <div class="form-group">
                <input name="password" type="password" class="form-control" placeholder="Password" id="password"/>
                <span id="sp2"></span>
            </div>



            <div class="form-group">
                <input name="pwc" type="password" class="form-control" placeholder="Confirm your password" id="confirm"/>
                <span id="sp3"></span>
            </div>

            <div class="form-group">
                <input name="payPwd" type="text" class="form-control" placeholder="Your pay password" id="payPwd"/>
                <span id="sp4"></span>
            </div>

            <div class="form-group">
                <input name="mobile" type="text" class="form-control" placeholder="Your mobilePhone" id="mobile"/>
                <span id="sp5"></span>
            </div>

        <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
    </form>

</div>
<!-- /container -->
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<script src="https://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript">
    $(function() {
        var flag1 = false;
        var reg1 =  /^[a-zA-Z]\w{4,13}$/;
        var flag2 = false;
        var reg2 = /\w{5,12}/;
        var flag3 = false;
        var flag4 = false;
        var reg4 = /^\d{6}$/;
        var flag5 = false;
        var reg5 = /^\d{11}$/;
        $("#userName").blur(function() {
            var un = $("#userName").val();
            if (un==null||un=='') {
                $("#sp1").html("<font color='red'>用户名不能为空</font>");
                flag1 = false;
            }else if(reg1.test(un)){
                var jsonStr = {"userName":un}
                $.ajax({
                    url:"${pageContext.request.contextPath}/checkUsername.action",
                    type:"post",
                    data:jsonStr,
                    dataType:"text",
                    success:function(rec){
                        if (rec==1) {
                            $("#sp1").html("<font color='red'>此用户名已存在</font>");
                            flag1 = false;
                        }else if(rec==0) {
                            $("#sp1").html("<font color='green'>此用户名可用</font>");
                            flag1 = true;
                        }
                    },
                    error:function(){
                        alert("error");
                    }
                })
            }else {
                $("#sp1").html("<font color='red'>以字母开头，长度在5-12之间，只能包含字符、数字和下划线</font>");
                flag1 = false;
            }
        });

        $("#password").focus(function(){
            var un = $("#userName").val();
            if(un==null||un==""){
                $("#sp1").html("请输入用户名");
            }

        });

        $("#password").blur(function() {
            var pw = $("#password").val();
            if (pw==null||pw=='') {
                $("#sp2").html("<font color='red'>密码不能为空</font>");
                flag2 = false;
            }else if (reg2.test(pw)) {
                $("#sp2").html("<font color='green'>密码强度：弱</font>");
                flag2 = true;
            }else {
                $("#sp2").html("<font color='red'>密码长度为5到12</font>");
                flag2 = false;
            }
        });

        $("#confirm").focus(function(){
            var un = $("#userName").val();
            var pw = $("#password").val();
            if(un==null||un==""){
                $("#sp1").html("<font color='red'>请输入用户名</font>");
            }
            if (pw==null||pw=='') {
                $("#sp2").html("<font color='red'>请输入密码</font>");
            }
        });

        $("#confirm").blur(function() {
            var pw = $("#password").val();
            var cf = $("#confirm").val();
            if (cf==null||cf=='') {
                $("#sp3").html("<font color='red'>两次输入密码不一致</font>");
                flag3 = false;
            }else if (pw==null||pw=='') {
                $("#sp2").html("<font color='red'>密码不能为空，且密码长度为5-12位</font>");
                flag2 = false;
            }else if (pw==cf&&flag2) {
                $("#sp3").html("");
                flag3 = true;
            }else {
                $("#sp3").html("<font color='red'>两次输入密码有错</font>");
                flag3 = false;
            }
        });

        $("#payPwd").focus(function(){
            var un = $("#userName").val();
            var pw = $("#password").val();
            var cf = $("#confirm").val();
            if(un==null||un==""){
                $("#sp1").html("<font color='red'>请输入用户名</font>");
            }
            if (pw==null||pw=='') {
                $("#sp2").html("<font color='red'>请输入密码</font>");
            }
            if (cf==null||cf=='') {
                $("#sp3").html("<font color='red'>请确认密码</font>");
            }
        });

        $("#payPwd").blur(function() {
            var payPwd = $("#payPwd").val();
            if (payPwd==null||payPwd=='') {
                $("#sp4").html("<font color='red'>支付密码不能为空</font>");
            }else if (reg4.test(payPwd)) {
                $("#sp4").html("");
                flag4 = true;
            }else {
                $("#sp4").html("<font color='red'>请输入6位数字组成的支付密码</font>");
                flag4 = false;
            }
        });

        $("#mobile").focus(function(){
            var un = $("#userName").val();
            var pw = $("#password").val();
            var cf = $("#confirm").val();
            var payPwd = $("#payPwd").val();
            if(un==null||un==""){
                $("#sp1").html("<font color='red'>请输入用户名</font>");
            }
            if (pw==null||pw=='') {
                $("#sp2").html("<font color='red'>请输入密码</font>");
            }
            if (cf==null||cf=='') {
                $("#sp3").html("<font color='red'>请确认密码</font>");
            }
            if (payPwd==null||payPwd=='') {
                $("#sp4").html("<font color='red'>请输入支付密码</font>");
            }
        });

        $("#mobile").blur(function() {
            var mobile = $("#mobile").val();
            if (mobile==null||mobile=='') {
                $("#sp5").html("<font color='red'>手机号不能为空</font>");
            }else if (reg5.test(mobile)) {
                $("#sp5").html("");
                flag5 = true;
            }else {
                $("#sp5").html("<font color='red'>请输入正确的手机号</font>");
            }
        });

        $("#userForm").submit(function(e){

            var un = $("#userName").val();
            if (un==null||un=='') {
                $("#sp1").html("<font color='red'>用户名不能为空</font>");
                flag1 = false;
            }else if(reg1.test(un)){
                var jsonStr = {"userName":un}
                $.ajax({
                    url:"${pageContext.request.contextPath}/checkUsername",
                    type:"post",
                    data:jsonStr,
                    dataType:"text",
                    success:function(rec){
                        if (rec==0) {
                            $("#sp1").html("<font color='red'>此用户名可用</font>");
                            flag1 = true;
                        }else {
                            $("#sp1").html("<font color='green'>此用户名已被占用</font>");
                            flag1 = false;
                        }
                    },
                    error:function(){
                        alert("error");
                    }
                })
            }else {
                $("#sp1").html("<font color='red'>以字母开头，长度在5-12之间，只能包含字符、数字和下划线</font>");
                flag1 = false;
            }


            var pw = $("#password").val();
            if (pw==null||pw=='') {
                $("#sp2").html("<font color='red'>密码不能为空</font>");
                flag2 = false;
            }else if (reg2.test(pw)) {
                $("#sp2").html("<font color='green'>密码强度：弱</font>");
                flag2 = true;
            }else {
                $("#sp2").html("<font color='red'>密码长度为5到12</font>");
                flag2 = false;
            }


            var pw = $("#password").val();
            var cf = $("#confirm").val();
            if (cf==null||cf=='') {
                $("#sp3").html("<font color='red'>两次输入密码不一致</font>");
                flag3 = false;
            }else if (pw==null||pw=='') {
                $("#sp2").html("<font color='red'>密码不能为空，且密码长度为5-12位</font>");
                flag2 = false;
            }else if (pw==cf&&flag2) {
                $("#sp3").html("");
                flag3 = true;
            }else {
                $("#sp3").html("<font color='red'>两次输入密码有错</font>");
                flag3 = false;
            }

            var payPwd = $("#payPwd").val();
            if (payPwd==null||payPwd=='') {
                $("#sp4").html("<font color='red'>支付密码不能为空</font>");
            }else if (reg4.test(payPwd)) {
                $("#sp4").html("");
                flag4 = true;
            }else {
                $("#sp4").html("<font color='red'>请输入6位数字支付密码</font>");
                flag4 = false;
            }

            var mobile = $("#mobile").val();
            if (mobile==null||mobile=='') {
                $("#sp5").html("<font color='red'>手机号不能为空</font>");
            }else if (reg5.test(mobile)) {
                $("#sp5").html("");
                flag5 = true;
            }else {
                $("#sp5").html("<font color='red'>请输入正确的手机号</font>");
            }

            if(flag1&&flag2&&flag3&&flag4&&flag5){
                alert("注册成功");
            }else{
                $("#sp6").html("以上都是必填项");
                e.preventDefault();
            }

        })

    });




</script>
</body>
</html>
