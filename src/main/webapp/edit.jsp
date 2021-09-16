<!doctype html>
<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
	<link href="css/style.css" rel="stylesheet"/>	
    <title>Edit Your Note</title>
  </head>
  <body>
   <div class="container">
   <%@ include file="navbar.jsp" %>
   <%
   int noteId=Integer.parseInt(request.getParameter("note_id").trim());
   Session s= FactoryProvider.getFactory().openSession();
	
	Note note=(Note)s.get(Note.class,noteId);
   %>
    <form action="UpdateServlet" method="post">
    <input value="<%= note.getId() %>" name="noteId" type="hidden"/>
  <div class="mb-3">
    <label for="title">Note title</label>
    <input name="title" type="text" class="form-control" id="title" required aria-describedby="emailHelp" placeholder="Enter here" 
    value="<%= note.getTitle() %>	">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3">
    <label for="content" class="form-label">Note Content</label>
    <textarea name="content" style="height:300px;" id="content" required class="form-control" placeholder="Enter your content here" ><%= note.getContent() %></textarea>
  </div>
 <div class="container text-center">
  <button type="submit" class="btn btn-success">Save Your Note</button>
  </div>
 
</form>
   </div>
	

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>

  </body>
</html>