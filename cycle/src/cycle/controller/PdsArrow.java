package cycle.controller;

public class PdsArrow {
	private int depth=0;
	
	public void setDepth(int depth) {
		this.depth = depth;
	}

	public String getArrow(){
		String rs = "<img src='img/arrow.png' width='20px' height='20px' />";
		String nbsp = "&nbsp;&nbsp;&nbsp;&nbsp;";
		String ts="";
		for(int i=0; i<depth; i++){
			ts += nbsp;
		}
		return depth == 0 ? "" : ts+rs;
	}
}
