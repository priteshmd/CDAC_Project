		Instructions:

Don't create new project, make changes in your working project only.
-------------------------------------------------------------
import notify.sql in your database
-------------------------------------------------------------
JARS to be added: activation.jar,mail.jar,org.json-0.0.1.jar

-------------------------------------------------------------
files to be replaced:
	All WebContent Files 
	Do not replace src > test > java files OR hibernate files
-------------------------------------------------------------
New files added (FYI):

WebContent :->
	map.jsp
	mail.jsp
	sendmail.jsp
	notify.jsp
	footer.html
	genderList.jsp
src > test :->
	BrandListServlet.java
	Notify.java
src :->
	notify.hbm.xml(add your hibernate path)

	Add this line in hibernate.cfg.xml:-

	<mapping resource="notify.hbm.xml" />

