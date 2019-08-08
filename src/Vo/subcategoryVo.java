package Vo;

public class subcategoryVo {
	private int subcategoryId;
	private String subcategoryName;
	private String subcategoryDiscription;
	private categoryVo categoryvo;
	private String subcategoryStatus;
	public int getSubcategoryId() {
		return subcategoryId;
	}
	public void setSubcategoryId(int subcategoryId) {
		this.subcategoryId = subcategoryId;
	}
	public String getSubcategoryName() {
		return subcategoryName;
	}
	public void setSubcategoryName(String subcategoryName) {
		this.subcategoryName = subcategoryName;
	}
	public String getSubcategoryDiscription() {
		return subcategoryDiscription;
	}
	public void setSubcategoryDiscription(String subcategoryDiscription) {
		this.subcategoryDiscription = subcategoryDiscription;
	}
	public categoryVo getCategoryvo() {
		return categoryvo;
	}
	public void setCategoryvo(categoryVo categoryvo) {
		this.categoryvo = categoryvo;
	}
	public String getSubcategoryStatus() {
		return subcategoryStatus;
	}
	public void setSubcategoryStatus(String subcategoryStatus) {
		this.subcategoryStatus = subcategoryStatus;
	}
}