<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="" />
                <meta name="author" content="" />
                <title>Dashboard - SB Admin</title>
                <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
                <link href="/css/styles.css" rel="stylesheet" />
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                <script>
                    $(document).ready(() => {
                        const avatarFile = $("#avatarFile");
                        avatarFile.change(function (e) {
                            const imgURL = URL.createObjectURL(e.target.files[0]);
                            $("#avatarPreview").attr("src", imgURL);
                            $("#avatarPreview").css({ "display": "block" });
                        });
                    });
                </script>
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
            </head>

            <body class="sb-nav-fixed">
                <jsp:include page="../layout/header.jsp" />
                <div id="layoutSidenav">
                    <jsp:include page="../layout/sidebar.jsp" />
                    <div id="layoutSidenav_content">
                        <main>
                            <div class="container-fluid px-4">
                                <h1 class="mt-4">Dashboard</h1>
                                <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item active">Dashboard</li>
                                </ol>
                                <div class="container mt-5">
                                    <div class="row">
                                        <div class="col-md-6 col-12 mx-auto">
                                            <h3>Create a user</h3>
                                            <hr>
                                            <form:form action="/admin/user/create" method="post"
                                                modelAttribute="newUser" class="row" enctype="multipart/form-data">
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label class="form-label" for="">Email</label>
                                                    <form:input type="email" path="email"
                                                        class="is-invalid form-control" />
                                                    <form:errors path="email" cssClass="invalid-feedback" />
                                                </div>
                                                <div class="mb-3 col-12 col-md-6">
                                                    <c:set var="errorPassword">
                                                        <form:errors path="password" cssClass="invalid-feedback" />
                                                    </c:set>
                                                    <label class="form-label" for="">password</label>
                                                    <form:input type="password"
                                                        class="form-control ${not empty errorPassword? 'is-invalid':''}"
                                                        path="password" />
                                                    ${errorPassword}
                                                </div>
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label class="form-label" for="">phone number</label>
                                                    <form:input type="text" path="phone" class="form-control" />
                                                </div>
                                                <div class="mb-3 col-12 col-md-6">
                                                    <c:set var="errorFullname">
                                                        <form:errors path="fullname" cssClass="invalid-feedback" />
                                                    </c:set>
                                                    <label class="form-label" for="">full name</label>
                                                    <form:input type="text" path="fullname"
                                                        class="form-control ${not empty errorFullname? 'is-invalid':''}" />
                                                    ${errorFullname}
                                                </div>
                                                <div class="mb-3 col-12">
                                                    <label class="form-label" for="">address</label>
                                                    <form:input type="text" path="address" class="form-control" />
                                                </div>
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label class="form-label" for="">full name</label>
                                                    <form:input type="text" path="fullname" class="form-control" />
                                                </div>
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label class="form-label" for="">Role</label>
                                                    <form:select class="form-select" path="role.name">

                                                        <form:option value="ADMIN">ADMIN</form:option>
                                                        <form:option value="USER">USER</form:option>

                                                    </form:select>
                                                </div>
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label for="avatarFile" class="form-label">Avatar</label>
                                                    <input class="form-control" type="file" id="avatarFile"
                                                        name="hoidanitFile" accept=".png, .jpg, .jpeg">
                                                </div>
                                                <div class="mb-3 col-12">
                                                    <img style="max-height: 250px; display: none;" alt="avatar preview"
                                                        id="avatarPreview" />
                                                </div>
                                                <button type="submit" class=" btn btn-warning">create</button>
                                            </form:form>

                                        </div>
                                    </div>

                                </div>

                            </div>
                        </main>
                        <jsp:include page="../layout/footed.jsp" />
                    </div>
                </div>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                    crossorigin="anonymous"></script>
                <script src="js/scripts.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
                    crossorigin="anonymous"></script>
                <script src="js/chart-area-demo.js"></script>
                <script src="js/chart-bar-demo.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
                    crossorigin="anonymous"></script>
                <script src="js/datatables-simple-demo.js"></script>
            </body>

            </html>