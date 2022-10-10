<jsp:include page="../users/layout/header.jsp"/>

   <main class="main-content position-relative border-radius-lg ">
    <!-- Navbar -->
        <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-lg border-radius-xl " id="navbarBlur" data-scroll="false">
          <div class="container-fluid py-1 px-3">
            <nav aria-label="breadcrumb">
              <%-- <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
                <li class="breadcrumb-item text-sm"><a class="opacity-5 text-white" href="dashboardUser">Pages</a></li>
                <li class="breadcrumb-item text-sm text-white active" aria-current="page">Dashboard</li>
              </ol> --%>
              <h6 class="font-weight-bolder text-white mb-0">Dashboard</h6>
            </nav>
            <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
              <div class="ms-md-auto pe-md-3 d-flex align-items-center">

              </div>
              <ul class="navbar-nav  justify-content-end">
                <%-- <li class="nav-item d-flex align-items-center">
                  <a href="/login/logout" class="nav-link text-white font-weight-bold px-0">
                  <i class="fa-solid fa-power-off me-sm-1"></i>
                    <span class="d-sm-inline d-none">Sign Out</span>
                  </a>
                </li> --%>
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
        <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4" type="button" data-bs-toggle="modal" data-bs-target="#trackingcareer">
          <div class="card">
            <div class="card-body p-3">
              <div class="row">
                <div class="col-8">
                  <div class="numbers">
                    <p class="text-sm mb-0 text-uppercase font-weight-bold">Tracking Your Career</p>
                    <hr class="bg-dark">
                    <h5 class="font-weight-bolder">
                      <a href="tracking">Tracking Career</a>
                    </h5>

                  </div>
                </div>
                <div class="col-4 text-end">
                <img src="https://img.icons8.com/bubbles/90/000000/briefcase.png" aria-hidden="true"/>
                </div>
              </div>
            </div>

          </div>
        </div>
      </div>
      <div style="width: 100px; margin-top: 30px; margin-left: 270px;"  >
      <img src="${contextPath}/resources/static/images/recruitment_process.jpg" style="width: 920px; height: 600px;">
      </div>
      </div>
  </main>
  
  <jsp:include page="../users/layout/footer.jsp"/>