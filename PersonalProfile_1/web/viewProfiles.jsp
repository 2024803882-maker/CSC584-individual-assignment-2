<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <title>View Profiles</title>
    <style>
        body {
            font-family: Arial;
            background-color: #eeeeff;
        }

        h1 {
            text-align: center;
            color: navy;
        }

        table {
            width: 90%;
            margin: auto;
            border-collapse: collapse;
            background: white;
        }

        th, td {
            border: 1px solid gray;
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: navy;
            color: white;
        }
    </style>
</head>
<body>

<h1>All Student Profiles</h1>

<table>
    <tr>
        <th>Student ID</th>
        <th>Name</th>
        <th>Program</th>
        <th>Email</th>
        <th>Hobbies</th>
        <th>Introduction</th>
        <th>Action</th>
    </tr>

<%
try {
    Class.forName("org.apache.derby.jdbc.ClientDriver");

    Connection con = DriverManager.getConnection(
        "jdbc:derby://localhost:1527/StudentProfilesDB",
        "app",
        "app"
    );

    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT * FROM Profile");

    while (rs.next()) {
%>

    <tr>
        <td><%= rs.getString("studentID") %></td>
        <td><%= rs.getString("studentName") %></td>
        <td><%= rs.getString("programme") %></td>
        <td><%= rs.getString("email") %></td>
        <td><%= rs.getString("hobbies") %></td>
        <td><%= rs.getString("introduction") %></td>
        <td>
            <a href="DeleteServlet?studentid=<%= rs.getString("studentID") %>">Delete</a>
        </td>
    </tr>

<%
    }

    con.close();

} catch (Exception e) {
    out.println(e);
}
%>

</table>

</body>
</html>