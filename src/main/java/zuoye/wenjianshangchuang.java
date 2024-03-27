package zuoye;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.swing.filechooser.FileNameExtensionFilter;

/**
 * Servlet implementation class wenjianshangchuang
 */
@WebServlet("/wenjianshangchuang")
@MultipartConfig
public class wenjianshangchuang extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Part part = request.getPart
		part.write("e:/aaa.png");
		String dis =part.getHeader("conten-disoposition");
		String filName =dis.split(";")[2].split("=")[1].replaceAll("\"","");
		int pos = fileName.
	}

}
