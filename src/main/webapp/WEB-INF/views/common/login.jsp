<jsp:include page="../home/header.jsp"/>

 <section>
        <div class="container pt-50 pb-40">
             <div class="row">
                    <div class="col-12 pb-20">                       
                    </div>
                    <div class="col-12">
                        <h2 class="contact-title text-center">Login</h2>
                    </div>
                    <div class="col-lg-6 mx-auto">
                        <form method="post" action="${pageContext.request.contextPath}/login">
                            <div class="row">
                                <div class="col-12">
                                    <h6>Login Information</h6>
                                </div>
                                <div class="col-10">
                                    <div class="form-group">
                                        <label>Username</label>
                                        <input type="text" class="form-control valid" name="username" id="name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your Username'" placeholder="Enter your Username" required>
                                    </div>
                                </div>
                                <div class="col-sm-10">
                                    <div class="form-group">
                                        <label>Password</label>
                                        <input type="password" class="form-control valid" name="password" id="name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your Password'" placeholder="Enter your Password" required>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group mt-40">
                             <button type="submit" class="genric-btn primary">Login</button>
                             	<a href="${pageContext.request.contextPath}/showCreateNewUser" class="genric-btn primary-border">Register</a>
                            </div>
                        </form>
                    </div>
                 </div>
        </div>
    </section>

<jsp:include page="../home/footer.jsp"/>