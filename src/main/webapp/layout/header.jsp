<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" %>
<!-- Navigation -->
 <nav class="navbar navbar-inverse " style="border-radius: 0%;">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header ">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Blog</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home <span class="sr-only">(current)</span></a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Menu <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li id="view_content"><a href="ViewContentServlet" id="need"><i class="fa fa-table""></i> View
                                Contents</a></li>
                                <li role="separator" class="divider"></li>
                            <li id="form_content"><a href="CreateAndEditContentServlet?mode=0"><i class="fa fa-pencil-square-o"></i> Form
                                Content</a></li>
                                <li role="separator" class="divider"></li>
                            <li id="explore_content"><a href="ViewContentAllServlet"><i class="fa fa-bar-chart"></i> Explore</a></li>
							
							
						</ul></li>
				</ul>
                <form class="navbar-form navbar-left" role="search">
                    <div class="input-group">
                        <input id="system-search" type="text" class="form-control" placeholder="Search..."
                            name="q">
                        <div class="input-group-btn">
                            <button class="btn btn-default" type="submit">
                                <i class="fa fa-search"></i>
                            </button>
                        </div>
                    </div>
                </form>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown"><a href="#" class="dropdown-toggle"
                        data-toggle="dropdown" role="button" aria-haspopup="true"
                        aria-expanded="true"><i class="fa fa-user" aria-hidden="true"></i><span
                            class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li id="edit_profile"><a href="Profile"><i id="icon_s"
                                    class="fa fa-user" aria-hidden="true"></i> User Profile</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="login.jsp"><i id="icon_s"
                                    class="fa fa-sign-out" aria-hidden="true"></i> Logout</a></li>
                        </ul></li>
                </ul>    
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>

<!-- /.navbar-collapse -->