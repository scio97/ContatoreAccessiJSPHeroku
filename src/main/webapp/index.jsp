<html>
<head>
    <title>Contatore JSP</title>
</head>
<body>
    <h1>Contatore accessi JSP</h1>
    <%
        Integer cont = (Integer)session.getAttribute("cont");
        if(cont == null) {
            out.println("<h3>Accesso numero: 1</h3>");
            cont = 2;
        } 
        else {
            out.println("<h3>Accesso numero: "+cont+"</h3>");
            cont++;
        }
        session.setAttribute("cont", cont);
    %>
</body>
</html>