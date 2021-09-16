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
<title>Add Notes</title>
</head>
<body>
 <div class="container">
   <%@ include file="navbar.jsp" %>
   <br>
   <h1>Please fill your note detail</h1>
   <form action="SaveNoteServlet" method="post">
  <div class="mb-3">
    <label for="title">Note title</label>
    <input name="title" type="text" class="form-control" id="title" required aria-describedby="emailHelp" placeholder="Enter here">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3">
    <label for="content" class="form-label">Note Content</label>
    <textarea name="content" style="height:300px;" id="content" required class="form-control" placeholder="Enter your content here"></textarea>
  </div>
 <div class="container text-center">
  <button type="submit" class="btn btn-primary">Add</button>
  </div>
 
</form>
   </div>
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
	
</body>
</html>