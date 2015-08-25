<%-- 
    Document   : index
    Created on : Aug 25, 2015, 8:56:17 AM
    Author     : Nirodya Gamage
--%>

<%@page import="model.Users"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello PAKAYA!</h1>
        <form action="ProcessUser" method="post">
            <input type="number" name="id" /><input type="text" name="name" value="" />
            <input type="submit" value="Save" />
        </form>
        <table style="float: left">
            <%
                if (request.getSession().getAttribute("users") != null) {
                    ArrayList<Users> ar = (ArrayList<Users>) request.getSession().getAttribute("users");
                    for (Users user : ar) {
                        if (user.isIsLeft()) {

            %>
            <tr>
                <td><%= user.getId()%></td>
                <td><%= user.getName()%></td>
                <td><form action="ChangeDirection" method="post">
                        <input type="hidden" name="id" value="<%= user.getId()%>" />
                        <input type="hidden" name="position" value="1" />
                        <input type="submit" value=">>" />
                    </form></td>
            </tr>
            <%
                        }
                    }
                }
            %>
        </table>

        <table style="float: right">
            <%
                if (request.getSession().getAttribute("users") != null) {
                    ArrayList<Users> ar = (ArrayList<Users>) request.getSession().getAttribute("users");
                    for (Users user : ar) {
                        if (!user.isIsLeft()) {

            %>
            <tr>
                <td><%= user.getId()%></td>
                <td><%= user.getName()%></td>
                <td><form action="ChangeDirection" method="post">
                        <input type="hidden" name="id" value="<%= user.getId()%>" />
                        <input type="hidden" name="position" value="0" />
                        <input type="submit" value="<<" />
                    </form></td>
            </tr>

            <%
                        }
                    }
                }
            %>
    </body>
</table>
</html>
