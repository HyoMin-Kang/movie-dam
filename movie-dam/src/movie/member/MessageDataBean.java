package movie.member;
import java.sql.Timestamp;

public class MessageDataBean {
	private int msg_id;
	private String msg_content;
	private int msg_type;
	private int send_mem_id;
	private int recv_mem_id;
	private Timestamp msg_datetime;
	private Timestamp msg_read_datetime;
	private int related_msg_id;
	
	public int getMsg_id() {
		return msg_id;
	}
	public void setMsg_id(int msg_id) {
		this.msg_id = msg_id;
	}
	public String getMsg_content() {
		return msg_content;
	}
	public void setMsg_content(String msg_content) {
		this.msg_content = msg_content;
	}
	public int getMsg_type() {
		return msg_type;
	}
	public void setMsg_type(int msg_type) {
		this.msg_type = msg_type;
	}
	public int getSend_mem_id() {
		return send_mem_id;
	}
	public void setSend_mem_id(int send_mem_id) {
		this.send_mem_id = send_mem_id;
	}
	public int getRecv_mem_id() {
		return recv_mem_id;
	}
	public void setRecv_mem_id(int recv_mem_id) {
		this.recv_mem_id = recv_mem_id;
	}
	public Timestamp getMsg_datetime() {
		return msg_datetime;
	}
	public void setMsg_datetime(Timestamp msg_datetime) {
		this.msg_datetime = msg_datetime;
	}
	public Timestamp getMsg_read_datetime() {
		return msg_read_datetime;
	}
	public void setMsg_read_datetime(Timestamp msg_read_datetime) {
		this.msg_read_datetime = msg_read_datetime;
	}
	public int getRelated_msg_id() {
		return related_msg_id;
	}
	public void setRelated_msg_id(int related_msg_id) {
		this.related_msg_id = related_msg_id;
	}	
}
