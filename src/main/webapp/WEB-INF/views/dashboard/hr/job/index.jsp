<jsp:include page="../layout/header.jsp"/>

<div class="container table-responsive">
    <div class="row">
        <a class="btn btn-info btn-sm pull-right" href="${contextPath}/company/job-notices/showFormForAdd" >
            <span class="glyphicon glyphicon-plus-sign"></span>
        </a>
    </div>
    <div class="row">
        <table class="table table-bordered">
            <caption>
               Job Postings
            </caption>
            <thead>
            <tr>
                <th>Title</th>
                <th>Company Title</th>
                <th>Position</th>
                <th>Vacancy</th>
                <th>Employment Type</th>
                <th>General Qualifications</th>
                <th>Number of Applicants</th>
                <th class="text-center">List Applicants</th>
                <th class="text-center">Action</th>
            </tr>
            </thead>
            <tbody>
            <!-- loop over and print our books -->
            <c:forEach items="${jobNotices}" var="jobNotice">

                <!-- construct an "update" link with book id -->
                <c:url var="showApplicantLink" value="${contextPath}/company/job-notices/showApplicants">
                    <c:param name="id" value="${jobNotice.id}" />
                </c:url>



                <!-- construct an "update" link with book id -->
                <c:url var="updateLink" value="${contextPath}/company/job-notices/showFormForEdit">
                    <c:param name="id" value="${jobNotice.id}" />
                </c:url>

                <!-- construct an "delete" link with book id -->
                <c:url var="deleteLink" value="${contextPath}/company/job-notices/delete">
                    <c:param name="id" value="${jobNotice.id}" />
                </c:url>

                <tr>
                    <td>
                        <c:out value="${jobNotice.jobTitle}" />
                    </td>
                    <td>
                        <c:out value="${jobNotice.company.title}" />
                    </td>
                    <td>
                        <c:out value="${jobNotice.position}" />
                    </td>
                    <td>
                        <c:out value="${jobNotice.numOfBeTaken}" />
                    </td>
                    <td>
                        <c:out value="${jobNotice.workType}" />
                    </td>
                    <td>
                        <c:out value="${jobNotice.explanation}" />
                    </td>
                    <td>
                        <c:out value="${jobNotice.jobApplies.size()}"/>
                    </td>
                    <td>
                        <a href="${showApplicantLink}" class="btn btn-link">
                            Show
                        </a>
                    </td>
                    <td class="text-center">
                        <a href="${updateLink}" class="btn btn-success btn-sm">
                            <span class="glyphicon glyphicon-edit"></span>
                        </a>
                        <a href="${deleteLink}"
                           onclick="return confirm('Are you sure you want to delete this?')"
                           class="btn btn-danger btn-sm">
                            <span class="glyphicon glyphicon-trash"></span>
                        </a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<jsp:include page="../layout/footer.jsp"/>