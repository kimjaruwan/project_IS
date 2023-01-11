<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="MyWebApplication.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>ระบบแจ้งเรื่องร้องเรียนงานซ่อมบำรุง</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet"/>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
	
	<link rel="stylesheet" href="css/style.css"/>

</head>
<body class="sb-nav-fixed">  
	<form id="form1" runat="server">
    <section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<%--<h2 class="heading-section">ระบบแจ้งซ่อมบำรุงโครงการหมู่บ้านจัดสรร</h2>--%>
					
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-5">
					<div class="login-wrap p-4 p-md-5">
						<h3 class="text-center mb-4">ระบบแจ้งเรื่องร้องเรียนงานซ่อมบำรุง</h3>
		      	<div class="icon d-flex align-items-center justify-content-center">
		      		<span class="fa fa-user-o"></span>
		      	</div>
		      	<h3 class="text-center mb-4">SIGN IN</h3>
						<%--<form action="#" class="login-form">--%>


		      		<div class="form-group">

		      			<asp:TextBox ID="txtUsername" runat="server" class="form-control rounded-left" placeholder="Username" require></asp:TextBox>


		      		</div>

	            <div class="form-group d-flex">
	             <asp:TextBox ID="txtPassword" runat="server" class="form-control rounded-left" placeholder="Password" required ></asp:TextBox>


	            </div>
	       <%--     <div class="form-group d-md-flex">
	            	<div class="w-50">
	            		<label class="checkbox-wrap checkbox-primary">Remember Me
									  <input type="checkbox" checked />
									  <span class="checkmark"></span>
									</label>
								</div>
								<div class="w-50 text-md-right">
									<a href="#">Forgot Password</a>
								</div>
	            </div>--%>
	            <div class="form-group">
	            	<asp:Button runat="server" Text="Login" ID="btnLogin" class="btn btn-primary rounded submit p-3 px-5" OnClick="btnLogin_Click"/>
 
	            </div>
	          <%--</form>--%>
	        </div>
				</div>
			</div>
		</div>
	</section>

	<script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>



  
       
    </form>
</body>
</html>
