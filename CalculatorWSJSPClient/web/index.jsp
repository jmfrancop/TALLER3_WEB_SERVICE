<%-- 
    Document   : index
    Created on : 20/10/2017, 10:37:44 PM
    Author     : gleny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
      <%
    try {
        org.me.calculator.CalculatorWS_Service service = new org.me.calculator.CalculatorWS_Service();
        org.me.calculator.CalculatorWS port = service.getCalculatorWSPort();
         // TODO initialize WS operation arguments here
        int i = 3;
        int j = 4;
        // TODO process result here
        int result = port.add(i, j);
        out.println("Result = "+result);
    } catch (Exception ex) {
        // TODO handle custom exceptions here
        out.println("exception" + ex);
    }
    %>  
    </body>
</html>
