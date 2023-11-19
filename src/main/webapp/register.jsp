<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="component/allCSS.jsp" %>
</head>
<body style="background-color: #f7faf8">
     <%@include file="component/navbar.jsp" %>
     <div class="container-fluid">
     <div class="row p-2">
     <div class="col-md-4 offset-md-4">
     <div class="card">
     <div class="card-body">
     <h4 class="text-center text-success">Registration Page</h4>
     
     <%
     String successMsg = (String) session.getAttribute("successMsg");
     String errorMsg = (String) session.getAttribute("errorMsg");
     if(successMsg != null){
     %>
     <p class="text-success text-center"><%=successMsg%></p>
     <%
     session.removeAttribute("successMsg");
     }
     if(errorMsg != null){
     %>
     <p class="text-danger text-center"><%=errorMsg %></p>
     <%
     session.removeAttribute("errorMsg");
     }
     %>
     
 <form action="register" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">User Name</label>
    <input name="name" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" >
  </div>  
  <div class="form-group">
    <label for="exampleInputEmail1">Email</label>
    <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" >
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input name="password" type="password" class="form-control" id="exampleInputPassword1" >
  </div>
  <div class="text-center">
  <button type="submit" class="btn btn-primary">Register</button>
  </div>
</form>
     </div>
     </div>
     </div>
     </div>
     </div>
<div style="margin-top: 60px">
<%@include file="component/footer.jsp" %>
</div>   
</body>
</html>