package Vo;

public class FileVO {

	private int fileid;
	private String filename;
	private String encryptedfilename;
	private productVo vo;
	private wishlistVo wishlistVo;
	
	
	public wishlistVo getWishlistVo() {
		return wishlistVo;
	}
	public void setWishlistVo(wishlistVo wishlistVo) {
		this.wishlistVo = wishlistVo;
	}
	public int getFileid() {
		return fileid;
	}
	public void setFileid(int fileid) {
		this.fileid = fileid;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getEncryptedfilename() {
		return encryptedfilename;
	}
	public void setEncryptedfilename(String encryptedfilename) {
		this.encryptedfilename = encryptedfilename;
	}
	public productVo getVo() {
		return vo;
	}
	public void setVo(productVo vo) {
		this.vo = vo;
	}

	
		
}
