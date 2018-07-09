<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Movies.aspx.cs" Inherits="movie.Movies" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en" class="no-js">


<head>
	<!-- Basic need -->
	<title>Movies List</title>
	<meta charset="UTF-8">
	<meta name="description" content="">
	<meta name="keywords" content="">
	<meta name="author" content="">
	<link rel="profile" href="#">

    <!--Google Font-->
    <link rel="stylesheet" href='http://fonts.googleapis.com/css?family=Dosis:400,700,500|Nunito:300,400,600' />
	<!-- Mobile specific meta -->
	<meta name=viewport content="width=device-width, initial-scale=1">
	<meta name="format-detection" content="telephone-no">

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
					<h1> movie listing - list</h1>
					<ul class="breadcumb">
						<li class="active"><a href="home.aspx">Home</a></li>
						<li> <span class="ion-ios-arrow-right"></span> movie listing</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>


<div class="page-single movie_list">
	<div class="container">
		<div class="row ipad-width2">
			<div class="col-md-8 col-sm-12 col-xs-12">
				<div class="topbar-filter">
					<p><span</span></p>
					
					
				</div>
				<form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [M_Name], [YOR], [actor], [producer], [MID] FROM [Movies]" 
            ConflictDetection="CompareAllValues" 
            DeleteCommand="DELETE FROM [Movies] WHERE [MID] = @original_MID AND [M_Name] = @original_M_Name AND [YOR] = @original_YOR AND [actor] = @original_actor AND [producer] = @original_producer" 
            InsertCommand="INSERT INTO [Movies] ([M_Name], [YOR], [actor], [producer]) VALUES (@M_Name, @YOR, @actor, @producer)" 
            OldValuesParameterFormatString="original_{0}" 
            
            UpdateCommand="UPDATE [Movies] SET [M_Name] = @M_Name, [YOR] = @YOR, [actor] = @actor, [producer] = @producer WHERE [MID] = @original_MID AND [M_Name] = @original_M_Name AND [YOR] = @original_YOR AND [actor] = @original_actor AND [producer] = @original_producer">
            <DeleteParameters>
                <asp:Parameter Name="original_MID" Type="Int32" />
                <asp:Parameter Name="original_M_Name" Type="String" />
                <asp:Parameter Name="original_YOR" Type="String" />
                <asp:Parameter Name="original_actor" Type="String" />
                <asp:Parameter Name="original_producer" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="M_Name" Type="String" />
                <asp:Parameter Name="YOR" Type="String" />
                <asp:Parameter Name="actor" Type="String" />
                <asp:Parameter Name="producer" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="M_Name" Type="String" />
                <asp:Parameter Name="YOR" Type="String" />
                <asp:Parameter Name="actor" Type="String" />
                <asp:Parameter Name="producer" Type="String" />
                <asp:Parameter Name="original_MID" Type="Int32" />
                <asp:Parameter Name="original_M_Name" Type="String" />
                <asp:Parameter Name="original_YOR" Type="String" />
                <asp:Parameter Name="original_actor" Type="String" />
                <asp:Parameter Name="original_producer" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="MID" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="M_Name" HeaderText="M_Name" 
                    SortExpression="M_Name" />
                <asp:BoundField DataField="YOR" HeaderText="YOR" SortExpression="YOR" />
                <asp:BoundField DataField="actor" HeaderText="actor" SortExpression="actor" />
                <asp:BoundField DataField="producer" HeaderText="producer" 
                    SortExpression="producer" />
                <asp:BoundField DataField="MID" HeaderText="List" InsertVisible="False" 
                    ReadOnly="True" ShowHeader="False" SortExpression="MID" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
    </div>
    </form>
				
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
<!-- end of footer section-->

<script src="js/jquery.js"></script>
<script src="js/plugins.js"></script>
<script src="js/plugins2.js"></script>
<script src="js/custom.js"></script>
</body>

<!-- Mirrored from haintheme.com/demo/html/bustter/movielist.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 04 Jul 2018 17:44:03 GMT -->
</html>
    
</body>
</html>
