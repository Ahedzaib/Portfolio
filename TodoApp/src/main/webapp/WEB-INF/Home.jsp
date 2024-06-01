<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title><c:out value="${page}" /></title>
   <style>
   
   body{
   		background: #f8f9fa;
   }
   
   .navbar-brabd{
   
   color: #fff !important;
   }
   
   .list-group-item.active{
   background-color: #007bffl
  
   
   }
   
   .card{
   margin-top : 1rem;
   box-shadow: 0 4px 8px rgba(0,0,0,0.1);
   
   }
   
   .card-title{
   color:  #007bff;
   }
   
   .btn-success {
   background-color: #28a745;
   border-color:  #28a745;
   }
   
   .btn-success:hover{
   background-color: #218838;
   border-color: #1e7e34;
   }
   
   </style>
   
   
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light">
        <a class="navbar-brand" href="#">ToDO Manager</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link text-light" href="<c:url value='/add'/>">Add ToDo</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-light" href="<c:url value='/home'/>">View ToDo</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container mt-5">
        <h1 class="text-center text-primary">Welcome to ToDO Manager</h1>

        <c:if test="${not empty msg}">
            <div class="alert alert-success mt-4">
                <b><c:out value="${msg}"></c:out></b>
            </div>
        </c:if>

         <div class="row mt-5 justify-content-center">
            <div class="col-md-4">
                <div class="list-group">
                    <button type="button" class="list-group-item list-group-item-action active">Menu</button>
                    <a href="<c:url value='/add'/>" class="list-group-item list-group-item-action">Add ToDo</a>
                    <a href="<c:url value='/home'/>" class="list-group-item list-group-item-action">View Todo</a>
                </div>
            </div>
            <div class="col-md-6">
                <c:if test="${page == 'home'}">
                    <h2 class="text-center text-info">All ToDos</h2>
                    <c:forEach items="${todos}" var="t">
                        <div class="card">
                            <div class="card-body">
                                <h3 class="card-title"><c:out value="${t.todoTitle}"></c:out></h3>
                                <p class="card-text"><c:out value="${t.todoContent}"></c:out></p>
                            </div>
                        </div>
                    </c:forEach>
                </c:if>

                <c:if test="${page == 'add'}">
                    <h2 class="text-center text-success">Add ToDO</h2>
                    <form:form action="saveTodo" method="post" modelAttribute="todo" class="mt-4">
                        <div class="form-group">
                            <form:input path="todoTitle" class="form-control" placeholder="Enter your title" />
                        </div>
                        <div class="form-group">
                            <form:textarea path="todoContent" class="form-control" placeholder="Enter value of todoContent" cssStyle="height: 250px" />
                        </div>
                        <div class="text-center">
                            <button class="btn btn-success">Add ToDO</button>
                        </div>
                    </form:form>
                </c:if>
            </div>
        </div>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
