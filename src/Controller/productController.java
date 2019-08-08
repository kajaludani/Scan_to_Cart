package Controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;
import java.sql.Timestamp;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.oned.Code39Writer;

import Dao.categoryDao;
import Dao.productDao;
import Dao.subcategoryDao;
import Vo.FileVO;
import Vo.categoryVo;
import Vo.productVo;
import Vo.subcategoryVo;

/**
 * Servlet implementation class productController
 */
@WebServlet("/productController")
@MultipartConfig
public class productController extends HttpServlet {
	private static final long serialVersionUID = 1L;       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public productController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag=request.getParameter("flag");
		if(flag.equals("search"))
		{
			search(request,response);
		}
		else if(flag.equals("edit"))
		{
		
		edit(request,response);
		
	}
		else if(flag.equals("delete"))
		{
			delete(request,response);
			
		}
		else if(flag.equals("productsearch"))
		{
			productsearch(request,response);
			
		}
		else if(flag.equals("loadsubcategory"))
		{
			loadsubcategory(request,response);
		}
		
	}

	private void loadsubcategory(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		categoryVo categoryvo=new categoryVo();
		categoryDao categorydao=new categoryDao();
		List ls=categorydao.searchCategory(categoryvo);
		
		subcategoryVo subcategoryvo=new subcategoryVo();
		subcategoryDao subcategorydao=new subcategoryDao();
		List ls1=subcategorydao.searchSubCategory(subcategoryvo);
		
		HttpSession session = request.getSession();
		
		session.setAttribute("cList",ls);
		session.setAttribute("subcList",ls1);
		
		response.sendRedirect("Admin/addProduct.jsp");
		
	}

	private void productsearch(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		productVo productvo =new productVo();
		
		productDao productDAO=new productDao();
		List ls1=productDAO.searchProduct(productvo);
		HttpSession session = request.getSession();
		
		session.setAttribute("List", ls1);		
	
		
		response.sendRedirect("User/searchProduct.jsp");


	}

	private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
			int id=Integer.parseInt(request.getParameter("id"));
			
			productVo productvo =new productVo();
			productvo.setProductId(id);
				
			productDao productDAO=new productDao();
			productDAO.deleteProduct(productvo);
			
			search(request, response);
	}

	private void edit(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		int id=Integer.parseInt(request.getParameter("id"));
		
		productVo productvo =new productVo();
				productvo.setProductId(id);
				
				productDao productDAO=new productDao();
			
					
					HttpSession session = request.getSession();
					List ls=productDAO.editProduct(productvo);
					session.setAttribute("editList", ls);
					
					response.sendRedirect("Admin/editProduct.jsp");
				

	}

	private void search(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		productVo productvo =new productVo();
		
		productDao productDAO=new productDao();
		List ls=productDAO.searchProduct(productvo);
		HttpSession session = request.getSession();
		
		session.setAttribute("List", ls);		
	
		
		response.sendRedirect("Admin/viewProduct.jsp");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String flag=request.getParameter("flag");
		if(flag.equals("insert"))
		{
			insert(request,response);
		}
		else if(flag.equals("update"))
		{
			update(request,response);
		}
		
	}

	private void update(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
int id=Integer.parseInt(request.getParameter("id"));
		
		String productName=request.getParameter("productName");
		String productDiscription=request.getParameter("productDiscription");
		String productSize=request.getParameter("productSize");
		String productPrice=request.getParameter("productPrice");
		String floor=request.getParameter("floor");
		String rack=request.getParameter("rack");
		String offers=request.getParameter("offers");

		
		productVo productvo =new productVo();
		productvo.setProductId(id);
		productvo.setProductName(productName);
		productvo.setProductDiscription(productDiscription);
		productvo.setProductSize(productSize);
		productvo.setProductPrice(productPrice);
		productvo.setFloor(floor);
		productvo.setRack(rack);
		productvo.setOffers(offers);

		productvo.setProductStatus("Active");
		
		productDao productDAO=new productDao();
		productDAO.updateProduct(productvo);
	}

	private void insert(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		// TODO Auto-generated method stub
		int categoryId=Integer.parseInt(request.getParameter("categoryId"));
		int subcategoryId=Integer.parseInt(request.getParameter("subcategoryId"));
		String productName=request.getParameter("productName");
		String productDiscription=request.getParameter("productDiscription");
		String productSize=request.getParameter("productSize");
		String productPrice=request.getParameter("productPrice");
		String offers  = request.getParameter("offers");
		
		categoryVo categoryvo=new categoryVo();
		categoryvo.setCategoryId(categoryId);

		subcategoryVo subcategoryvo=new subcategoryVo();
		subcategoryvo.setSubcategoryId(subcategoryId);
		
		productVo productvo =new productVo();
		productvo.setCategoryvo(categoryvo);
		productvo.setSubcategoryvo(subcategoryvo);
		productvo.setProductName(productName);
		productvo.setProductDiscription(productDiscription);
		productvo.setProductSize(productSize);
		productvo.setProductPrice(productPrice);
		productvo.setOffers(offers);
		
		String Floor=request.getParameter("Floor");
		String Rack=request.getParameter("Rack");
		productvo.setProductStatus("Active");
		productvo.setFloor(Floor);

		productvo.setRack(Rack);
		Timestamp timestamp = new Timestamp(System.currentTimeMillis());
		long value = timestamp.getTime();
		String text = String.valueOf(value); // this is the text that we want to encode  

		productvo.setBarcode(text);
		productDao productDAO=new productDao();
		productDAO.insertProduct(productvo);
		
		for(Part filePart : request.getParts())
		{
			if(filePart.getSubmittedFileName()!=null && !filePart.getSubmittedFileName().equals(""))
			{
				String fileName = filePart.getSubmittedFileName();
				InputStream fileContent = filePart.getInputStream();
				// ... (do your job here)

				byte[] buffer = new byte[fileContent.available()];
				fileContent.read(buffer);

				String filePath = getServletContext().getRealPath(request.getServletPath());

				System.out.println("filepath :: "+filePath);

				int path = filePath.lastIndexOf('\\');
				String path1= filePath.substring(0, path) +"\\doc\\";

				/*File targetFile = new File(path1+fileName);
				OutputStream outStream = new FileOutputStream(targetFile);
				outStream.write(buffer);*/

				//uncoment this if you want to encrypt name of file n coment above 3 line
				String encryptedFileName=encryptFileName(fileName);
				File targetEncryptFile = new File(path1+encryptedFileName);
				OutputStream outStream = new FileOutputStream(targetEncryptFile);
				outStream.write(buffer);

				System.out.println("File Output Path :: "+path1+fileName);

				outStream.close();

				FileVO AttechmentVO=new FileVO();
				AttechmentVO.setFilename(fileName);
				AttechmentVO.setEncryptedfilename(encryptedFileName);
				AttechmentVO.setVo(productvo);

				productDAO.insertAttachment(AttechmentVO);

				
			}
			
			try{

				  
				int width = 400;  
				int height = 300; // change the height and width as per your requirement  
				  
				///(ImageIO.getWriterFormatNames() returns a list of supported formats)  
				String imageFormat = "png"; // could be "gif", "tiff", "jpeg"   
				  
				BitMatrix bitMatrix = new Code39Writer().encode(text, BarcodeFormat.CODE_39, width, height);  
				MatrixToImageWriter.writeToStream(bitMatrix, imageFormat, new FileOutputStream(new File("D:\\Project\\" +productName+ ".png")));		
				System.out.println("QR Code Generated.");			
			
			}catch(Exception e){
				System.out.println(e);
			}


			
			
		}		
		
		
		response.sendRedirect("Admin/addProduct.jsp");
	}
	private String encryptFileName(String fileName){

		Random r = new Random();
		String file[] = fileName.split("\\.");

		byte[] unencodedFile = file[0].getBytes();
		MessageDigest md = null;
		try {
			md = MessageDigest.getInstance("MD5");
		} catch (Exception e) {}
		md.reset();
		md.update(unencodedFile);
		byte[] encodedFile = md.digest();
		StringBuffer buf = new StringBuffer();
		for (int i = 0; i < encodedFile.length; i++) {
			if (((int) encodedFile[i] & 0xff) < 0x10) {
				buf.append("0");
			}
			buf.append(Long.toString((int) encodedFile[i] & 0xff, 16));
		}

		String encryptedFileName=(buf.toString()).concat(String.valueOf(r.nextInt())); 


		return encryptedFileName+"."+file[file.length-1];

	}


}
