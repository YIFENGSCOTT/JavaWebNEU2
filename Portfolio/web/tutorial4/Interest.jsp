<%--
  Created by IntelliJ IDEA.
  User: sunyifeng
  Date: 2020/6/19
  Time: 7:41 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Yifeng.Interest</title>
    <link rel="import" href="navigation_bar.html" id="bar">
    <link rel="stylesheet" type="text/css" href="../css/PagesCSS.css">

</head>
<body>
<iframe   src="navigation_bar.jsp" width="100%" height="auto" frameborder="0" name="bar" scrolling="no">
</iframe>
<br style="margin-bottom: 10px">
<h1 style="margin-left: 10%">My interests</h1>
<div class="bigBox">
    <iframe class="descriptionIFrame" src="nobar_Interest.jsp" width="100%" height="auto" frameborder="0" name="bar" scrolling="no">
    </iframe>
</div>
<iframe class="footerFrame" src="footer.jsp" width="100%" height="auto" frameborder="0" name="bar" scrolling="no">
</iframe>
</body>
</html>