package dto;

public class BookVO {
	int num;
	String category;
	String Title;
	String price;
	String summary;
	String author;
	String grade;
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	String pub;
	String pictureurl;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		Title = title;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPub() {
		return pub;
	}
	public void setPub(String pub) {
		this.pub = pub;
	}
	public String getPictureurl() {
		return pictureurl;
	}
	public void setPictureurl(String pictureurl) {
		this.pictureurl = pictureurl;
	}
	@Override
	public String toString() {
		return "BookVO [num=" + num + ", category=" + category + ", Title=" + Title + ", price=" + price + ", summary="
				+ summary + ", author=" + author + ", grade=" + grade + ", pub=" + pub + ", pictureurl=" + pictureurl
				+ "]";
	}
	
}