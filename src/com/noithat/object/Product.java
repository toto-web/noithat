package com.noithat.object;

import javax.persistence.*;

import org.hibernate.annotations.Type;

@Entity
@Table(name="product")
public class Product implements java.io.Serializable   {
	/**
	 * 
	 */
	private static final long serialVersionUID = -706859426150031355L;

	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "productId")
	private int productId;
	
	@Column(name = "productName")
<<<<<<< HEAD
	@Type(type="text")
	private String productName;
	
	@Column(name = "productPrice")
	private double productPrice;
=======
	private String productName;
	
	@Column(name = "productCode")
	@Type(type="text")
	private String productCode;
>>>>>>> HaiNtn - Commit code
	
	@Column(name = "categoriesId")
	private int categoriesId;
	
	@Column(name = "productDescription")
	@Type(type="text")
	private String productDescription;
	
	@Column(name = "productPicture")
	@Type(type="text")
	private String productPicture;
	
<<<<<<< HEAD
=======
	@Column(name = "listImages")
	@Type(type="text")
	private String listImages;
	
>>>>>>> HaiNtn - Commit code
	@Column(name = "productSeo")
	@Type(type="text")
	private String productSeo;
	
<<<<<<< HEAD
	@Column(name = "views")
	private int views;
=======
	@Column(name = "content")
	private String content;
	
	@Column(name = "isVisible")
	private int isVisible;
>>>>>>> HaiNtn - Commit code

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

<<<<<<< HEAD
	public double getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(double productPrice) {
		this.productPrice = productPrice;
	}

=======
	public String getProductCode() {
		return productCode;
	}

	public String getListImages() {
		return listImages;
	}

	public void setListImages(String listImages) {
		this.listImages = listImages;
	}

	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}
	
>>>>>>> HaiNtn - Commit code
	public int getCategoriesId() {
		return categoriesId;
	}

	public void setCategoriesId(int categoriesId) {
		this.categoriesId = categoriesId;
	}

	public String getProductDescription() {
		return productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

	public String getProductPicture() {
		return productPicture;
	}

	public void setProductPicture(String productPicture) {
		this.productPicture = productPicture;
	}

	public String getProductSeo() {
		return productSeo;
	}

	public void setProductSeo(String productSeo) {
		this.productSeo = productSeo;
	}

<<<<<<< HEAD
	public int getViews() {
		return views;
	}

	public void setViews(int views) {
		this.views = views;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
=======
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getIsVisible() {
		return isVisible;
	}

	public void setIsVisible(int isVisible) {
		this.isVisible = isVisible;
	}

>>>>>>> HaiNtn - Commit code
}
