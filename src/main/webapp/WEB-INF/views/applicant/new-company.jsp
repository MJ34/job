<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <meta charset="utf-8" />
    <title>Şirket Tanımlama</title>

    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/jquery/css/jquery-ui.css">


    <script src="${contextPath}/resources/jquery/js/jquery-1.12.4.js"></script>
    <script src="${contextPath}/resources/jquery/js/jquery-ui.js"></script>
    <script src="${contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>


</head>
<body>
<jsp:include page="../company-user/navbar.jsp"/>
<div class="row">
    <div class="col-lg-5 col-lg-offset-3">
        <div class="panel panel-default">
            <div class="panel-heading">
                <strong>Company information</strong>
            </div>

            <div class="panel-body">
                <form:form class="form-horizontal" action="${pageContext.request.contextPath}/company/saveCompany" modelAttribute="newCompany">
                    <!-- need to associate this data with book id -->
                    <form:hidden path="id" />
                    <div class="form-group">
                        <label class="col-sm-4 col-md-3 col-lg-3 control-label">Title</label>
                        <div class="col-sm-8 col-md-6 col-lg-5">
                            <form:input type="text" class="form-control" id="title" path="title"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-4 col-md-3 col-lg-3 control-label">Address</label>
                        <div class="col-sm-8 col-md-6 col-lg-5">
                            <form:input type="text" class="form-control" id="address" path="address"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-4 col-md-3 col-lg-3 control-label">Email</label>
                        <div class="col-sm-8 col-md-6 col-lg-5">
                            <form:input type="text" class="form-control" id="email" path="email"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-4 col-md-3 col-lg-3 control-label">No. Handphone</label>
                        <div class="col-sm-8 col-md-6 col-lg-5">
                            <form:input type="text" class="form-control" id="tel" path="tel"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-4 col-md-3 col-lg-3 control-label">Website Url</label>
                        <div class="col-sm-8 col-md-6 col-lg-5">
                            <form:input type="text" class="form-control" id="webSiteUrl" path="webSiteUrl"/>
                        </div>
                    </div>

                    <!-- <div class="form-group">
                        <label class="col-sm-4 col-md-3 col-lg-3 control-label">Number of Designers</label>
                        <div class="col-sm-8 col-md-6 col-lg-5">
                            <form:input type="text" class="form-control" id="numOfDesigner" path="numOfDesigner"/>
                        </div>
                    </div> -->

                    <br/>
                    <div class="form-group">
                        <div class="col-sm-offset-4 col-md-offset-3 col-lg-offset-3 col-sm-8 col-md-9 col-lg-9">
                            <button type="clear" class="btn btn-primary">Cancel</button>
                            <button type="submit" class="btn btn-primary">Save</button>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>

</body>
</html>
