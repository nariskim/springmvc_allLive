package com.julyte.user.modules.allLive;

public class AllLiveVo {
	private String oymbSeq;
	private String oyjqSeq;
	private String oynaSeq;
	private String oymnSeq;
	private String oymaSeq;
	private String oympSeq;
	private String oymeSeq;
	private String oypdSeq;
	private String oyspSeq;
	private String oyctSeq;

	// oyMemberSearch
	private String regDateTime;
	private String modDateTime;
	private String oymbDob;

	private Integer scOptionDate;
	private String scDateStart;
	private String scDateEnd;
	private Integer scOymbDelNy;

	// common
	private Integer scOption;
	private String scValue;

	// Paging

	private int thisPage = 1; // 현재 페이지
	private int rowNumToShow = 10; // 화면에 보여줄 데이터 줄 갯수
	private int pageNumToShow = 5; // 화면에 보여줄 페이징 번호 갯수

	private int totalRows; // 전체 데이터 갯수
	private int totalPages; // 전체 페이지 번호
	private int startPage; // 시작 페이지 번호
	private int endPage; // 마지막 페이지 번호

	private int startRnumForOracle = 1; // 쿼리 시작 row
	private int endRnumForOracle; // 쿼리 끝 row
	private Integer RNUM;

	private int startRnumForMysql = 0; // 쿼리 시작 row

	public void setParamsPaging(int totalRowsParam) {

		totalRows = totalRowsParam;

		totalPages = totalRows / rowNumToShow;

		if (totalRows % rowNumToShow > 0) {
			totalPages = totalPages + 1;
		}

		if (totalPages < thisPage) {
			thisPage = totalPages;
		}

		startPage = (((thisPage - 1) / pageNumToShow) * pageNumToShow + 1);

		endPage = (startPage + pageNumToShow - 1);

		if (endPage > totalPages) {
			endPage = (totalPages);
		}

		endRnumForOracle = ((rowNumToShow * thisPage));
		startRnumForOracle = ((endRnumForOracle - rowNumToShow) + 1);
		if (startRnumForOracle < 1)
			startRnumForOracle = 1;

		if (thisPage == 1 || thisPage == 0) {
			startRnumForMysql = 0;
		} else {
			startRnumForMysql = ((rowNumToShow * (thisPage - 1)));
		}

		System.out.println("getThisPage():" + thisPage);
		System.out.println("getTotalRows():" + totalRows);
		System.out.println("getRowNumToShow():" + rowNumToShow);
		System.out.println("getTotalPages():" + totalPages);
		System.out.println("getStartPage():" + startPage);
		System.out.println("getEndPage():" + endPage);
		System.out.println("getStartRnumForOracle():" + startRnumForOracle);
		System.out.println("getEndRnumForOracle():" + endRnumForOracle);
		System.out.println("getStartRnumForMysql(): " + startRnumForMysql);

	}

	private String[] checkboxSeqArray;

	public String getOymbSeq() {
		return oymbSeq;
	}

	public String getOyjqSeq() {
		return oyjqSeq;
	}

	public String getOynaSeq() {
		return oynaSeq;
	}

	public String getOymnSeq() {
		return oymnSeq;
	}

	public String getOymaSeq() {
		return oymaSeq;
	}

	public String getOympSeq() {
		return oympSeq;
	}

	public String getOymeSeq() {
		return oymeSeq;
	}

	public String getOypdSeq() {
		return oypdSeq;
	}

	public String getOyspSeq() {
		return oyspSeq;
	}

	public String getOyctSeq() {
		return oyctSeq;
	}

	public String getRegDateTime() {
		return regDateTime;
	}

	public String getModDateTime() {
		return modDateTime;
	}

	public String getOymbDob() {
		return oymbDob;
	}

	public Integer getScOptionDate() {
		return scOptionDate;
	}

	public String getScDateStart() {
		return scDateStart;
	}

	public String getScDateEnd() {
		return scDateEnd;
	}

