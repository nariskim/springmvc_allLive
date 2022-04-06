package com.julyte.user.modules.code;

import java.util.ArrayList;
import java.util.List;

public class Code {

	// oyCodeGroup

	private String oycgSeq = "";
	private String oycgName = "";
	private String oycgNameEng;
	private Integer oycgDelNy;
	// oyCode

	private String oycdSeq = "";
	private String oycdName = "";
	private String oycdNameEng = "";
	private Integer oycdDelNy;
//		private String oycgSeq = "";

	public static List<Code> cachedCodeArrayList = new ArrayList<Code>();

	public String getOycgSeq() {
		return oycgSeq;
	}

	public String getOycgName() {
		return oycgName;
	}

	public String getOycgNameEng() {
		return oycgNameEng;
	}

	public Integer getOycgDelNy() {
		return oycgDelNy;
	}

	public String getOycdSeq() {
		return oycdSeq;
	}

	public String getOycdName() {
		return oycdName;
	}

	public String getOycdNameEng() {
		return oycdNameEng;
	}

	public Integer getOycdDelNy() {
		return oycdDelNy;
	}

	public void setOycgSeq(String oycgSeq) {
		this.oycgSeq = oycgSeq;
	}

	public void setOycgName(String oycgName) {
		this.oycgName = oycgName;
	}

	public void setOycgNameEng(String oycgNameEng) {
		this.oycgNameEng = oycgNameEng;
	}

	public void setOycgDelNy(Integer oycgDelNy) {
		this.oycgDelNy = oycgDelNy;
	}

	public void setOycdSeq(String oycdSeq) {
		this.oycdSeq = oycdSeq;
	}

	public void setOycdName(String oycdName) {
		this.oycdName = oycdName;
	}

	public void setOycdNameEng(String oycdNameEng) {
		this.oycdNameEng = oycdNameEng;
	}

	public void setOycdDelNy(Integer oycdDelNy) {
		this.oycdDelNy = oycdDelNy;
	}

}
