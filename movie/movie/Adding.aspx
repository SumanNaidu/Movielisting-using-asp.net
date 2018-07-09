<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adding.aspx.cs" Inherits="movie.Adding" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en" class="no-js">

<head>
	<!-- Basic need -->
	<title>Adding</title>
	
	<link rel="profile" href="#">

    <!--Google Font-->
    <link rel="stylesheet" href='http://fonts.googleapis.com/css?family=Dosis:400,700,500|Nunito:300,400,600' />
	<!-- Mobile specific meta -->
	
    <link href="styles/pikaday.css" rel="stylesheet" type="text/css" />
    <link href="styles/site.css" rel="stylesheet" type="text/css" />
    <link href="styles/theme.css" rel="stylesheet" type="text/css" />

    <script src="js/pikaday.js" type="text/javascript"></script>

	<!-- CSS files -->
	<link rel="stylesheet" href="css/plugins.css">
	<link rel="stylesheet" href="css/style.css">
    

</head>
<body>


<!-- BEGIN | Header -->
<header class="ht-header">
	<div class="container">
		<nav class="navbar navbar-default navbar-custom">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header logo">
				    <div class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					    <span class="sr-only">Toggle navigation</span>
					    <div id="nav-icon1">
							<span></span>
							<span></span>
							<span></span>
						</div>
				    </div>
				    <a href="home.aspx"><img class="logo" src="images/logo1.png" alt="" width="119" height="58"></a>
			    </div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse flex-parent" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav flex-child-menu menu-left">
						<li class="hidden">
							<a href="#page-top"></a>
						</li>
						<li class="dropdown first">
							<a href="home.aspx" class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown">
							Home 
							</a>
							
						</li>
						<li class="dropdown first">
							<a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
							movies<i class="fa fa-angle-down" aria-hidden="true"></i>
							</a>
							<ul class="dropdown-menu level1">
										
								<li><a href="Movies.aspx">Movie list</a></li>
								<li><a href="Adding.aspx">Add New Detail</a></li>
								
							</ul>
						</li>
						
					</ul>
					
				</div>
			<!-- /.navbar-collapse -->
	    </nav>
	    
	    <!-- top search form -->
	    
	</div>
</header>
<!-- END | Header -->

<div class="hero common-hero">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="hero-ct">
					<h1> Adding Details</h1>
					<ul class="breadcumb">
						<li class="active"><a href="home.aspx">Home</a></li>
						<li> <span class="ion-ios-arrow-right"></span>Add New Details</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="page-single">
	<div class="container">
		<div class="row ipad-width">
			
			<div class="col-md-9 col-sm-12 col-xs-12">
				<div class="form-style-1 user-pro" action="#">
					<form id="form11" runat="server">
						<h4>Movie Details</h4>
						<div class="row">
							<div class="col-md-6 form-it">
								<asp:Label ID="Label1" runat="server" Text="Movie Name" ForeColor="White"></asp:Label>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
							</div>
							<div class="col-md-6 form-it">
								<asp:Label ID="Label2" runat="server" Text="Year Of Release" ForeColor="White"></asp:Label>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6 form-it" style="margin-top:-36px;">
								<asp:Label ID="Label3" runat="server" Text="Plot" ForeColor="White"></asp:Label>
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
							</div>
							<div class="col-md-6 form-it" style="margin-top: -31px;">
								<asp:Label ID="Label4" runat="server" Text="Poster" ForeColor="White"></asp:Label>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
							</div>
                            <div class="col-md-6 form-it">
								<asp:Label ID="Label5" runat="server" Text="Actor Name" ForeColor="White"></asp:Label>
                                 <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
							</div>
                            <div class="col-md-6 form-it" style="margin-top:-77px;">
								<asp:Label ID="Label6" runat="server" Text="Producer Name" ForeColor="White"></asp:Label>
                               
                                <asp:DropDownList ID="DropDownList2" runat="server">
                                </asp:DropDownList>
							</div>
						</div>
						
						<div class="row">
							<div class="col-md-2">
                                    <asp:Button ID="Button1" runat="server" Text="Save" class="submit" 
                                        onclick="Button1_Click1" />
								
							</div>
						</div>
                       
                    <br />
					<br />
                    <br />

						<h4 style="margin-top: 10px;">Add Actor</h4>
						<div class="row">
							<div class="col-md-6 form-it">
								<asp:Label ID="Label7" runat="server" Text="Name" ForeColor="White"></asp:Label>
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
							</div>
						</div>
						<div class="row" style="margin-top:-115px;">
							<div class="col-md-6 form-it">
								<asp:Label ID="Label8" runat="server" Text="Sex" ForeColor="White"></asp:Label>
                                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True">
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                    <asp:ListItem>Other</asp:ListItem>
                                </asp:DropDownList>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6 form-it" style="margin-top: -20px;">
								<asp:Label ID="Label9" runat="server" Text="DOB" ForeColor="White"></asp:Label>
                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                <script type="text/javascript">
                                    var picker = new Pikaday(
                                {
                                    field: document.getElementById('TextBox6'),
                                    firstDay: 1, minDate: new Date('2000-01-01'),
                                    maxDate: new Date('1950-01-01'),
                                    yearRange: [1950, 2000],
                                    numberOfMonths: 1
                                });

                                </script>
							</div>
						</div>
                        <div class="row" style="margin-top:-120px;">
							<div class="col-md-6 form-it" style="margin-top: -20px;">
								<asp:Label ID="Label10" runat="server" Text="BIO" ForeColor="White"></asp:Label>
                                    <asp:TextBox ID="TextBox10" runat="server" Rows="2"></asp:TextBox>
							</div>
						</div>
						<div class="row">
							<div class="col-md-2">
								
                                    <asp:Button ID="Button2" runat="server" Text="Save" class="submit" 
                                        onclick="Button2_Click1"/>
							</div>
						</div>
                        <br />
					<br />
                    <br />

						<h4>Add Producer</h4>
						<div class="row">
							<div class="col-md-6 form-it">
								<asp:Label ID="Label11" runat="server" Text="Name" ForeColor="White"></asp:Label>
                                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
							</div>
						</div>
						<div class="row" style="margin-top:-115px;">
							<div class="col-md-6 form-it" >
								<asp:Label ID="Label12" runat="server" Text="Sex" ForeColor="White"></asp:Label>
                                <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" ForeColor="Gray">
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                    <asp:ListItem>Other</asp:ListItem>
                                </asp:DropDownList>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6 form-it" style="margin-top: -20px;">
								<asp:Label ID="Label13" runat="server" Text="DOB" ForeColor="White"></asp:Label>
                                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                                <script type="text/javascript">
                                    var picker = new Pikaday(
                                {
                                    field: document.getElementById('TextBox9'),
                                    firstDay: 1, minDate: new Date('2000-01-01'),
                                    maxDate: new Date('1950-01-01'),
                                    yearRange: [1950, 2000],
                                    numberOfMonths: 1
                                });

                                </script>
							</div>
						</div>
                        <div class="row" style="margin-top:-120px;">
							<div class="col-md-6 form-it" style="margin-top: -20px;">
								<asp:Label ID="Label14" runat="server" Text="BIO" ForeColor="White"></asp:Label>
                                <asp:TextBox ID="TextBox11" runat="server" Rows="2"></asp:TextBox>
							</div>
						</div>
						<div class="row">
							<div class="col-md-2">
								
                                    <asp:Button ID="Button3" runat="server" Text="Save" class="submit" 
                                        onclick="Button3_Click"/>
							</div>
						</div>	

                        
					</form>
    
				</div>
			</div>
		</div>
	</div>
