<%-- 
    Document   : result
    Created on : May 23, 2026, 5:12:16 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile Result</title>
        
        <style>
            body{
                font-family: Arial;
                background-color: lavender;
            }
            
            .card{
                width: 500px;
                margin: auto;
                margin-top: 50px;
                background: white;
                padding: 20px;
                border-radius: 10px;
            }
            
            h2{
                text-align: center;
                color: darkblue;
            }
            
            p{
                font-size: 18px;
            }
        </style>
    </head>
    <body>
        
        <div class="card">
            
            <h2>Student Profile</h2>
            
            <p><b>Name:</b> <%=request.getAttribute("name")%></p>
            <p><b>Student ID:</b> <%=request.getAttribute("studentid")%></p>
            <p><b>Program:</b> <%=request.getAttribute("program")%></p>
            <p><b>Email:</b> <%=request.getAttribute("email")%></p>
            <p><b>Hobbies:</b> <%=request.getAttribute("hobbies")%></p>
            <p><b>Introduction:</b> <%=request.getAttribute("intro")%></p>
        </div>    
    </body>
</html>

