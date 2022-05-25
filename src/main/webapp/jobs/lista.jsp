<%@ page import="com.example.clase10iweb.beans.BJob" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="listaTrabajos" scope="request" type="java.util.ArrayList<com.example.clase10iweb.beans.BJob>" />
<jsp:useBean id="saludo" scope="request" type="java.lang.String" />
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <h1>saludo desde el controller: <%=saludo %>
        </h1>
        <a href="<%=request.getContextPath()%>/hello-servlet">ir a hello servlet</a>
        <table>
            <thead>
                <tr>
                    <th>#</th>
                    <th>Job id</th>
                    <th>Job title</th>
                    <th>Min salary</th>
                    <th>Max salaru</th>
                </tr>
            </thead>
            <tbody>
                <% int i = 1;
                    for (BJob job : listaTrabajos) { %>
                <tr>
                    <td><%=i %></td>
                    <td><%=job.getJobId() %></td>
                    <td><%=job.getJobTitle() %></td>
                    <td><%=job.getMinSalary() %></td>
                    <td><%=job.getMaxSalary() %></td>
                </tr>
                <% i++;
                } %>
            </tbody>
        </table>
    </body>
</html>
