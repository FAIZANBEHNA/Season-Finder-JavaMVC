<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Season Result</title>
</head>
<body>

<!-- 🔝 Flex container for home icon + heading -->
<div style="display: flex; align-items: center; justify-content: space-between; padding: 10px;">
    <!-- Home icon on left -->
    <a href="./">
        <img alt="Home" src="https://cdn-icons-png.flaticon.com/512/10124/10124998.png" style="width: 50px; height: 60px;">
    </a>

    <!-- Heading on the same line -->
    <h1 style="color: red; margin: 0 auto; flex: 1; text-align: center;">Result Page</h1>

    <!-- Empty div to balance layout -->
    <div style="width: 50px;"></div>
</div>

<br>
<div style="text-align:center">
<h3>Season name:: ${resultMsg}</h3>

<%
String season = (String) request.getAttribute("resultMsg");
String imgUrl = "";

if ("Summer season".equalsIgnoreCase(season)) {
    imgUrl = "https://wordzz.com/wp-content/uploads/2023/04/Summer.jpeg";
} else if ("Rainy season".equalsIgnoreCase(season)) {
    imgUrl = "https://i.ytimg.com/vi/EKAZOi7eHfk/maxresdefault.jpg";
} else if ("Winter season".equalsIgnoreCase(season)) {
    imgUrl = "https://tse2.mm.bing.net/th/id/OIP.-txFgVccUzpl0_mJtn1BQwHaE7?r=0&rs=1&pid=ImgDetMain&o=7&rm=3";
}
%>

<!-- Show the selected image -->
<% if (!imgUrl.isEmpty()) { %>
    <img src="<%= imgUrl %>" width="500px" height="300px" alt="Season Image">
<% } else { %>
    <p>No image found for this season.</p>
<% } %>
</div>
</body>
</html>
