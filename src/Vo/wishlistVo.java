package Vo;

public class wishlistVo {
	private int wishlistId;
	private String amount;
	private String wishStatus;
	private productVo productvo;
	private loginVo loginVo;

	
	public String getWishStatus() {
		return wishStatus;
	}
	public void setWishStatus(String wishStatus) {
		this.wishStatus = wishStatus;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public int getWishlistId() {
		return wishlistId;
	}
	public void setWishlistId(int wishlistId) {
		this.wishlistId = wishlistId;
	}
	public productVo getProductvo() {
		return productvo;
	}
	public void setProductvo(productVo productvo) {
		this.productvo = productvo;
	}
	public loginVo getLoginVo() {
		return loginVo;
	}
	public void setLoginVo(loginVo loginVo) {
		this.loginVo = loginVo;
	}

	
}
