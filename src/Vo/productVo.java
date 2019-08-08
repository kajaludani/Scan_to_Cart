package Vo;

public class productVo {
	private categoryVo categoryvo;
	private subcategoryVo subcategoryvo;
	private int productId;
	private String productName;
	private String productDiscription;
	private String productPrice;
	private String productSize;
	private String productStatus;
	private String barcode;
	private String floor;
	private String rack;
	private String offers;

	public String getOffers() {
		return offers;
	}
	public void setOffers(String offers) {
		this.offers = offers;
	}
	public categoryVo getCategoryvo() {
		return categoryvo;
	}
	public void setCategoryvo(categoryVo categoryvo) {
		this.categoryvo = categoryvo;
	}
	public subcategoryVo getSubcategoryvo() {
		return subcategoryvo;
	}
	public void setSubcategoryvo(subcategoryVo subcategoryvo) {
		this.subcategoryvo = subcategoryvo;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductDiscription() {
		return productDiscription;
	}
	public void setProductDiscription(String productDiscription) {
		this.productDiscription = productDiscription;
	}
	public String getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}
	public String getProductSize() {
		return productSize;
	}
	public void setProductSize(String productSize) {
		this.productSize = productSize;
	}
	public String getProductStatus() {
		return productStatus;
	}
	public void setProductStatus(String productStatus) {
		this.productStatus = productStatus;
	}
	public String getBarcode() {
		return barcode;
	}
	public void setBarcode(String barcode) {
		this.barcode = barcode;
	}
	public String getFloor() {
		return floor;
	}
	public void setFloor(String floor) {
		this.floor = floor;
	}
	public String getRack() {
		return rack;
	}
	public void setRack(String rack) {
		this.rack = rack;
	}


}
