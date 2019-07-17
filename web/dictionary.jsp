<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: lekhachanh
  Date: 17/07/2019
  Time: 21:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<%
    Map<String, String> dictionary = new HashMap<>();
%>

<%
    dictionary.put("handsome", "đẹp trai");
    dictionary.put("book", "Quyển vở");
    dictionary.put("computer", "Máy tính");
    dictionary.put("city", "thành phố");
    dictionary.put("method", "phương thức");
    dictionary.put("big", "to lớn");
    dictionary.put("small", "nhỏ bé");

    String search = request.getParameter("dictionary");

    String result = dictionary.get(search);

    if (result != null) {
        out.println("Word: " + search);
        out.println("Result: " + result);
    }else {
        out.println("Not found");
    }

%>
</body>
</html>
