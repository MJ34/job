<jsp:include page="../home/header.jsp"/>

    <main>

        <!-- slider Area Start-->
        <div class="slider-area ">
            <!-- Mobile Menu -->

<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="6"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="${contextPath}/resources/static/assets/img/banner/carousel1.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="${contextPath}/resources/static/assets/img/banner/carousel2.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="${contextPath}/resources/static/assets/img/banner/carousel3.jpg" alt="Third slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="${contextPath}/resources/static/assets/img/banner/carousel4.jpg" alt="Third slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="${contextPath}/resources/static/assets/img/banner/carousel5.jpg" alt="Third slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="${contextPath}/resources/static/assets/img/banner/carousel6.jpg" alt="Third slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="${contextPath}/resources/static/assets/img/banner/carousel7.jpg" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only ">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
        </div>
         <!-- Featured_job_start -->
         <section class="featured-job-area feature-padding" style="margin-top: -130px;">
             <div class="container">
               <br><br>
                 <!-- Section Tittle -->
                 <div class="row mt-4">
                     <div class="col-lg-12">
                         <div class="section-tittle text-center">
                             <h2>Recent Job</h2>
                         </div>
                     </div>
                 </div>
                 <div class="row justify-content-center">
                     <div class="col-xl-10">
                         <!-- single-job-content -->
                         <div class="single-job-items mb-30">
                             <div class="job-items">
                                 <div class="company-img">
                                     <a href="#"><img src="${contextPath}/resources/static/assets/img/icon/PK_logo.png" alt=""></a>
                                 </div>
                                 <div class="job-tittle">
                                     <a href="#"><h4>IT Develop</h4></a>
                                     <ul>
                                         <li>Pungkook Indonesia One</li>
                                         <li><i class="fas fa-map-marker-alt"></i>Grobogan, Jawa Tengah</li>
                                         <!--<li>$3500 - $4000</li>-->
                                     </ul>
                                 </div>
                             </div>
                             <div class="items-link f-right">
                                 <a href="${mvc.basePath}/jobDetails">Job Details</a>
                                 <span>7 hours ago</span>
                             </div>
                         </div>
                         <!-- single-job-content -->
                         <div class="single-job-items mb-30">
                             <div class="job-items">
                                 <div class="company-img">
                                     <a href="${mvc.basePath}/jobDetails"><img src="${contextPath}/resources/static/assets/img/icon/PK_logo.png" alt=""></a>
                                 </div>
                                 <div class="job-tittle">
                                     <a href="${mvc.basePath}/jobDetails"><h4>Merchandiser</h4></a>
                                     <ul>
                                         <li>Pungkook Indonesia One</li>
                                         <li><i class="fas fa-map-marker-alt"></i>Grobogan, Jawa Tengah</li>
                                         <!--<li>$3500 - $4000</li>-->
                                     </ul>
                                 </div>
                             </div>
                             <div class="items-link f-right">
                                 <a href="${mvc.basePath}/jobDetails">Job Details</a>
                                 <span>7 hours ago</span>
                             </div>
                         </div>
                          <!-- single-job-content -->
                         <div class="single-job-items mb-30">
                             <div class="job-items">
                                 <div class="company-img">
                                     <a href="job_details.html"><img src="${contextPath}/resources/static/assets/img/icon/PK_logo.png" alt=""></a>
                                 </div>
                                 <div class="job-tittle">
                                     <a href="job_details.html"><h4>Translator Korea</h4></a>
                                     <ul>
                                         <li>Pungkook Indonesia One</li>
                                         <li><i class="fas fa-map-marker-alt"></i>Grobogan, Jawa Tengah</li>
                                         <!--<li>$3500 - $4000</li>-->
                                     </ul>
                                 </div>
                             </div>
                             <div class="items-link f-right">
                                 <a href="job_details.html">Job Details</a>
                                 <span>7 hours ago</span>
                             </div>
                         </div>
                          <!-- single-job-content -->
                         <div class="single-job-items mb-30">
                             <div class="job-items">
                                 <div class="company-img">
                                     <a href="job_details.html"><img src="${contextPath}/resources/static/assets/img/icon/PK_logo.png" alt=""></a>
                                 </div>
                                 <div class="job-tittle">
                                     <a href="job_details.html"><h4>IT Infra</h4></a>
                                     <ul>
                                         <li>Pungkook Indonesia One</li>
                                         <li><i class="fas fa-map-marker-alt"></i>Grobogan, Jawa Tengah</li>
                                         <!--<li>$3500 - $4000</li>-->
                                     </ul>
                                 </div>
                             </div>
                             <div class="items-link f-right">
                                 <a href="job_details.html">Job Details</a>
                                 <span>7 hours ago</span>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
         </section>
         <!-- Featured_job_end -->


        <!-- Online CV Area Start -->
         <div class="online-cv cv-bg section-overly pt-90 pb-120"  data-background="${contextPath}/resources/static/assets/img/gallery/cv_bg.jpg">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-10">
                        <div class="cv-caption text-center">
                            <p class="pera1">FEATURED TOURS Packages</p>
                            <p class="pera2"> Upload Your CV, To Easily Apply For Jobs!</p>
                            <a href="#" class="border-btn2 border-btn4">Upload your cv</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Online CV Area End-->

        <!-- How  Apply Process Start-->
        <div class="apply-process-area apply-bg pt-150 pb-150" data-background="${contextPath}/resources/static/assets/img/gallery/how-applybg.png">
            <div class="container">
                <!-- Section Tittle -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-tittle white-text text-center">
                            <span>Apply process</span>
                            <h2> How it works</h2>
                        </div>
                    </div>
                </div>
                <!-- Apply Process Caption -->
                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div class="single-process text-center mb-30">
                            <div class="process-ion">
                                <span class="flaticon-search"></span>
                            </div>
                            <div class="process-cap">
                               <h5>1. Search & Apply Job</h5>
                               <p>Sorem spsum dolor sit amsectetur adipisclit, seddo eiusmod tempor incididunt ut laborea.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="single-process text-center mb-30">
                            <div class="process-ion">
                                <span class="flaticon-curriculum-vitae"></span>
                            </div>
                            <div class="process-cap">
                               <h5>2. Recruitment</h5>
                               <p>Sorem spsum dolor sit amsectetur adipisclit, seddo eiusmod tempor incididunt ut laborea.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="single-process text-center mb-30">
                            <div class="process-ion">
                                <span class="flaticon-tour"></span>
                            </div>
                            <div class="process-cap">
                               <h5>3. Get your job</h5>
                               <p>Sorem spsum dolor sit amsectetur adipisclit, seddo eiusmod tempor incididunt ut laborea.</p>
                            </div>
                        </div>
                    </div>
                </div>
             </div>
        </div>

    </main>
    
<jsp:include page="../home/footer.jsp"/>