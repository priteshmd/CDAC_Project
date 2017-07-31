package test;

import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.hibernate.Session;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;



public class FormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public FormServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    private static void writeBytesToFile(byte[] bFile, String fileDest) {

        try (FileOutputStream fileOuputStream = new FileOutputStream(fileDest)) {
            fileOuputStream.write(bFile);
        } catch (IOException e) {
            e.printStackTrace();
        }}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Session session = HibernateConfiguration.getSession();
		PrintWriter out = response.getWriter();
		
		String f = request.getParameter("image");
		System.out.println(f);
//		String f = getServletContext().getInitParameter("file-upload"); 
		File file = new File("C:\\Users\\Public\\Pictures\\Sample Pictures\\"+f);
		System.out.println(file);
		String n=file.getName();
		System.out.println(n);

		String filepath="G:\\FINAL\\Mall_Project\\WebContent\\res\\images\\" + n;
		System.out.println(filepath);
		
		//System.out.println(request.getParameter("image"));
		
		
		 byte[] byteFile = new byte[(int)file.length()];
			try{
				FileInputStream fs = new FileInputStream(file);
				fs.read(byteFile);
				writeBytesToFile(byteFile, filepath);
				fs.close();
				
				
			}catch(Exception e)
			{
				e.printStackTrace();
			}
//			 request.setAttribute(arg0, arg1);
			 request.setAttribute("imagepath", filepath);
			 
			 try {
				Thread.sleep(2000);
				System.out.println("inside thread");
			} catch (InterruptedException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		
			 try {
				File f1 = new File(filepath);
				 if(f1.exists()) { 
					   
					 System.out.println("File Found!!");
					 RequestDispatcher rd = request.getRequestDispatcher("/ProductsServlet");
		             rd.forward(request, response);
					}
				 else{
					 System.out.println("File not found!!!");
				 }
			} catch (Exception e) {
				// TODO Auto-generated catch block
				System.out.println("File not found!!!");
			}
//			 RequestDispatcher rd = request.getRequestDispatcher("/ProductsServlet");
//             rd.forward(request, response);
//			 }
//			 else{
//				 System.out.println("File not found!!!");
//			 }
		}
			
	}

	
	 

