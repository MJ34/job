<jsp:include page="../layout/header.jsp"/>
<main class="main-content position-relative border-radius-lg ">
    <!-- Navbar -->
        <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-lg border-radius-xl " id="navbarBlur" data-scroll="false">
          <div class="container-fluid py-1 px-3">
            <nav aria-label="breadcrumb">
              <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
                <li class="breadcrumb-item text-sm"><a class="opacity-5 text-white" href="dashboardUser">Pages</a></li>
                <li class="breadcrumb-item text-sm text-white active" aria-current="page">Candidate</li>
              </ol>
              <h6 class="font-weight-bolder text-white mb-0">List Candidate</h6>
            </nav>
            <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
              <div class="ms-md-auto pe-md-3 d-flex align-items-center">

              </div>
              <ul class="navbar-nav  justify-content-end">
                <li class="nav-item d-flex align-items-center">
                  <a href="/login/logout" class="nav-link text-white font-weight-bold px-0">
                  <i class="fa-solid fa-power-off me-sm-1"></i>
                    <span class="d-sm-inline d-none">Sign Out</span>
                  </a>
                </li>
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
      <div class="row">
        <section class="col-lg-6 connectedSortable ui-sortable">
          <a href="">
          <div class="card">
            <div class="card-body p-4">
              <div class="row">
                <div class="col-8">
                  <div class="inner">
                    <h2>25</h2>
                    <hr class="bg-dark">
                    <h6 class="font-weight-bolder">
                    CURRENT CANDIDATE
                  </h6>
                  </div>
                </div>
                <div class="col-4 text-end">
                  <img src="https://img.icons8.com/bubbles/110/000000/add-male-user.png" aria-hidden="true"/>
                </div>
              </div>
            </div>
          </div>
        </a>
      </section>
        <section class="col-lg-6 connectedSortable ui-sortable">
          <a href="">
          <div class="card">
            <div class="card-body p-4">
              <div class="row">
                <div class="col-8">
                  <div class="inner">
                  <h2>50</h2>
                  <hr class="bg-dark">
                  <h6 class="font-weight-bolder">
                      PAST CANDIDATE
                    </h6>
                  </div>
                </div>
                <div class="col-4 text-end">
                <img src="https://img.icons8.com/bubbles/110/000000/delete-male-user.png" aria-hidden="true"/>
                </div>
              </div>
            </div>
          </div>
        </a>
        </section>
      </div>
      </div>
      <br>


      <!-- Main row -->
      <div class="container-fluid py-8">
        <div class="row">
            <!-- <a class="btn btn-info btn-sm pull-right" href="${contextPath}/company/job-notices/showFormForAdd" >
                <span class="glyphicon glyphicon-plus-sign"></span>
            </a> -->
        </div>
        <div class="row">
            <table id="example" class="display" style="width:100%">
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

</main>

<jsp:include page="../layout/footer.jsp"/>