<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Virtual Shop</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>

<body>
	<div class="container">
		<div class="row">
            <div class="col-lg-12">
                <div class="well text-center">
                    <p style="color:red"><marquee direction="left" scrollamount="10" >
                    <h1>
                    Virtual Window Shopping...
                    Know before you go!!!
                    Virtual Window Shopping...
                    Know before you go!!!
                    </h1></marquee ><p>
                </div>
            </div>
            <!-- /.col-lg-12 -->
        </div>
		
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>

			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">
					<a href="offers.jsp" ><img src="res/images/car1.jpg" alt="Los Angeles" height="300"
						width="1500" /></a>
				</div>

				<div class="item">
					<img src="res/images/car2.jpg" alt="Chicago" height="300"
						width="1500" />
				</div>

				<div class="item">
					<img src="res/images/car3.jpg" alt="New york" height="300"
						width="1500" />
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
		<br><br>

        
        <!-- Content Row -->
        <div class="row">
            
            <!-- /.col-md-4 -->
            <div class="col-md-4">
                <h1 style="color:blue"><u>Contact Us</u></h1>
                <p > Mobile no- 8876072345<br>
				    Phone no-  02206547898<br>
				    email: <a href="mailto:knwb4ugo@gmail.com?Subject=Hello%20again" target="_top">
				    knwb4ugo@gmail.com</a>
				</p>
                
            </div>
			<div class="col-md-4">
                <h1 style="color:blue"><u>Address</u></h1>
                <p>Gulmohar cross road no-9,<br> near Ramas,<br>
				 Juhu. Mumbai
				</p>
               
            </div>
            <!-- /.col-md-4 -->
            <div class="col-md-4">
                <h1 style="color:blue"><u>Mall Timings</u></h1>
                <p> Open Time- 10.00 am<br>
				    Close Time- 10.00 pm
				
				</p>
                
            </div>
	</div>
<br></br>

</body>
<iframe src="footer.html" height="40px" width="100%" align="bottom" scrolling="no" ></iframe>



</html>
