<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>

<head>
    <title>
        学生登录
    </title>
</head>

<style>
    @import url("../CssDemo/login_style.css");
</style>
<script type="text/javascript" src="../JsDemo/login.js"></script>
<body onclick="clickEffect()">
<!--学生登录-->
<div class="thead">
    <center><span>学生考核与评价系统</span></center>
</div>
<div class="tbody">
    <form class="login" name="form1.0" action="Index01.jsp" method="post">
        <center>
            <p>学生登录</p>
            <div>
                <input id="sno" name="sno" type="text" placeholder="学号*" class="input" required />
            </div><br><br>
            <div>
                <input id="password" name="password" type="password" placeholder="密码*" class="input" required />
            </div><br><br>
            <div>
                <button class="btn" type="submit">登录</button>
                <button class="btn" type="button" onclick="JumpToStu()">重置</button>
            </div>
        </center>
    </form>
</div>
<center>
    <button class="btn" type="button" onclick="JumpToTea()">教师登录</button>
    <button class="btn" type="button" onclick="JumpToMan()">管理员登录</button>
</center>
</body>
</html>