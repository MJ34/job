<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <meta charset="utf-8" />
    <title>PT. PUNKOOK INDONESIA ONE</title>

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
                <strong>My information</strong>
            </div>

            <div class="panel-body">
                <form:form class="form-horizontal"  modelAttribute="applicantInfo">
                    <!-- need to associate this data with book id -->
                    <form:hidden path="id" />
                    <form:hidden path="userId" />
                    <div class="form-group">
                        <label class="col-sm-4 col-md-3 col-lg-3 control-label">Firstname</label>
                        <div class="col-sm-8 col-md-6 col-lg-5">
                            <form:input type="text" disabled="true" class="form-control" path="user.firstname"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-4 col-md-3 col-lg-3 control-label">Lastname</label>
                        <div class="col-sm-8 col-md-6 col-lg-5">
                            <form:input type="text" disabled="true" class="form-control"  path="user.lastname"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-4 col-md-3 col-lg-3 control-label">Email</label>
                        <div class="col-sm-8 col-md-6 col-lg-5">
                            <form:input type="text" disabled="true" class="form-control" path="user.mail"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-4 col-md-3 col-lg-3 control-label">No. Handphone</label>
                        <div class="col-sm-8 col-md-6 col-lg-5">
                            <form:input type="text" disabled="true" class="form-control" id="tel" path="tel"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-4 col-md-3 col-lg-3 control-label">Education Status</label>
                        <div class="col-sm-8 col-md-6 col-lg-5">
                            <form:input type="text" disabled="true" class="form-control" id="educationStatus" path="educationStatus"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4 col-md-3 col-lg-3 control-label">Last School</label>
                        <div class="col-sm-8 col-md-6 col-lg-5">
                            <form:input type="text" disabled="true" class="form-control" id="theLastSchool" path="theLastSchool"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4 col-md-3 col-lg-3 control-label">Experience</label>
                        <div class="col-sm-8 col-md-6 col-lg-5">
                            <form:input type="text" disabled="true" class="form-control" id="experience" path="experience"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-4 col-md-3 col-lg-3 control-label">Sertifikat Info</label>
                        <div class="col-sm-8 col-md-6 col-lg-5">
                            <form:input type="text" disabled="true" class="form-control" id="certificateInfo" path="certificateInfo"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-4 col-md-3 col-lg-3 control-label">General Info</label>
                        <div class="col-sm-8 col-md-6 col-lg-5">
                            <form:input type="text" disabled="true" class="form-control" id="generalInfo" path="generalInfo"/>
                        </div>
                    </div>
                    <br/>
                </form:form>
            </div>
        </div>
    </div>
</div>

</body>
</html>
