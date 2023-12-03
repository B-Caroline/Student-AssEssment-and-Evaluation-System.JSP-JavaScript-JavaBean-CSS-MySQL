
setInterval(
    "document.getElementById('Date').value=new Date().toLocaleString()+'  星期'+'日一二三四五六'.charAt(new Date().getDay());",
    1000);


// function subCheck(){
//     alert("are you sure to submit?");
// }
// window.onload = function () {
//     var button1 = document.getElementById("btn");
//     button1.onclick = function () {
//         alert("you click button!!!")
//     }
// }

// <%@ page contentType="text/html;charset=UTF-8" language="java" %>
// <html>
// <head>
// <title>Title</title>
// <script type="text/javascript" src="../JsDemo/clock.js"></script>
// </head>
// <body>
// <input type="submit" value="提交" onclick="subCheck()">
// <input type="button" id="btn" value="click me">
// </body>
// </html>