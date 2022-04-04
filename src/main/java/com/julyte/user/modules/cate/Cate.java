package com.julyte.user.modules.cate;

import java.util.ArrayList;
import java.util.List;

public class Cate {

	public static List<Cate> cachedCodeArrayList = new ArrayList<Cate>();

// oyCate

	private String oyctSeq;
	private String oyctName;
	private String oyctParents;
	private String oyctDepth;
	private String oyctOrder;
	private Integer oyctDelNy;

	public String getOyctSeq() {
		return oyctSeq;
	}

	public String getOyctName() {
		return oyctName;
	}

	public String getOyctParents() {
		return oyctParents;
	}

	public String getOyctDepth() {
		return oyctDepth;
	}

	public String getOyctOrder() {
		return oyctOrder;
	}

	public Integer getOyctDelNy() {
		return oyctDelNy;
	}

	public void setOyctSeq(String oyctSeq) {
		this.oyctSeq = oyctSeq;
	}

	public void setOyctName(String oyctName) {
		this.oyctName = oyctName;
	}

	public void setOyctParents(String oyctParents) {
		this.oyctParents = oyctParents;
	}

	public void setOyctDepth(String oyctDepth) {
		this.oyctDepth = oyctDepth;
	}

	public void setOyctOrder(String oyctOrder) {
		this.oyctOrder = oyctOrder;
	}

	public void setOyctDelNy(Integer oyctDelNy) {
		this.oyctDelNy = oyctDelNy;
	}

}
