package sec01.exam05;

public interface RemoteControl {

	int MAX_VOLUME = 10; // int 앞에 public static final 생략가능
	int MIN_VOLUME = 0; // int 앞에 public static final 생략가능

	//추상메소드
	void turnOn(); // void 앞에 public abstract 생략가능
	void turnOff(); // void 앞에 public abstract 생략가능
	void setVolume(int volume); // void 앞에 public abstract 생략가능
	
}
//인터페이스 구현
