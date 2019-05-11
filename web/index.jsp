<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Apaga Arquivo </title>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">Aula Programação Web</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Principal</a></li>
                    <li><a href="#">Página 1</a></li>
                    <li><a href="#">Página 2</a></li>
                    <li><a href="#">PPágina 3</a></li>
                </ul>
            </div>
        </nav>
      
        <div class="container">
            <h4 align="center">Excluir dados com Bootstrap JSP & MySQL</h4>
        <div class="row">
            <div class="col-lg-10">
                <div class="panel panel-default">
                <div class="panel-heading">
                   Registros do Banco de Dados: 
                </div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>Usuários Cadastrados</th>
                                    
                                </tr>
                            </thead>
                            <%
                                try
                                {
                                    Class.forName("com.mysql.jdbc.Driver"); //load driver
                                   // Connection con=DriverManager.getConnection(dburl,dbusername,dbpassword); //create connection
                                     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/aula_jsp","root","");
                                    PreparedStatement pstmt=null; //create statement 
                                    
                                    pstmt=con.prepareStatement("SELECT * FROM login"); //sql select query
                                    ResultSet rs=pstmt.executeQuery();
                                    
                                    while(rs.next())
                                    {
                            %>
                            <tbody>
                                <tr>
                                    <td><%=rs.getString("firstname")%></td>                                   
                                </tr>
                            </tbody>
                            <%
                                    }
                                }
                                catch(Exception e)
                                {
                                    e.printStackTrace();
                                }
                            %>
                        </table>
                    </div>
                    </div>        
                </div>
                </div>
        </div>
        </div>

    </body>
</html>
