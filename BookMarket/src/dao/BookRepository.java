package dao;

import java.util.ArrayList;
import java.util.List;
import dto.Book;

public class BookRepository {
	
	// BookRepository클래스의 기본 생성자에 대한 객체 변수 instance를 만들어 줌
	private static BookRepository instance = new BookRepository();
	
	// 객체 변수 instance에 대한 Getter() 메소드
	public static BookRepository getInstance() {
		return instance;
	}

	// 도서 목록을 저장하기 위한 List<Book> 객체 타입의 변수
	private List<Book> listOfBooks = new ArrayList<Book>();
	
	// 기본 생성자
	public BookRepository() {
		
		// 책 추가
		Book b = new Book("P001", "[Hello Coding]HTML5+CSS3", 15000);
		
		b.setAuthor("황재호");
		b.setDescription("워드나 PPT 문서를 만들 수 있나요? 그러면 문제 없습니다. 지금 바로 웹페이지 제작에 도전해보세요. 지금 당장 컴퓨터가 없어도 괜찮습니다. 코드와 실행 화면이 바로 보여서 눈으...");
		b.setPublisher("한빛미디어");
		b.setCategory("Book");
		b.setUnitsInStock(1000);
		b.setReleaseDate("2022년 9월 28일");
		b.setTotalPages(300);
		b.setCondition("New");
		
		b.setFilename("P001.png");
		
		listOfBooks.add(b);
		
		Book b2 = new Book("P002", "[IT모바일]쉽게 배우는 자바 프로그래밍", 27000);
		
		b2.setAuthor("우종정");
		b2.setDescription("객체 지향의 핵심과 자바의 현대적 기능을 충실히 다루면서도 초보자가 쉽게 학습할 수 있게 구성했습니다. 시각화 도구를 활용한 개념 설명과 군더더기 없는 핵심 코드를 통해 개념과 구현...");
		b2.setPublisher("한빛아카데미");
		b2.setCategory("Book");
		b2.setUnitsInStock(1000);
		b2.setReleaseDate("2022년 9월 28일");
		b2.setTotalPages(300);
		b2.setCondition("New");
		
		b2.setFilename("P002.png");
		
		listOfBooks.add(b2);
		
		Book b3 = new Book("P003", "[IT모바일]스프링4 입문", 27000);
		
		b3.setAuthor("하세가와 유이치, 모모노 와타루, 토키 코헤이(권은철, 전민수)");
		b3.setDescription("스프링은 단순히 사용 방법만 익히는 것보다 아키텍처를 어떻게 이해하고 설계하는지가 더 중요합니다. 예제를 복사해 붙여넣는 식으로는 실제 개발에서 스프링을 제대로 활용할 수 없습니다...");
		b3.setPublisher("한빛미디어");
		b3.setCategory("Book");
		b3.setUnitsInStock(1000);
		b3.setReleaseDate("2022년 9월 28일");
		b3.setTotalPages(300);
		b3.setCondition("New");

		b3.setFilename("P003.png");
		
		listOfBooks.add(b3);

	}
	
	// listOfBooks에 저장된 모든 도서 목록을 가져오는 메소드
	public List<Book> getAllBooks(){
		return listOfBooks;
	}
	
	public void addBook(Book book) {
		listOfBooks.add(book);
	}
	
	// 상세보기
	public Book getBookById(String bookId) {
		
		// 자바빈객체 선언
		Book bookById = null;
		
		// listOfBooks 크기만큼 반복
		for(int i=0; i<listOfBooks.size(); i++) {
			Book bk = listOfBooks.get(i);
			if(bk!=null && bk.getBookId()!=null && bk.getBookId().contentEquals(bookId)) {
				bookById = bk;
				break;
			}
		}
		return bookById;
	}
}
