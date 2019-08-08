package Controller;

import java.io.File;
import java.io.FileOutputStream;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.oned.Code39Writer;

public class Writter {

	public static void main(String args[]){
		try{

			String text = "1234556"; // this is the text that we want to encode  
			  
			int width = 400;  
			int height = 300; // change the height and width as per your requirement  
			  
			///(ImageIO.getWriterFormatNames() returns a list of supported formats)  
			String imageFormat = "png"; // could be "gif", "tiff", "jpeg"   
			  
			BitMatrix bitMatrix = new Code39Writer().encode(text, BarcodeFormat.CODE_39, width, height);  
			MatrixToImageWriter.writeToStream(bitMatrix, imageFormat, new FileOutputStream(new File("D:\\Project\\qrcode.png")));		
			System.out.println("QR Code Generated.");			
		
		}catch(Exception e){
			System.out.println(e);
		}
	}
}
