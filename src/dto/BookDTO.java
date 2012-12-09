package dto;

public class BookDTO {

	String isbn;
	String title;
	String author;
	String translator;
	String publisher;
	String published_date;
	int price;

	public String getTitle() {
		return title;
	}

	public void setTitle(String id) {
		this.title = title;
	}

}
