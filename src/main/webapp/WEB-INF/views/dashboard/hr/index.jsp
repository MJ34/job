<jsp:include page="../hr/layout/header.jsp"/>

<main class="main-content position-relative border-radius-lg ">
    <!-- Navbar -->
    <!-- Navbar -->
        <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-lg border-radius-xl " id="navbarBlur" data-scroll="false">
          <div class="container-fluid py-1 px-3">
            <nav aria-label="breadcrumb">
              <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
                <li class="breadcrumb-item text-sm"><a class="opacity-5 text-white" href="javascript:;">Pages</a></li>
                <li class="breadcrumb-item text-sm text-white active" aria-current="page">Dashboard</li>
              </ol>
              <h6 class="font-weight-bolder text-white mb-0">Dashboard</h6>
            </nav>
            <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
              <div class="ms-md-auto pe-md-3 d-flex align-items-center">

              </div>
              <ul class="navbar-nav  justify-content-end">
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
              <div class="col-xl-4 col-sm-6 mb-xl-0 mb-4">
          <a href="#">
          <div class="card">
            <div class="card-body p-3">
              <div class="row">
                <div class="col-8">
                  <div class="numbers">
                    <p class="text-sm mb-0 text-uppercase font-weight-bold">View All Job History</p>
                    <hr class="bg-dark">
                    <h5 class="font-weight-bolder">
                      Job History
                    </h5>
                  </div>
                </div>
                <div class="col-4 text-end">
                  <img src="https://img.icons8.com/bubbles/110/000000/search-property.png" aria-hidden="true"/>
                </div>
              </div>
            </div>
          </div>
        </a>
        </div>
        <div class="col-xl-4 col-sm-6 mb-xl-0 mb-4">
          <a href="#">
          <div class="card">
            <div class="card-body p-3">
              <div class="row">
                <div class="col-8">
                  <div class="numbers">
                    <p class="text-sm mb-0 text-uppercase font-weight-bold">View All Candidate</p>
                    <hr class="bg-dark">
                    <h5 class="font-weight-bolder">
                      Candidate
                    </h5>
                  </div>
                </div>
                <div class="col-4 text-end">
                <img src="https://img.icons8.com/bubbles/110/000000/crowd--v2.png" aria-hidden="true"/>
                </div>
              </div>
            </div>
          </div>
        </a>
        </div>

        <div class="col-xl-4 col-sm-6 mb-xl-0 mb-4">
            <a href="">
          <div class="card">
            <div class="card-body p-3">
              <div class="row">
                <div class="col-8">
                  <div class="numbers">
                    <p class="text-sm mb-0 text-uppercase font-weight-bold">Show All Jobseeker Progress</p>
                    <hr class="bg-dark">
                    <h5 class="font-weight-bolder">
                      Jobseeker Progress
                    </h5>
                  </div>
                </div>
                <div class="col-4 text-end">
                  <img src="https://img.icons8.com/bubbles/110/000000/test-passed.png" aria-hidden="true"/>
                </div>
              </div>
            </div>
          </div>
          </a>
        </div>

      </div>
      <br><br><br>

      <div class="row">
            <div class="card border border-success " style="margin-right: 50px; width: 710px;">
                <h4 class="font-weight-bold text-center mt-3">Number Of Applicants In a Month</h4>
                <hr class="bg-warning ">
                  <canvas id="lineChart"></canvas>
            </div>
            <div class="card marg border border-warning" style="margin-right: 50px; width: 710px;">
              <h4 class="font-weight-bold text-center mt-3"> Number Of Applicants Per Day</h4>
              <hr class="bg-warning">
                <canvas id="myChart"></canvas>
            </div>
      </div>
      </div>


  </main>
  
<jsp:include page="../hr/layout/footer.jsp"/>