	public Integer getScOymbDelNy() {
		return scOymbDelNy;
	}

	public Integer getScOption() {
		return scOption;
	}

	public String getScValue() {
		return scValue;
	}

	public int getThisPage() {
		return thisPage;
	}

	public int getRowNumToShow() {
		return rowNumToShow;
	}

	public int getPageNumToShow() {
		return pageNumToShow;
	}

	public int getTotalRows() {
		return totalRows;
	}

	public int getTotalPages() {
		return totalPages;
	}

	public int getStartPage() {
		return startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public int getStartRnumForOracle() {
		return startRnumForOracle;
	}

	public int getEndRnumForOracle() {
		return endRnumForOracle;
	}

	public Integer getRNUM() {
		return RNUM;
	}

	public int getStartRnumForMysql() {
		return startRnumForMysql;
	}

	public String[] getCheckboxSeqArray() {
		return checkboxSeqArray;
	}

	public void setOymbSeq(String oymbSeq) {
		this.oymbSeq = oymbSeq;
	}

	public void setOyjqSeq(String oyjqSeq) {
		this.oyjqSeq = oyjqSeq;
	}

	public void setOynaSeq(String oynaSeq) {
		this.oynaSeq = oynaSeq;
	}

	public void setOymnSeq(String oymnSeq) {
		this.oymnSeq = oymnSeq;
	}

	public void setOymaSeq(String oymaSeq) {
		this.oymaSeq = oymaSeq;
	}

	public void setOympSeq(String oympSeq) {
		this.oympSeq = oympSeq;
	}

	public void setOymeSeq(String oymeSeq) {
		this.oymeSeq = oymeSeq;
	}

	public void setOypdSeq(String oypdSeq) {
		this.oypdSeq = oypdSeq;
	}

	public void setOyspSeq(String oyspSeq) {
		this.oyspSeq = oyspSeq;
	}

	public void setOyctSeq(String oyctSeq) {
		this.oyctSeq = oyctSeq;
	}

	public void setRegDateTime(String regDateTime) {
		this.regDateTime = regDateTime;
	}

	public void setModDateTime(String modDateTime) {
		this.modDateTime = modDateTime;
	}

	public void setOymbDob(String oymbDob) {
		this.oymbDob = oymbDob;
	}

	public void setScOptionDate(Integer scOptionDate) {
		this.scOptionDate = scOptionDate;
	}

	public void setScDateStart(String scDateStart) {
		this.scDateStart = scDateStart;
	}

	public void setScDateEnd(String scDateEnd) {
		this.scDateEnd = scDateEnd;
	}

	public void setScOymbDelNy(Integer scOymbDelNy) {
		this.scOymbDelNy = scOymbDelNy;
	}

	public void setScOption(Integer scOption) {
		this.scOption = scOption;
	}

	public void setScValue(String scValue) {
		this.scValue = scValue;
	}

	public void setThisPage(int thisPage) {
		this.thisPage = thisPage;
	}

	public void setRowNumToShow(int rowNumToShow) {
		this.rowNumToShow = rowNumToShow;
	}

	public void setPageNumToShow(int pageNumToShow) {
		this.pageNumToShow = pageNumToShow;
	}

	public void setTotalRows(int totalRows) {
		this.totalRows = totalRows;
	}

	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public void setStartRnumForOracle(int startRnumForOracle) {
		this.startRnumForOracle = startRnumForOracle;
	}

	public void setEndRnumForOracle(int endRnumForOracle) {
		this.endRnumForOracle = endRnumForOracle;
	}

	public void setRNUM(Integer rNUM) {
		RNUM = rNUM;
	}

	public void setStartRnumForMysql(int startRnumForMysql) {
		this.startRnumForMysql = startRnumForMysql;
	}

	public void setCheckboxSeqArray(String[] checkboxSeqArray) {
		this.checkboxSeqArray = checkboxSeqArray;
	}

	
}