</div>
<!-- footer section-->
<footer class="ht-footer">
	<div class="container">
		<div class="flex-parent-ft">
			<div class="flex-child-ft item1">
				 <a href="index.html"><img class="logo" src="images/logo1.png" alt=""></a>
				 <p>5th Avenue st, manhattan<br>
				New York, NY 10001</p>
				<p>Call us: <a href="#">(+01) 202 342 6789</a></p>
			</div>
			<div class="flex-child-ft item2">
				<h4>Resources</h4>
				<ul>
					<li><a href="#">About</a></li> 
					<li><a href="#">Blockbuster</a></li>
					<li><a href="#">Contact Us</a></li>
					<li><a href="#">Forums</a></li>
					<li><a href="#">Blog</a></li>
					<li><a href="#">Help Center</a></li>
				</ul>
			</div>
			<div class="flex-child-ft item3">
				<h4>Legal</h4>
				<ul>
					<li><a href="#">Terms of Use</a></li> 
					<li><a href="#">Privacy Policy</a></li>	
					<li><a href="#">Security</a></li>
				</ul>
			</div>
			<div class="flex-child-ft item4">
				<h4>Account</h4>
				<ul>
					<li><a href="#">My Account</a></li> 
					<li><a href="#">Watchlist</a></li>	
					<li><a href="#">Collections</a></li>
					<li><a href="#">User Guide</a></li>
				</ul>
			</div>
			<div class="flex-child-ft item5">
				<h4>Newsletter</h4>
				<p>Subscribe to our newsletter system now <br> to get latest news from us.</p>
				<form action="#">
					<input type="text" placeholder="Enter your email...">
				</form>
				<a href="#" class="btn">Subscribe now <i class="ion-ios-arrow-forward"></i></a>
			</div>
		</div>
	</div>
	<div class="ft-copyright">
		<div class="ft-left">
			<p>© 2017 Blockbuster. All Rights Reserved. Designed by leehari.</p>
		</div>
		<div class="backtotop">
			<p><a href="#" id="back-to-top">Back to top  <i class="ion-ios-arrow-thin-up"></i></a></p>
		</div>
	</div>
</footer>

<script src="js/jquery.js"></script>
<script src="js/plugins.js"></script>
<script src="js/plugins2.js"></script>
<script src="js/custom.js"></script>
</body>
</html>