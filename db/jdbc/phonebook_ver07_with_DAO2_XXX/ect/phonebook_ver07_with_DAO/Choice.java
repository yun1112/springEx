package phonebook_ver07_with_DAO;

//2.interface기반의 상수 표현->이름에 부여된 상수 기반으로 메뉴 선택
//3.PhoneInfor 클래스에 interface 추가->추상 클래스화
//System.out.println("1.대학 2.회사 3.동호회");
public interface Choice {
	// 인터페이스 내 선언된 변수 public static final 생략 가능
	int CREATE = 1, EDIT = 2, DELETE = 3, SEARCH = 4, SHOW = 5, EXIT = 6;
	int UNIV = 1, COMPANY = 2, CAFE = 3;
}