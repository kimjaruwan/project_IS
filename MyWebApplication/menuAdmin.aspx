      <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="index.html">Menu Bar</a>
         
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <%--<div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
                </div>--%>
            </form>
            <!-- Navbar-->
          <%--  <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#!">Settings</a></li>
                        <li><a class="dropdown-item" href="#!">Activity Log</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="#!">Logout</a></li>
                    </ul>
                </li>
            </ul>--%>

       
<%--               <div class="form-group">
	            	<asp:Button runat="server" Text="Login"  class="btn btn-primary rounded submit p-3 px-2" OnClick="btnLogin_Click"/>
 
	            </div>--%>



        </nav>
        <div id="layoutSidenav"/>
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <%--<div class="sb-sidenav-menu-heading">Core</div>
                            <a class="nav-link" href="index.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Dashboard
                            </a>
                            <div class="sb-sidenav-menu-heading">Interface</div>--%>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Master
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="addHomeData.aspx">ข้อมูลโครงการหมู่บ้าน</a>
                                    <a class="nav-link" href="addEmp.aspx">ข้อมูลพนักงาน</a>
                                    <a class="nav-link" href="addDataResident.aspx">ข้อมูลผู้อยู่อาศัย</a>
                                   <a class="nav-link" href="addConstr.aspx">ข้อมูลผู้รับเหมา</a> 
                                    <a class="nav-link" href="addDataUser.aspx">ข้อมูลบัญชีผู้ใช้</a>                                 
                                </nav>
                            </div>

                            <%--<a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                Pages
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                        Authentication
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="login.html">Login</a>
                                            <a class="nav-link" href="register.html">Register</a>
                                            <a class="nav-link" href="password.html">Forgot Password</a>
                                        </nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseError" aria-expanded="false" aria-controls="pagesCollapseError">
                                        Error
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="401.html">401 Page</a>
                                            <a class="nav-link" href="404.html">404 Page</a>
                                            <a class="nav-link" href="500.html">500 Page</a>
                                        </nav>
                                    </div>
                                </nav>
                            </div>
                            <div class="sb-sidenav-menu-heading">Addons</div>--%>
                            <a class="nav-link" href="view.aspx">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                    จัดการคำร้องเรียน
                            </a>
                            <a class="nav-link" href="report.aspx">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                รายงานค่าใช้จ่าย
                            </a>
                               <a class="nav-link" href="reportStatus.aspx">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                รายงานสถานะคำร้องเรียน
                            </a>
                            <a class="nav-link" href="reportUser.aspx">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                รายงานข้อมูลผู้ใช้งาน
                            </a>
                             <a class="nav-link" href="reportType.aspx">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                รายงานประเภทคำร้องเรียน
                            </a>
                             <a class="nav-link" href="reportCloseWork.aspx">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                รายงานสรุปปิดงาน
                            </a>

                             <a class="nav-link" href="login.aspx">
                                <%--<div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>--%>
                                Logout
                                <%-- <asp:Button runat="server" Text="Button" />--%>
                            </a>


                        </div>
                    </div>



                    <div class="sb-sidenav-footer">
                        <div class="small"></div>
                        
                    </div>
                    
                </nav>
            </div>
            
              