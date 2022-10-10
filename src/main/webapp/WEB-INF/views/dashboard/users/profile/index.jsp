<jsp:include page="../layout/header.jsp"/>


    <main class="main-content position-relative border-radius-lg ">
      <!-- Navbar -->
      <!-- Navbar -->
          <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-lg border-radius-xl " id="navbarBlur" data-scroll="false">
            <div class="container-fluid py-1 px-3">
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
                  <li class="breadcrumb-item text-sm"><a class="opacity-5 text-white" href="dashboardUser">Pages</a></li>
                  <li class="breadcrumb-item text-sm text-white active" aria-current="page">Profile</li>
                </ol>
                <h6 class="font-weight-bolder text-white mb-0">Profile User</h6>
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
                  </li>
                  </ul>
                </div>
              </div>
            </nav>
    <!-- End Navbar -->
          <div class="container-fluid py-4">
              <div class="row gutters-sm">
                <div class="col-md-4 mb-3">
                  <div class="card mb-3">
                    <div class="card-body">
                      <div class="d-flex flex-column align-items-center text-center">
                        <img src="https://img.icons8.com/bubbles/150/000000/charlotte-bronte.png" alt="photoProfile" class="rounded-circle" width="150">
                        <div class="mt-3">
                          <h4>Kenneth Valdez</h4>
                          <p class="text-secondary mb-1 align-items-center text-center">Teknik Informatika</p>
                          <p class="text-muted font-size-sm align-items-center text-center">University Purwodadi</p>
                          <div class="row">
                            <div class="col-sm-12">
                              <a class="btn btn-primary" href="/form_editUser">Edit Profile</a>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>

                  <div class="card mt-3">
                  <div class="row gutters-sm">
                            <div class="card-body">
                                <div class="col text-right">

<span>&#9989;</span>

                                </div>
                              </div>
                        <div class="card-body">
                  <h6 class="d-flex align-items-center mb-3">Education</h6>
                     <table class="table table-striped">
                     <thead>
                      <tr>
                      <th>Level</th>
                      <th>Name</th>
                      <th>Major</th>
                      <th>Passing</th>
                      <th>GPA</th>
                      </tr>
                    </thead>
                    </table>
                  </div>
                      </div>
                    </div>

                    <div class="card mt-3">
                    <div class="row gutters-sm">
                          <div class="card-body">
                            <div class="col text-right">



                            </div>
                            </div>
                                    <div class="card-body">
                            <h6 class="d-flex align-items-center mb-3">Organization</h6>
  	                           <table class="table table-striped">
  		                             <thead>
  			                            <tr>
  				                          <th>Name</th>
  				                          <th>Date In</th>
  				                          <th>Date Out</th>
  				                          <th>Position</th>
  		                              </tr>
                                  </thead>
  	                                </table>
                                  </div>
                                      </div>
                                    </div>
                                    </div>

                <div class="col-md-8">
                  <div class="card mb-3">
                    <div class="card-body">
                      <div class="col text-right">



                      </div>
                      <div class="row">
                        <div class="col-sm-3">
                          <h6 class="mb-0">Full Name</h6>
                        </div>
                        <div class="col-sm-9 text-secondary">
                          Kenneth Valdez
                        </div>
                      </div>
                      <hr>
                        <div class="row">
                          <div class="col-sm-3">
                            <h6 class="mb-0">ID Card</h6>
                          </div>
                          <div class="col-sm-9 text-secondary">
                            3318161514131211
                          </div>
                        </div>
                        <hr>
                      <div class="row">
                        <div class="col-sm-3">
                          <h6 class="mb-0">Email</h6>
                        </div>
                        <div class="col-sm-9 text-secondary">
                          example@email.com
                        </div>
                      </div>
                      <hr>
                      <div class="row">
                        <div class="col-sm-3">
                          <h6 class="mb-0">Phone</h6>
                        </div>
                        <div class="col-sm-9 text-secondary">
                          (239) 816-9029
                        </div>
                      </div>
                      <hr>
                      <div class="row">
                        <div class="col-sm-3">
                          <h6 class="mb-0">Birthday</h6>
                        </div>
                        <div class="col-sm-9 text-secondary">
                          Grobogan, 1 January 2000
                        </div>
                      </div>
                      <hr>
                      <div class="row">
                        <div class="col-sm-3">
                          <h6 class="mb-0">Address</h6>
                        </div>
                        <div class="col-sm-9 text-secondary">
                          Bay Area, San Francisco, CA
                        </div>
                      </div>
                    </div>
                  </div>

                  <div class="row gutters-sm">
                    <div class="col-sm-6 mb-3">
                      <div class="card h-100">
                        <div class="card-body">
                          <div class="col text-right">

