package movie.board;

import java.sql.Timestamp;

public class CommentDataBean {
	private int num;
	private String id;//아이디
	private String content;//비밀번호
	private Timestamp reg;//가입일자
	private int ref;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getReg() {
		return reg;
	}
	public void setReg(Timestamp reg) {
		this.reg = reg;
	}

	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}

}
