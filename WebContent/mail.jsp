<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*,javax.mail.*"%>
<%@ page import = "javax.mail.internet.*,javax.activation.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ page import = "java.sql.*" %>
<%@ include file="header1.jsp"%>

<html>
<head>
<script>
$(document).ready(function() {
    function disableBack() { window.history.forward() }

    window.onload = disableBack();
    window.onpageshow = function(evt) { if (evt.persisted) disableBack() }
});
</script>
</head>
   <body>
<%
	
	String[] to = request.getParameterValues("val");
	String USER_NAME = "";  // GMail user name (just the part before "@gmail.com")
	 String PASSWORD = ""; // GMail password
	



    String from = USER_NAME;
    String pass = PASSWORD;
   // String[] to = { list }; // list of recipient email addresses
    String subject = "Your Favourite product is back in stock!!";
    String body = "hello there....!" + "\n Your Favourite product is back in stock!!"+"\n Check it out";

    Properties props = System.getProperties();
  String host = "smtp.gmail.com";

    props.put("mail.smtp.starttls.enable", "true");

    props.put("mail.smtp.ssl.trust", host);
    props.put("mail.smtp.user", from);
    props.put("mail.smtp.password", pass);
    props.put("mail.smtp.port", "587");
    props.put("mail.smtp.auth", "true");


    javax.mail.Session ses = Session.getDefaultInstance(props);
    MimeMessage message = new MimeMessage(ses);

    try {


        message.setFrom(new InternetAddress(from));
        InternetAddress[] toAddress = new InternetAddress[to.length];

        // To get the array of addresses
        for( int i = 0; i < to.length; i++ ) {
            toAddress[i] = new InternetAddress(to[i]);
        }

        for( int i = 0; i < toAddress.length; i++) {
            message.addRecipient(Message.RecipientType.TO, toAddress[i]);
        }



        message.setSubject(subject);
        message.setText(body);


        Transport transport = ses.getTransport("smtp");


        transport.connect(host, from, pass);
        transport.sendMessage(message, message.getAllRecipients());
        transport.close();

    }
    catch (AddressException ae) {
        ae.printStackTrace();
    }
    catch (MessagingException me) {
        me.printStackTrace();
    }
   
%>


      <center>
         <h3 style="color:green">Email sent to all</h3>
      </center>
      
      <p align = "center">
		<button type="button" class="btn btn-primary" ><a href="shopkeeper.jsp" style="color:white">Go Back to main menu</a></button>
      </p>
   </body>
</html>
