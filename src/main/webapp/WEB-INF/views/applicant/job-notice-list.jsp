<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <meta charset="utf-8"/>
    <title>PT. PUNKOOK INDONESIA ONE</title>

    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/jquery/css/jquery-ui.css">


    <script src="${contextPath}/resources/jquery/js/jquery-1.12.4.js"></script>
    <script src="${contextPath}/resources/jquery/js/jquery-ui.js"></script>
    <script src="${contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>

</head>
<body>


<jsp:include page="../applicant/navbar.jsp"/>

<div class="container table-responsive">
    <div class="row">
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>Title</th>
                <th>Company Title</th>
                <th>Position</th>
                <th>Vacancy</th>
                <th>Employment Type</th>
                <th>General Qualifications</th>
                <th>Number of Applicants</th>
                <th>Application Status</th>
                <th>Applicant Date</th>
                <th class="text-center">Application Procedures</th>
            </tr>
            </thead>
            <tbody>
            <!-- loop over and print our books -->
            <c:forEach items="${jobNotices}" var="vm">

                <!-- construct an "update" link with book id -->
                <c:url var="applyLink" value="${contextPath}/applicant/applyJobNotice">
                    <c:param name="id" value="${vm.jobNotice.id}"/>
                </c:url>

                <!-- construct an "delete" link with book id -->
                <c:url var="cancelApplyLink" value="${contextPath}/deleteJobs">
                    <c:param name="id" value="${vm.jobNotice.id}"/>
                </c:url>

                <tr>
                    <td>
                        <c:out value="${vm.jobNotice.jobTitle}"/>
                    </td>
                    <td>
                        <c:out value="${vm.jobNotice.company.title}"/>
                    </td>
                    <td>
                        <c:out value="${vm.jobNotice.position}"/>
                    </td>
                    <td>
                        <c:out value="${vm.jobNotice.numOfBeTaken}"/>
                    </td>
                    <td>
                        <c:out value="${vm.jobNotice.workType}"/>
                    </td>
                    <td>
                        <c:out value="${vm.jobNotice.explanation}"/>
                    </td>
                    <td>
                        <c:out value="${vm.jobNotice.jobApplies.size()}"/>
                    </td>
                    <td>
                        <c:out value="${vm.appliedTxt}"/>
                    </td>
                    <td>
                        <c:out value="${vm.applyDate}"/>
                    </td>

                    <td class="text-center">
                        <c:if test="${vm.isApplied()==false}">
                            <a href="${applyLink}" class="btn btn-success btn-xs">
                                <span class="glyphicon glyphicon glyphicon-log-in"></span>
                            </a>
                        </c:if>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
