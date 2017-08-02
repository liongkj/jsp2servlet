<%-- 
    Document   : fisrtjsp
    Created on : Jul 26, 2017, 12:15:30 PM
    Author     : lecturer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>First Page</title>
    </head>
        <form method="POST">
            <table>
                <tr>
                    <td>
                        User Name:
                    </td> 
                    <td>
                        <input type="text" name="userName" size="20">
                    </td>
                </tr>
                <tr>
                    <td>
                        Password:
                    </td> 
                    <td>
                        <input type="text" name="password" size="20">
                    </td>
                </tr>
            </table>
            <p>
                <input type="submit" value="Submit">
            </p>
        </form>
        <%    
            if ( request.getParameter("userName") != null && request.getParameter("userName").length() > 0 ) {
                if( Integer.parseInt(request.getParameter("password"))==12345 ) {
        %>
            <jsp:forward page="Welcome" />
            
        <%
                } else{
        %>
            <jsp:include page="Wrong" />
        <%
                }
            }
        %>
    </body>
</html>
