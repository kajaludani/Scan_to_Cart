package Vo;

import java.io.Serializable;

public class categoryVo implements Serializable {
	private int categoryId;
	private String categoryName;
	private String categoryDiscription;
	private String categoryStatus;

	public String getCategoryStatus() {
		return categoryStatus;
	}
	public void setCategoryStatus(String categoryStatus) {
		this.categoryStatus = categoryStatus;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getCategoryDiscription() {
		return categoryDiscription;
	}
	public void setCategoryDiscription(String categoryDiscription) {
		this.categoryDiscription = categoryDiscription;
	}
	
	
	
}
