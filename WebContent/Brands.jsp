<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file = "header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.js"></script>

<style>
/* Slider */
.slick-slide {
    margin: 0px 30px;
}

.slick-slide img {
    width: 100%;
}

.slick-slider
{
    position: relative;
    display: block;
    box-sizing: border-box;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
            user-select: none;
    -webkit-touch-callout: none;
    -khtml-user-select: none;
    -ms-touch-action: pan-y;
        touch-action: pan-y;
    -webkit-tap-highlight-color: transparent;
}

.slick-list
{
    position: relative;
    display: block;
    overflow: hidden;
    margin: 0;
    padding: 0;
}
.slick-list:focus
{
    outline: none;
}
.slick-list.dragging
{
    cursor: pointer;
    cursor: hand;
}

.slick-slider .slick-track,
.slick-slider .slick-list
{
    -webkit-transform: translate3d(0, 0, 0);
       -moz-transform: translate3d(0, 0, 0);
        -ms-transform: translate3d(0, 0, 0);
         -o-transform: translate3d(0, 0, 0);
            transform: translate3d(0, 0, 0);
}

.slick-track
{
    position: relative;
    top: 0;
    left: 0;
    display: block;
}
.slick-track:before,
.slick-track:after
{
    display: table;
    content: '';
}
.slick-track:after
{
    clear: both;
}
.slick-loading .slick-track
{
    visibility: hidden;
}

.slick-slide
{
    display: none;
    float: left;
    height: 50%;
    min-height: 1px;
}
[dir='rtl'] .slick-slide
{
    float: right;
}
.slick-slide img
{
    display: block;
}
.slick-slide.slick-loading img
{
    display: none;
}
.slick-slide.dragging img
{
    pointer-events: none;
}
.slick-initialized .slick-slide
{
    display: block;
}
.slick-loading .slick-slide
{
    visibility: hidden;
}
.slick-vertical .slick-slide
{
    display: block;
    height: auto;
    border: 1px solid transparent;
}
.slick-arrow.slick-hidden {
    display: marker;
}
</style>
<script>
$(document).ready(function(){
    $('.customer-logos').slick({
        slidesToShow: 4,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 2000,
        arrows: false,
        dots: false,
        pauseOnHover: true,
        responsive: [{
            breakpoint: 768,
            settings: {
                slidesToShow: 4
            }
        }, {
            breakpoint: 520,
            settings: {
                slidesToShow: 3
            }
        }]
    });
});
</script>
<title>Insert title here</title>

</head>
<body>
<hr>	
	<h3 style=" margin-left:9%;">FootWear Brands</h3><hr>	
<div class="container">
   <section class="customer-logos slider">
      <div class="slide"><a href="BrandDetails.jsp?id=Adidas"><img src="res/images/adidas.png" height="275" width="325"></a></div>
      <div class="slide"><a href="BrandDetails.jsp?id=Reebok"><img src="res/images/reebok.jpg"  height="275" width="325"></a></div>
      <div class="slide"><a href="BrandDetails.jsp?id=Puma"><img src="res/images/puma.png"  height="275" width="325"></a></div>
      <div class="slide"><a href="BrandDetails.jsp?id=Fila"><img src="res/images/fila.png"  height="275" width="325"></a></div>
      <div class="slide"><a href="BrandDetails.jsp?id=Nike"><img src="res/images/nike.jpg"  height="275" width="325"></a></div>

   </section>
	<h3 style=" margin-left:9%;">Clothing Brands</h3><hr>	

   <section class="customer-logos slider">
      <div class="slide"><a href="BrandDetails.jsp?id=Forever21"><img src="res/images/van.jpg" height="275" width="325"></a></div>
      <div class="slide"><img src="res/images/levis.jpg" height="275" width="325"></div>
      <div class="slide"><img src="res/images/spykar.jpg" height="275" width="325"></div>
      <div class="slide"><img src="res/images/raymond.jpg" height="275" width="325"></div>
      <div class="slide"><img src="res/images/arrow.jpg" height="275" width="325"></div>
      <div class="slide"><img src="res/images/pepe.jpg" height="275" width="325"></div>
      <div class="slide"><img src="res/images/peter.jpg" height="275" width="325"></div>
      <div class="slide"><img src="res/images/zara.jpg" height="275" width="325"></div>

   </section>
   
</div>
	<iframe src="footer.html" height="40px" width="100%" align="bottom" scrolling="no" ></iframe>	
</body>
</html>