<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%   
            String name =(String)session.getAttribute("jawatan");  
            out.print("Hello "+name);  
        %>  
    </body>
</html>