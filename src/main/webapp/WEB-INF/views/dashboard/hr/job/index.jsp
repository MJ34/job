<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<jsp:include page="../layout/header.jsp"/>
</style>
<main class="main-content position-relative border-radius-lg ">
    <!-- Navbar -->
    <!-- Navbar -->
        <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-lg border-radius-xl " id="navbarBlur" data-scroll="false">
          <div class="container-fluid py-1 px-3">
            <nav aria-label="breadcrumb">
              <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
                <li class="breadcrumb-item text-sm"><a class="opacity-5 text-white" href="javascript:;">Pages</a></li>
                <li class="breadcrumb-item text-sm text-white active" aria-current="page">Test</li>
              </ol>
              <h6 class="font-weight-bolder text-white mb-0">Math Test</h6>
            </nav>
            <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
              <div class="ms-md-auto pe-md-3 d-flex align-items-center">

              </div>
              <ul class="navbar-nav justify-content-end">
                <!-- <li class="nav-item d-flex align-items-center">
                  <a href="/login/logout" class="nav-link text-white font-weight-bold px-0">
                    <i class="fa-solid fa-power-off me-sm-1"></i>
                    <span class="d-sm-inline d-none">Sign Out</span>
                  </a>
                </li> -->
                <li class="nav-item d-xl-none ps-3 d-flex align-items-center">
                  <a href="javascript:;" class="nav-link text-white p-0" id="iconNavbarSidenav">
                    <div class="sidenav-toggler-inner">
                      <i class="sidenav-toggler-line bg-white"></i>
                      <i class="sidenav-toggler-line bg-white"></i>
                      <i class="sidenav-toggler-line bg-white"></i>
                    </div>
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </nav>
    <!-- End Navbar -->
    <div class="container-fluid py-4">
      <div class="card shadow mb-4">
          <div class="card-header py-3">
                  <div class="table-title">
                          <div class="col-sm-8"><h2><b> Job Vacancy </b></h2></div>
                          <div class="row">
                          <div class="col-sm-8">
                          </div>
                          <div class="col-sm-4">
                            <a class="btn bg-gradient-dark mb-0" href="${contextPath}/company/job-notices/showFormForAdd"><i class="fas fa-plus"></i>&nbsp;&nbsp;Add New Job</a>
                          </div>
                      </div>
                  </div>
                  <table id="example" class="display" style="width:100%">
                    <thead>
                        <tr>
                            <th>Title</th>
                            <th>Position</th>
                            <th>Vacancy</th><!-- 
                            <th>Employment Type</th>
                            <th>General Qualifications</th>
                            <th>Number of Applicants</th> -->
                            <th>List Applicants</th>
                            <th>Action</th>
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
                                    <c:out value="${jobNotice.position}" />
                                </td>
                                <td>
                                    <c:out value="${jobNotice.numOfBeTaken}" />
                                </td>
                                <!-- <td>
                                    <c:out value="${jobNotice.workType}" />
                                </td>
                                <td>
                                    <c:out value="${jobNotice.explanation}" />
                                </td>
                                <td>
                                    <c:out value="${jobNotice.jobApplies.size()}"/>
                                </td> -->
                                <td>
                                    <a href="${showApplicantLink}" class="btn btn-link">
                                        Show
                                    </a>
                                </td>  
                                <td> <a href="${updateLink}"  class="edit" title="Edit" data-toggle="tooltip"><i class="fas fa-pencil-alt text-dark me-2" aria-hidden="true"></i></a>
                                    <a href="${deleteLink}" onclick="return confirm('Are you sure you want to delete this?')" class="delete" title="Delete" data-toggle="tooltip"><i class="far fa-trash-alt me-2"></i></a></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                  </table>
              </div>
              </div>
              </div>
  </main>

<jsp:include page="../layout/footer.jsp"/>