package test;


import java.io.File;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.time.LocalDateTime;
import java.io.PrintWriter;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import test.Addproducts;
import test.HibernateConfiguration;

public class ProductsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ProductsServlet() {
		super();
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String msg = null;
		Session session = HibernateConfiguration.getSession();
	    response.setContentType("text/html");  
	    PrintWriter out = response.getWriter();  
		
		try {
			Addproducts p = new Addproducts();
			
			int price = Integer.parseInt(request.getParameter("price"));
			int quantity = Integer.parseInt(request.getParameter("quantity"));
			String brand_name = request.getParameter("brand_name");
			String color = request.getParameter("color");
			String product_name = request.getParameter("product_name");
			String size = request.getParameter("size");
			String gender = request.getParameter("gender");
			String Shop_Name = request.getParameter("Shop_Name");
			String product_type = request.getParameter("product_type");
			
			int hash = LocalDateTime.now().hashCode();
			String un_code="";
			try{
				un_code = (String)(product_type.substring(0,4).toLowerCase()+product_name.substring(0,4).toLowerCase()+
						Math.abs(hash));
			
			}catch(StringIndexOutOfBoundsException e){

				un_code = (String)(product_type+Math.abs(hash));
			}
			
			finally{

			p.setUn_id(un_code);}
			p.setProduct_name(product_name);
			p.setBrand_name(brand_name);
			p.setQuantity(quantity);
			p.setProduct_type(product_type);
			p.setColor(color);
			p.setSize(size);
			p.setPrice(price);
			p.setGender(gender);
			p.setShop_Name(Shop_Name);
			

			String f = request.getParameter("image");
	
			String n = new File(f).getName();
	
			String filepath = "res\\images\\" + n;
			p.setImagepath(filepath);

			session.beginTransaction();
			session.save(p);
			session.getTransaction().commit();
			msg = "Product Added Successfully";
			request.setAttribute("msg", msg);
			RequestDispatcher rd = request.getRequestDispatcher("product.jsp");
			rd.include(request, response);
			
		} catch (IndexOutOfBoundsException e) {
			
			e.printStackTrace();
		} catch (HibernateException e) {
			
			e.printStackTrace();
		}

	}
}
