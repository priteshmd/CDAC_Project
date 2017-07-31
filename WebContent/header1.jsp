 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <title>Virtual Shopping</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
    	border-radius:0;
      height:10%;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    .jumbotron {
      height:5px;
    }
  #form-buscar{

  margin: 10px;
  padding-left:140px;
  padding-right:160px;
  padding-top:15px;
  }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
  </style>
<script>
function LogOut()
{
	alert("You are Logged in, First Log out then Search");
	}

</script>
<body>
<div class="container-fluid" style="background-color: #101010;">
	<div class="row" style="margin-left: 19px;">
		<div class="navbar-header">
			<a class="navbar-brand" href="#"><img
					src="res/images/cart.png" height="64" width="68" /></a>
			</div>

			<div id="form-buscar" >
				<div class="form-group">
					<div class="input-group">
						<input id="1" class="form-control" type="text" name="search"   onClick="LogOut()"
							placeholder="Search for Products,Brands and More" minlength="3" />
						<span class="input-group-btn">
							<button class="btn btn-warning" type="submit" onClick="LogOut()">
								<i class="glyphicon glyphicon-search" aria-hidden="true" ></i>
								Search
							</button>
						</span>
					</div>
				</div>
			</div>
		</div>
		<br>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Virtual Mall</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Stores <span class="caret"></span></a>
          <ul class="dropdown-menu">
            	<li>Adidas</li>
				<li>Reebok</li>
				<li>Puma</li>
				<li>Fila</li>
				<li>Nike</li>
          </ul>
        </li>
        <li><a href="#">Category</a></li>
        <li><a href="#">Brands</a> </li>
        <li><a href="#">Offers</a></li>
        <li><a href="#">Mall Map</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        
        <li><a href="LogoutServlet"><input type="button"  class="btn btn-danger" value="Log Out"></a></li>
      </ul>
    </div>
  </div>
</nav>	
</div>




  


</body>
</html>
 