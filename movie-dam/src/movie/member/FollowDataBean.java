package movie.member;
import java.sql.Timestamp;

public class FollowDataBean {
	private int fol_id;
	private int mem_id;
	private int target_mem_id;
	private Timestamp fol_datetime;
	
	public int getFol_id() {
		return fol_id;
	}
	public void setFol_id(int fol_id) {
		this.fol_id = fol_id;
	}
	public int getMem_id() {
		return mem_id;
	}
	public void setMem_id(int mem_id) {
		this.mem_id = mem_id;
	}
	public int getTarget_mem_id() {
		return target_mem_id;
	}
	public void setTarget_mem_id(int target_mem_id) {
		this.target_mem_id = target_mem_id;
	}
	public Timestamp getFol_datetime() {
		return fol_datetime;
	}
	public void setFol_datetime(Timestamp fol_datetime) {
		this.fol_datetime = fol_datetime;
	}
}
