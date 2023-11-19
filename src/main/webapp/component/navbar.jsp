<%@page import="com.entity.User"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <a class="navbar-brand" href="index.jsp"><i class="fa-solid fa-square-phone"></i> PhoneBook</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#"><i class="fa-solid fa-house"></i> Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="addContact.jsp"><i class="fa-solid fa-user-plus"></i> Add</a>
      </li>
      
      <li class="nav-item active">
        <a class="nav-link disabled" href="viewContact.jsp"><i class="fa-solid fa-eye"></i> Contacts</a>
      </li>
    </ul>
    <%
    User user = (User) session.getAttribute("user");
    if(user == null){
    %>
    <form class="form-inline my-2 my-lg-0">
      <a href="login.jsp" class="btn btn-success"><i class="fa-solid fa-right-to-bracket"></i> Login</a>
      <a href="register.jsp" class="btn btn-danger ml-3"><i class="fa-solid fa-user-tie"></i> Register</a>
    </form>
    <%
    }else{
    %>
    <form class="form-inline my-2 my-lg-0">
     <button class="btn btn-success"><%=user.getName()%></button>
     <a href="logout" class="btn btn-danger ml-2"  data-toggle="modal" data-target="#staticBackdrop">Logout</a>
    </form>
    <%
    }
    %>
  </div>
  <!-- Logout Popup -->
    <!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body text-center">
        <h6>Do you want Logout ? </h6>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <a href="logout" type="button" class="btn btn-primary">Logout</a >
      </div>
      <div class="modal-footer">
        
      </div>
    </div>
  </div>
</div>


</nav>