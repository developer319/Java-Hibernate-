<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
	<link href="css/style.css" rel="stylesheet"/>	
<title>All notes: Note Taker</title>
</head>
<body>
<div class="container">
   <%@ include file="navbar.jsp" %>
   <br>
   <h1 class="text-uppercase">All Notes:</h1>
   <div class="row">
   <div class="col">
   
    <%
   Session s=FactoryProvider.getFactory().openSession();
   Query q=s.createQuery("from Note");
   List<Note> list=q.list();
   for(Note note:list)
   {
	   
	  %>
	  <div class="card mt-3">
  <img src="img/notes.png" style="max-width:100px" class="card-img-top m-4 mx-auto" alt="...">
  <div class="card-body px-5">
  <h5 class="card-title ml-4"><%= note.getTitle() %></h5>
    <p class="card-text ml-4"><%= note.getContent() %></p>
    <div class="container text-center">
    <a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a>
    <a href="#" class="btn btn-primary">Update</a>
    </div>
  </div>
</div>
	  <% 
	  
   }
   s.close();
   %>
   </div>
   </div>
  
  </div>
 
</form>
   </div>
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>

</body>
</html>