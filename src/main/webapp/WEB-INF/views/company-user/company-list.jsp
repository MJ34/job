<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <meta charset="utf-8" />
    <title>PT. PUNKOOK INDONESIA ONE</title>

    <link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/jquery/css/jquery-ui.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css" type="text/css" />

    <script src="${contextPath}/resources/jquery/js/jquery-1.12.4.js"></script>
    <script src="${contextPath}/resources/jquery/js/jquery-ui.js"></script>
    <script src="${contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>

</head>
<body>


<jsp:include page="../company-user/navbar.jsp"/>

<div class="container table-responsive">
    <div class="row">
        <a class="btn btn-info btn-xs pull-right" href="${contextPath}/company/showFormForAdd" >
            <span class="glyphicon glyphicon-plus-sign"></span>
        </a>
    </div>
    <div class="row">
        <table id="example" class="display" style="width:100%">
            <thead>
            <tr>
                <th>Title</th>
                <th>Address</th>
                <th>No. Handphone</th>
                <th>Email</th>
                <th class="text-center">Operations</th>
            </tr>
            </thead>
            <tbody>
            <!-- loop over and print our books -->
            <c:forEach items="${companies}" var="company">

                <!-- construct an "update" link with book id -->
                <c:url var="updateLink" value="${contextPath}/company/showFormForEdit">
                    <c:param name="companyId" value="${company.id}" />
                </c:url>

                <!-- construct an "delete" link with book id -->
                <c:url var="deleteLink" value="${contextPath}/deleteBook">
                    <c:param name="companyId" value="${company.id}" />
                </c:url>

                <tr>
                    <td>
                        <c:out value="${company.title}" />
                    </td>
                    <td>
                        <c:out value="${company.address}" />
                    </td>
                    <td>
                        <c:out value="${company.tel}" />
                    </td>
                    <td>
                        <c:out value="${company.email}" />
                    </td>
                    <td class="text-center">
                        <a href="${updateLink}" class="btn btn-success btn-xs">
                            <span class="glyphicon glyphicon-edit"></span>
                        </a>
                        <a href="${deleteLink}"
                           onclick="return confirm('Are you sure you want to delete this?')"
                           class="btn btn-danger btn-xs">
                            <span class="glyphicon glyphicon-trash"></span>
                        </a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<script>
    $(document).ready(function () {
      $('#example').DataTable();
  });
    </script>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
  <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
</body>
</html>
