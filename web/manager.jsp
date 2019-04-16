<%--
  Created by IntelliJ IDEA.
  User: 82490
  Date: 2019/4/15
  Time: 23:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"%>
<html>
<head>
    <title>管理员操作系统</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
    <link rel="stylesheet" href="assets/css/hall_main.css" />
    <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
    <!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
</head>
<script type="text/javascript">
    function rewrite() {
        var sig=prompt("请输入您的班级");
        if(sig){
            document.getElementById("recla").innerText=sig;
        }
        else if(sig==""){
            alert("请输入您的班级");
            rewrite();
        }
    }
    function alertbor() {
        alert("借阅成功");
    }
    function alertret() {
        alert("归还成功");
    }
</script>
<body>

<!-- Header -->
<section id="header">
    <header>
        <span class="image avatar"><img src="images/avatar.jpg" alt="" /></span>
        <h1 id="logo">Kris Wu</h1>
    </header>
    <nav id="nav">
        <ul>
            <li><a href="#one" class="active">主页</a></li>
            <li><a href="#two">书籍管理</a></li>
            <li><a href="#three">借阅管理</a></li>
        </ul>
    </nav>
    <footer>
        <ul class="icons">
            <li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
            <li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
            <li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
            <li><a href="#" class="icon fa-github"><span class="label">Github</span></a></li>
            <li><a href="#" class="icon fa-envelope"><span class="label">Email</span></a></li>
        </ul>
    </footer>
</section>

<!-- Wrapper -->
<div id="wrapper">

    <!-- Main -->
    <div id="main">

        <!-- One -->
        <section id="one">
            <div class="container">
                <header class="major">
                    <h2>东北大学图书管理系统</h2>
                </header>
                <p style="text-align: right">由网络小组开发</p>
                <p style="text-align: center">书籍是人类进步的阶梯<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--高尔基</p>
            </div>
        </section>

        <!-- Two -->
        <section id="two">
            <div class="container">
                <h3>书籍管理</h3>
                <header style="text-align: center">
                    <button class="fa fa-plus-square button" style="width: 20%"></button>
                    <button class="fa fa-minus-square button" style="margin-left: 5em;width: 20%"></button>
                </header>
                <div style="text-align: right"><button class="fa fa-search button"></button></div>
                <div style="border: black 1px solid;height: 40em;width: 100%;overflow: auto;margin-top: 1em">
                    <table style="width: 100%;height: 100%; float: left;margin-bottom: 0px">
                        <thead style="text-align: left;border: black 1px solid;height: 10%">
                        <tr><th style="width: 20%;border-right: black 1px solid;border-bottom: black 1px solid">书籍索引号</th><th style="width: 25%;border-right: black 1px solid;border-bottom: black 1px solid">书籍名称</th><th style="width:10%;border-right: black 1px solid;border-bottom: black 1px solid">主编</th><th style="width:5%;border-right: black 1px solid;border-bottom: black 1px solid">版本</th><th style="width:16%;border-right: black 1px solid;border-bottom: black 1px solid">出版社</th><th style="width:24%;border-right: black 1px solid;border-bottom: black 1px solid">操作</th></tr>
                        </thead>
                        <tbody style="height: 85%">
                        <tr style="border-bottom: black 1px solid">
                            <td>1</td><td>JAVA</td><td>ZYP</td><td>1</td><td>ZYP</td><td><button class="fa fa-minus-square button" ></button><button class="fa fa-edit button" style="margin-left: 1em"></button></td>
                        </tr>
                        </tbody>
                    </table>
                </div>

            </div>
        </section>

        <!-- Three -->
        <section id="three">
            <div class="container">
                <h3>借阅管理</h3>
                <header>
                    <p style="margin-bottom: 0em">按书名查询：<input placeholder="书名" style="width: 10em"> &nbsp;按书索引号查询：<input placeholder="书索引号" style="width: 10em"></p>
                </header>
                <div style="text-align: right"><button class="fa fa-search button"></button></div>
                <div style="border: black 1px solid;height: 40em;width: 100%;overflow: auto;margin-top: 1em">
                    <table style="width: 100%;height: 100%; float: left;margin-bottom: 0px">
                        <thead style="text-align: left;border: black 1px solid;height: 10%">
                        <tr><th style="width: 15%;border-right: black 1px solid;border-bottom: black 1px solid">学生号</th><th style="width: 20%;border-right: black 1px solid;border-bottom: black 1px solid">书籍名称</th><th style="width:19%;border-right: black 1px solid;border-bottom: black 1px solid">借书时间</th><th style="width:19%;border-right: black 1px solid;border-bottom: black 1px solid">归还时间</th><th style="width:22%;border-right: black 1px solid;border-bottom: black 1px solid">操作</th></tr>
                        </thead>
                        <tbody style="height: 85%">
                        <tr style="border-bottom: black 1px solid">
                            <td>123456</td><td>JAVA</td><td>2019-2-2</td><td>2019-3-2</td><td><button class="fa fa-minus-square button" ></button><button class="fa fa-edit button" style="margin-left: 1em"></button></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>

    </div>

    <!-- Footer -->
    <section id="footer">
        <div class="container">
            <ul class="copyright">
                <li>&copy; WGXZ</li><li>Design:</li>
            </ul>
        </div>
    </section>

</div>
<%
    if(session.getAttribute("user")!="admin"){
        response.sendRedirect("./login/login.jsp");
    }
    request.setCharacterEncoding("utf-8");
%>

<!-- Scripts -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jquery.scrollzer.min.js"></script>
<script src="assets/js/jquery.scrolly.min.js"></script>
<script src="assets/js/skel.min.js"></script>
<script src="assets/js/util.js"></script>
<!--[if lte IE 8]><script src="/assets/js/ie/respond.min.js"></script><![endif]-->
<script src="assets/js/main.js"></script>

</body>
</html>
