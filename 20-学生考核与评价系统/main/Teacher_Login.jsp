<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>

<head>
    <title>
        教师登录
    </title>
</head>

<style>
    @import url("../CssDemo/login_style.css");
</style>
<script type="text/javascript" src="../JsDemo/login.js"></script>

<body onclick="clickEffect()">
<!--教师登录-->
<div class="thead">
    <center><span>学生考核与评价系统</span></center>
</div>
<div>
    <form class="login" name="form2.0" action="Index02.jsp" method="post">
        <center>
            <p>教师登录</p>
            <div>
                <input name="tno" type="text" placeholder="教师编号" class="input" required />
            </div><br><br>
            <div>
                <input name="password" type="password" placeholder="密码" class="input" required />
            </div><br><br>
            <div>
                <button class="btn" type="submit">登录</button>
                <button class="btn" type="button" onclick="JumpToTea()">重置</button>
            </div>
        </center>
    </form>
</div>
<center>
    <button class="btn" type="button" onclick="JumpToStu()">学生登录</button>
    <button class="btn" type="button" onclick="JumpToMan()">管理员登录</button>
</center>
</body>
</html>