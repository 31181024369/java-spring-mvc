<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="utf-8" />
                    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                    <meta name="description" content="" />
                    <meta name="author" content="" />
                    <title>Dashboard - SB Admin</title>
                    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css"
                        rel="stylesheet" />
                    <link href="/css/styles.css" rel="stylesheet" />
                    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
                        crossorigin="anonymous"></script>
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>


                </head>

                <body class="sb-nav-fixed">
                    <jsp:include page="../layout/header.jsp" />
                    <div id="layoutSidenav">
                        <jsp:include page="../layout/sidebar.jsp" />
                        <div id="layoutSidenav_content">
                            <main>
                                <div class="container-fluid px-4">
                                    <h1 class="mt-4">Update Order</h1>
                                    <ol class="breadcrumb mb-4">
                                        <li class="breadcrumb-item active">Update Order</li>
                                    </ol>
                                    <div class="container mt-5">
                                        <div class="row">
                                            <div class="col-md-6 col-12 mx-auto">
                                                <h3>>Update Order</h3>
                                                <hr>
                                                <form:form action="/admin/order/update" method="post"
                                                    modelAttribute="newOrder" class="row" enctype="multipart/form-data">

                                                    <div class="mb-3" style="display: none;">
                                                        <label class="form-label">Id:</label>
                                                        <form:input type="text" class="form-control" path="id" />
                                                    </div>


                                                    <div class="mb-3 col-12 col-md-6">
                                                        Order id= ${newOrder.id}


                                                    </div>
                                                    <div class="mb-3 col-12 col-md-6">
                                                        Price :
                                                        <fmt:formatNumber type="number"
                                                            value="${newOrder.totalPrice}" /> đ
                                                    </div>

                                                    <div class="mb-3 col-12 col-md-6">
                                                        <label class="form-label" for="">User:</label>
                                                        <form:input type="text" path="user.fullname"
                                                            class="form-control" disabled="true" />

                                                    </div>




                                                    <div class="mb-3 col-12 col-md-6">
                                                        <label class="form-label" for="">Status:</label>

                                                        <form:select class="form-select" path="status">

                                                            <form:option value="PEMDING">PEMDING</form:option>
                                                            <form:option value="SHIPPING">SHIPPING</form:option>
                                                            <form:option value="COMPLETE">COMPLETE</form:option>
                                                            <form:option value="CANCEL">CANCEL</form:option>

                                                        </form:select>
                                                    </div>

                                                    <div class="col-12 mb-5">
                                                        <button type="submit" class=" btn btn-warning">Update</button>
                                                    </div>

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