<%@page import="java.util.ArrayList"%>
<html lang="en">
<head>
  <title>Virtual Shopping</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
    	border-radius:5;
      height:10%;
    }
   .navbar.navbar-inverse{
    
    background-color:  #333333;
   }
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
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

  
  padding-left:140px;
  padding-right:160px;
  padding-top:15px;
  }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .row.content {height:auto;} 
    }
#myBtn {
    display: none; /* Hidden by default */
    position: fixed; /* Fixed/sticky position */
    bottom: 20px; /* Place the button at the bottom of the page */
    right: 30px; /* Place the button 30px from the right */
    z-index: 99; 
    border: none;
    outline: none; 
    background-color: cyan;
    color: white;
    cursor: pointer; 
    padding: 10px; 
   /*  border-radius: 10px;  */
}

#myBtn:hover {
    background-color: #555; /* Add a dark-grey background on hover */
    color: white;
}

  </style>
</head>
<body>

 
<div class="container-fluid" style="background-color: #101010;">
	<div class="row" style="margin-left: 19px;">
		<div class="navbar-header">
			<a class="navbar-brand" href="home.jsp"><img
					src="res/images/cart.png" height="64" width="68" /></a>
			</div>

			<form role="form" id="form-buscar" action="Search.jsp">
				<div class="form-group">
					<div class="input-group">
						<input id="1" class="form-control" type="text" name="search"
							placeholder="Search for Products,Brands and More" minlength="3" />
						<span class="input-group-btn">
							<button class="btn btn-warning" type="submit">
								<i class="glyphicon glyphicon-search" aria-hidden="true"></i>
								Search
							</button>
						</span>
					</div>
				</div>
			</form>
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
       
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="home.jsp">Home</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Stores <span class="caret"></span></a>
          <ul class="dropdown-menu">
          <jsp:include page="/BrandListServlet"></jsp:include>
          <%
          		ArrayList<String> posts=(ArrayList<String> )request.getAttribute("ResultList");
         		 for (String post: posts) {
         			 String[] p = post.split("_");
          %>
          
            	<li><a href=ProductList.jsp?id=<%=post%>><%=p[0] %></a></li>
            <%} %>

          </ul>
        </li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Category <span class="caret"></span></a>
          <ul class="dropdown-menu">
            	<li><a href="genderList.jsp?id=men">Mens</a></li>
				<li><a href="genderList.jsp?id=women">Women</a></li>
          </ul>
        </li>
        <li><a href="Brands.jsp">Brands</a> </li>
        <li><a href="offers.jsp">Offers</a></li>
        <li><a href="map.jsp">Mall map</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        
        <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Store Login</a></li>
      </ul>
    </div>
  </div>
</nav>
	</div>
 

	<!-- <button onclick="topFunction()" id="myBtn" title="Go to top"></button> -->
<button type="button" class="btn btn-default btn-sm" onclick="topFunction()" id="myBtn" title="Go to top">
          <span class="glyphicon glyphicon-chevron-up"></span>
        </button>
</body>
<br><br><br>

<script>
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("myBtn").style.display = "block";
    } else {
        document.getElementById("myBtn").style.display = "none";
    }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
    document.body.scrollTop = 0; // For Chrome, Safari and Opera 
    document.documentElement.scrollTop = 0; // For IE and Firefox
}
</script>

</html>
 