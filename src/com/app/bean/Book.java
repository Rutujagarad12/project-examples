package com.app.bean;

public class Book 
{
	int Book_id,quant;
	String image;
	double total;
	
	// book id and total
	public String getImage() {
		return image;
		
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	public int getQuant() {
		return quant;
	}
	public void setQuant(int quant) {
		this.quant = quant;
	}

	String author_name,Book_name;
	double price;
	public void setPrice(double price) {
		this.price = price;
	}
	public int getBook_id() 
	{
		return Book_id;
	}
	public String getAuthor_name() 
	{
		return author_name;
	}
	public String getBook_name() 
	{
		return Book_name;
	}
	
	public void setBook_id(int book_id) {
		Book_id = book_id;
	}
	public void setAuthor_name(String author_name) {
		this.author_name = author_name;
	}
	public void setBook_name(String book_name) {
		Book_name = book_name;
	}
	public double getPrice() {
		return price;
	}
	

	
	
}