<span>&#10060;</span>

                          </div>
                          <h6 class="d-flex align-items-center mb-3">Family Details</h6>
                          <div class="col-lg-">
	                           <table class="table table-striped">
		                             <thead>
			                            <tr>
				                          <th>Relation</th>
				                          <th>Name</th>
				                          <th>Phone</th>
				                          <th>Profession</th>
		                              </tr>
                                </thead>
	                                </table>
                        </div>
                        </div>
                      </div>
                    </div>

                    <div class="col-sm-6 mb-3">
                      <div class="card h-100">
                        <div class="card-body">
                          <div class="col text-right">



                          </div>
                          <h6 class="d-flex align-items-center mb-3">Skills</h6>
                          <ol>
                          <li></li>
                          <li></li>
                          <li></li>
                        </ol>
                        </div>
                      </div>
                    </div>

                      <div class="col-sm-6 mb-3">
                        <div class="card h-100">
                          <div class="card-body">
                            <div class="col text-right">



                            </div>
                            <h6 class="d-flex align-items-center mb-3">Working Experience</h6>
                            <div class="col-lg-">
    	                           <table class="table table-striped">
    		                             <thead>
    			                            <tr>
    				                          <th>Name</th>
    				                          <th>Date In</th>
    				                          <th>Date Out</th>
    				                          <th>Position</th>
    		                              </tr>
                                    </thead>
    	                                </table>
                          </div>
                          </div>
                        </div>
                      </div>

                      <div class="col-sm-6 mb-3">
                        <div class="card h-100">
                          <div class="card-body">
                            <div class="col text-right">



                            </div>
                            <h6 class="d-flex align-items-center mb-3">Documents</h6>
                            <button class="btn btn-primary">Identity Card</button>
                            <button class="btn btn-primary">Family Card</button>
                            <button class="btn btn-primary">Transcript</button>
                            <button class="btn btn-primary">Graduation Certificate</button>
                            <button class="btn btn-primary">Vaccine Certificate</button>
                          </div>
                        </div>
                      </div>
                  </div>
                </div>
              </div>
              </div>
</main>
<!--   Core JS Files   -->

<!-- CSS Profile -->
<style>
body{
    margin-top:0px;
    color: #1a202c;
    text-align: left;
    background-color: #e2e8f0;
}
.main-body {
    padding: 15px;
}
.card {
    box-shadow: 0 1px 3px 0 rgba(0,0,0,.1), 0 1px 2px 0 rgba(0,0,0,.06);
}

.card {
    position: relative;
    display: flex;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    box-shadow: 10px 10px lightgrey;
    background-clip: border-box;
    border: 0 solid rgba(0,0,0,.125);
    border-radius: .25rem;
}

.card-body {
    flex: 1 1 auto;
    min-height: 1px;
    padding: 1rem;
}

.gutters-sm {
    margin-right: -8px;
    margin-left: -8px;
}

.gutters-sm>.col, .gutters-sm>[class*=col-] {
    padding-right: 8px;
    padding-left: 8px;
}
.mb-3, .my-3 {
    margin-bottom: 1rem!important;
}

.bg-gray-300 {
    background-color: #e2e8f0;
}
.h-100 {
    height: 100%!important;
}
.shadow-none {
    box-shadow: none!important;
}
</style>

<jsp:include page="../layout/footer.jsp"/>