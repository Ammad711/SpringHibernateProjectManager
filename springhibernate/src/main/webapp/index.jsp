<!-- <html>
<body>
<h2>Hello World!</h2>
<h1>This is my homepage!</h1>
<a href="/springhibernate/home">GO TO HOME</a>
</body>
</html> -->
<% 
response.sendRedirect(request.getContextPath()+"/home");
%>