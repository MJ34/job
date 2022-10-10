<jsp:include page="../home/header.jsp"/>

<section>
        <div class="container pt-50 pb-40">
             <div class="row">
                    <div class="col-12 pb-20">                       
                    </div>
                    <div class="col-12">
                        <h2 class="contact-title text-center">Register</h2>
                    </div>
                    <div class="col-lg-6 mx-auto">
                        <form action="${pageContext.request.contextPath}/saveNewUser" method="post" modelAttribute="newUser">
                            <div class="row">
                            <input type="hidden" name="id" />
                                <div class="col-12">
                                    <h6>Register New User</h6>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <label>Username</label>
                                        <input type="text" class="form-control valid" id="username" name="username" placeholder="Enter your Username" required>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label>Password</label>
                                        <input type="password" class="form-control valid" id="password" name="password" placeholder="Enter your Password" required>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <label>Firstname</label>
                                        <input type="text" class="form-control valid" id="firstname" name="firstname" placeholder="Enter your Firstname" required>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <label>Lastname</label>
                                        <input type="text" class="form-control valid" id="lastname" name="lastname" placeholder="Enter your Lastname" required>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <label>Email</label>
                                        <input type="email" class="form-control valid" id="mail" name="mail" placeholder="Enter your Email" required>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group mt-40">
                             <button type="submit" class="genric-btn primary">Register</button>
                            </div>
                        </form>
                    </div>
                 </div>
        </div>
    </section>

<jsp:include page="../home/footer.jsp"/>