<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <!-- Latest compiled and minified CSS -->
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
     rel="stylesheet">
     <!-- Latest compiled JavaScript -->
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
 
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <title>Document</title>
</head>
<body>
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-6 col-12 mx-auto">
                <h3>Create a user</h3>
                <hr>
                <form:form action="/admin/user/create1" method="post" modelAttribute="newUser">
                    <div class="mb-3">
                        <label class="form-label" for="">Email</label>
                        <form:input type="email" path="email" class="form-control" />
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="">password</label>
                        <form:input type="password" path="password" class="form-control" />
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="">phone number</label>
                        <form:input type="text" path="phone" class="form-control" />
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="">full name</label>
                        <form:input type="text" path="fullname" class="form-control" />
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="">address</label>
                        <form:input type="text" path="address" class="form-control" />
                    </div>
                    <button type="submit" class=" btn btn-warning">create</button>
                </form:form>

            </div>
        </div>
       
    </div>
</body>
</html>