package com.julyte.user.modules.allLive;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class AllLive {

// multi insert시 필요
	private Integer[] oympDefaultNyArray;
	private String[] oympNumberArray;
	private Integer[] oympTelecomCdArray;

	private Integer[] oymeDefaultNyArray;
	private String[] oymeEmailAccountArray;
	private Integer[] oymeEmailDomainCdArray;

	private Integer oymbAdminNy;
	private String oymbSeq;
	private Integer oymbGradeCd;
	private String oymbId;
	private String oymbName;
	private String oymbNameEng;
	private String oymbNickName;
	private String oymbPassword;
	private String oymbDob;
	private Integer oymbGenderCd;
	private Integer oymbSkinTypeCd;
	private Integer oymbPersonalColorCd;
	private Integer oymbInterestsCd;;
	private Integer oymbSmsConsentNy;
	private Integer oymbEmailConsentNy;
	private Integer oymbPushConsentNy;
	private Integer oymbSavedCd;
	private String oymbDesc;
	private Integer oymbDelNy;

	private Date regDateTime;
	private Date modDateTime;

	private String oyjqSeq;
	private String oyjqQuestionCd;
	private String oyjqAnswer;
	private Integer oyjqDelNy;

// oymbAddress	
	private String oymaSeq;
	private String oymaZipCode;
	private String oymaAddress1;
	private String oymaAddress2;
	private String oymaAddress3;
	private Integer oymaDelNy;
//	private String oymbSeq;

//	oymbNationality
	private String oymnSeq;
	private Integer oymnDelNy;
//	private String oymbSeq;
//	private String oynaSeq;

//	oyNationality
	private String oynaSeq;
	private String oynaName;
	private Integer oynaDelNy;

//	oymbPhone	
	private String oympSeq;
	private Integer oympDefaultNy;
	private Integer oympTelecomCd;
	private String oympNumber;
	private Integer oympDelNy;
//	private String oymbSeq;

// oyCodeGroup	
	private String oycgSeq;
	private String oycgName;
	private Integer oycgDelNy;

//	oyCate

//	oyProduct
	private String oypdSeq;
	private Integer oypdCate;
	private Integer oypdBrandCd;
	private String oypdBrand;
	private String oypdName;
	private Integer oypdPrice;
	private Integer oypdCountryCd;
	private Integer oypdDistributorCd;
	private Integer oypdManufactureCd;
	private Integer oypdDelNy;

//	oySaleProduct
	private String oyspSeq;
	private Integer oyspSaleNy;
	private Integer oyspCouponNy;
	private Integer oyspFreeGiftNy;
	private Integer oyspOneBuyGetOneFreeNy;
	private Integer oyspTwoBuyGetOneFreeNy;
	private Integer oyspTodayShipNy;
	private Integer oyspFreeShippingNy;

	private Integer oyspExculsiveNy;
	private Integer oyspSalePrice;
	private String oyspSalePeriodStart;
	private String oyspSalePeriodEnd;
	private Integer oyspDelNy;
//	private String oypdSeq;

	// oyCode
	private String oycdSeq;
	private String oycdName;
	private Integer oycdDelNy;
//	private String oycgSeq;

//	oymbEmail	
	private String oymeSeq;
	private Integer oymeDefaultNy;
	private String oymeEmailFull;
	private String oymeEmailAccount;
	private Integer oymeEmailDomainCd;
	private Integer oymeDelNy;
//	private String oymbSeq;

//	codeGroup code 저장	cate 저장????확인하기
	public static List<AllLive> cachedCodeArrayList = new ArrayList<AllLive>();

	public Integer[] getOympDefaultNyArray() {
		return oympDefaultNyArray;
	}

	public void setOympDefaultNyArray(Integer[] oympDefaultNyArray) {
		this.oympDefaultNyArray = oympDefaultNyArray;
	}

	public String[] getOympNumberArray() {
		return oympNumberArray;
	}

	public void setOympNumberArray(String[] oympNumberArray) {
		this.oympNumberArray = oympNumberArray;
	}

	public Integer[] getOympTelecomCdArray() {
		return oympTelecomCdArray;
	}

	public void setOympTelecomCdArray(Integer[] oympTelecomCdArray) {
		this.oympTelecomCdArray = oympTelecomCdArray;
	}

	public Integer[] getOymeDefaultNyArray() {
		return oymeDefaultNyArray;
	}

	public void setOymeDefaultNyArray(Integer[] oymeDefaultNyArray) {
		this.oymeDefaultNyArray = oymeDefaultNyArray;
	}

	public String[] getOymeEmailAccountArray() {
		return oymeEmailAccountArray;
	}

	public void setOymeEmailAccountArray(String[] oymeEmailAccountArray) {
		this.oymeEmailAccountArray = oymeEmailAccountArray;
	}

	public Integer[] getOymeEmailDomainCdArray() {
		return oymeEmailDomainCdArray;
	}

	public void setOymeEmailDomainCdArray(Integer[] oymeEmailDomainCdArray) {
		this.oymeEmailDomainCdArray = oymeEmailDomainCdArray;
	}

	public Integer getOymbAdminNy() {
		return oymbAdminNy;
	}

	public void setOymbAdminNy(Integer oymbAdminNy) {
		this.oymbAdminNy = oymbAdminNy;
	}

	public String getOymbSeq() {
		return oymbSeq;
	}

	public void setOymbSeq(String oymbSeq) {
		this.oymbSeq = oymbSeq;
	}

	public Integer getOymbGradeCd() {
		return oymbGradeCd;
	}

	public void setOymbGradeCd(Integer oymbGradeCd) {
		this.oymbGradeCd = oymbGradeCd;
	}

	public String getOymbId() {
		return oymbId;
	}

	public void setOymbId(String oymbId) {
		this.oymbId = oymbId;
	}

	public String getOymbName() {
		return oymbName;
	}

	public void setOymbName(String oymbName) {
		this.oymbName = oymbName;
	}

	public String getOymbNameEng() {
		return oymbNameEng;
	}

	public void setOymbNameEng(String oymbNameEng) {
		this.oymbNameEng = oymbNameEng;
	}

	public String getOymbNickName() {
		return oymbNickName;
	}

	public void setOymbNickName(String oymbNickName) {
		this.oymbNickName = oymbNickName;
	}

	public String getOymbPassword() {
		return oymbPassword;
	}

	public void setOymbPassword(String oymbPassword) {
		this.oymbPassword = oymbPassword;
	}

	public String getOymbDob() {
		return oymbDob;
	}

	public void setOymbDob(String oymbDob) {
		this.oymbDob = oymbDob;
	}

	public Integer getOymbGenderCd() {
		return oymbGenderCd;
	}

	public void setOymbGenderCd(Integer oymbGenderCd) {
		this.oymbGenderCd = oymbGenderCd;
	}

	public Integer getOymbSkinTypeCd() {
		return oymbSkinTypeCd;
	}

	public void setOymbSkinTypeCd(Integer oymbSkinTypeCd) {
		this.oymbSkinTypeCd = oymbSkinTypeCd;
	}

	public Integer getOymbPersonalColorCd() {
		return oymbPersonalColorCd;
	}

	public void setOymbPersonalColorCd(Integer oymbPersonalColorCd) {
		this.oymbPersonalColorCd = oymbPersonalColorCd;
	}

	public Integer getOymbInterestsCd() {
		return oymbInterestsCd;
	}

	public void setOymbInterestsCd(Integer oymbInterestsCd) {
		this.oymbInterestsCd = oymbInterestsCd;
	}

	public Integer getOymbSmsConsentNy() {
		return oymbSmsConsentNy;
	}

	public void setOymbSmsConsentNy(Integer oymbSmsConsentNy) {
		this.oymbSmsConsentNy = oymbSmsConsentNy;
	}

	public Integer getOymbEmailConsentNy() {
		return oymbEmailConsentNy;
	}

	public void setOymbEmailConsentNy(Integer oymbEmailConsentNy) {
		this.oymbEmailConsentNy = oymbEmailConsentNy;
	}

	public Integer getOymbPushConsentNy() {
		return oymbPushConsentNy;
	}

	public void setOymbPushConsentNy(Integer oymbPushConsentNy) {
		this.oymbPushConsentNy = oymbPushConsentNy;
	}

	public Integer getOymbSavedCd() {
		return oymbSavedCd;
	}

	public void setOymbSavedCd(Integer oymbSavedCd) {
		this.oymbSavedCd = oymbSavedCd;
	}

	public String getOymbDesc() {
		return oymbDesc;
	}

	public void setOymbDesc(String oymbDesc) {
		this.oymbDesc = oymbDesc;
	}

	public Integer getOymbDelNy() {
		return oymbDelNy;
	}

	public void setOymbDelNy(Integer oymbDelNy) {
		this.oymbDelNy = oymbDelNy;
	}

	public Date getRegDateTime() {
		return regDateTime;
	}

	public void setRegDateTime(Date regDateTime) {
		this.regDateTime = regDateTime;
	}

	public Date getModDateTime() {
		return modDateTime;
	}

	public void setModDateTime(Date modDateTime) {
		this.modDateTime = modDateTime;
	}

	public String getOyjqSeq() {
		return oyjqSeq;
	}

	public void setOyjqSeq(String oyjqSeq) {
		this.oyjqSeq = oyjqSeq;
	}

	public String getOyjqQuestionCd() {
		return oyjqQuestionCd;
	}

	public void setOyjqQuestionCd(String oyjqQuestionCd) {
		this.oyjqQuestionCd = oyjqQuestionCd;
	}

	public String getOyjqAnswer() {
		return oyjqAnswer;
	}

	public void setOyjqAnswer(String oyjqAnswer) {
		this.oyjqAnswer = oyjqAnswer;
	}

	public Integer getOyjqDelNy() {
		return oyjqDelNy;
	}

	public void setOyjqDelNy(Integer oyjqDelNy) {
		this.oyjqDelNy = oyjqDelNy;
	}

	public String getOymaSeq() {
		return oymaSeq;
	}

	public void setOymaSeq(String oymaSeq) {
		this.oymaSeq = oymaSeq;
	}

	public String getOymaZipCode() {
		return oymaZipCode;
	}

	public void setOymaZipCode(String oymaZipCode) {
		this.oymaZipCode = oymaZipCode;
	}

	public String getOymaAddress1() {
		return oymaAddress1;
	}

	public void setOymaAddress1(String oymaAddress1) {
		this.oymaAddress1 = oymaAddress1;
	}

	public String getOymaAddress2() {
		return oymaAddress2;
	}

	public void setOymaAddress2(String oymaAddress2) {
		this.oymaAddress2 = oymaAddress2;
	}

	public String getOymaAddress3() {
		return oymaAddress3;
	}

	public void setOymaAddress3(String oymaAddress3) {
		this.oymaAddress3 = oymaAddress3;
	}

	public Integer getOymaDelNy() {
		return oymaDelNy;
	}

	public void setOymaDelNy(Integer oymaDelNy) {
		this.oymaDelNy = oymaDelNy;
	}

	public String getOymnSeq() {
		return oymnSeq;
	}

	public void setOymnSeq(String oymnSeq) {
		this.oymnSeq = oymnSeq;
	}

	public Integer getOymnDelNy() {
		return oymnDelNy;
	}

	public void setOymnDelNy(Integer oymnDelNy) {
		this.oymnDelNy = oymnDelNy;
	}

	public String getOynaSeq() {
		return oynaSeq;
	}

	public void setOynaSeq(String oynaSeq) {
		this.oynaSeq = oynaSeq;
	}

	public String getOynaName() {
		return oynaName;
	}

	public void setOynaName(String oynaName) {
		this.oynaName = oynaName;
	}

	public Integer getOynaDelNy() {
		return oynaDelNy;
	}

	public void setOynaDelNy(Integer oynaDelNy) {
		this.oynaDelNy = oynaDelNy;
	}

	public String getOympSeq() {
		return oympSeq;
	}

	public void setOympSeq(String oympSeq) {
		this.oympSeq = oympSeq;
	}

	public Integer getOympDefaultNy() {
		return oympDefaultNy;
	}

	public void setOympDefaultNy(Integer oympDefaultNy) {
		this.oympDefaultNy = oympDefaultNy;
	}

	public Integer getOympTelecomCd() {
		return oympTelecomCd;
	}

	public void setOympTelecomCd(Integer oympTelecomCd) {
		this.oympTelecomCd = oympTelecomCd;
	}

	public String getOympNumber() {
		return oympNumber;
	}

	public void setOympNumber(String oympNumber) {
		this.oympNumber = oympNumber;
	}

	public Integer getOympDelNy() {
		return oympDelNy;
	}

	public void setOympDelNy(Integer oympDelNy) {
		this.oympDelNy = oympDelNy;
	}

	public String getOycgSeq() {
		return oycgSeq;
	}

	public void setOycgSeq(String oycgSeq) {
		this.oycgSeq = oycgSeq;
	}

	public String getOycgName() {
		return oycgName;
	}

	public void setOycgName(String oycgName) {
		this.oycgName = oycgName;
	}

	public Integer getOycgDelNy() {
		return oycgDelNy;
	}

	public void setOycgDelNy(Integer oycgDelNy) {
		this.oycgDelNy = oycgDelNy;
	}

	public String getOypdSeq() {
		return oypdSeq;
	}

	public void setOypdSeq(String oypdSeq) {
		this.oypdSeq = oypdSeq;
	}

	public Integer getOypdCate() {
		return oypdCate;
	}

	public void setOypdCate(Integer oypdCate) {
		this.oypdCate = oypdCate;
	}

	public Integer getOypdBrandCd() {
		return oypdBrandCd;
	}

	public void setOypdBrandCd(Integer oypdBrandCd) {
		this.oypdBrandCd = oypdBrandCd;
	}

	public String getOypdBrand() {
		return oypdBrand;
	}

	public void setOypdBrand(String oypdBrand) {
		this.oypdBrand = oypdBrand;
	}

	public String getOypdName() {
		return oypdName;
	}

	public void setOypdName(String oypdName) {
		this.oypdName = oypdName;
	}

	public Integer getOypdPrice() {
		return oypdPrice;
	}

	public void setOypdPrice(Integer oypdPrice) {
		this.oypdPrice = oypdPrice;
	}

	public Integer getOypdCountryCd() {
		return oypdCountryCd;
	}

	public void setOypdCountryCd(Integer oypdCountryCd) {
		this.oypdCountryCd = oypdCountryCd;
	}

	public Integer getOypdDistributorCd() {
		return oypdDistributorCd;
	}

	public void setOypdDistributorCd(Integer oypdDistributorCd) {
		this.oypdDistributorCd = oypdDistributorCd;
	}

	public Integer getOypdManufactureCd() {
		return oypdManufactureCd;
	}

	public void setOypdManufactureCd(Integer oypdManufactureCd) {
		this.oypdManufactureCd = oypdManufactureCd;
	}

	public Integer getOypdDelNy() {
		return oypdDelNy;
	}

	public void setOypdDelNy(Integer oypdDelNy) {
		this.oypdDelNy = oypdDelNy;
	}

	public String getOyspSeq() {
		return oyspSeq;
	}

	public void setOyspSeq(String oyspSeq) {
		this.oyspSeq = oyspSeq;
	}

	public Integer getOyspSaleNy() {
		return oyspSaleNy;
	}

	public void setOyspSaleNy(Integer oyspSaleNy) {
		this.oyspSaleNy = oyspSaleNy;
	}

	public Integer getOyspCouponNy() {
		return oyspCouponNy;
	}

	public void setOyspCouponNy(Integer oyspCouponNy) {
		this.oyspCouponNy = oyspCouponNy;
	}

	public Integer getOyspFreeGiftNy() {
		return oyspFreeGiftNy;
	}

	public void setOyspFreeGiftNy(Integer oyspFreeGiftNy) {
		this.oyspFreeGiftNy = oyspFreeGiftNy;
	}

	public Integer getOyspOneBuyGetOneFreeNy() {
		return oyspOneBuyGetOneFreeNy;
	}

	public void setOyspOneBuyGetOneFreeNy(Integer oyspOneBuyGetOneFreeNy) {
		this.oyspOneBuyGetOneFreeNy = oyspOneBuyGetOneFreeNy;
	}

	public Integer getOyspTwoBuyGetOneFreeNy() {
		return oyspTwoBuyGetOneFreeNy;
	}

	public void setOyspTwoBuyGetOneFreeNy(Integer oyspTwoBuyGetOneFreeNy) {
		this.oyspTwoBuyGetOneFreeNy = oyspTwoBuyGetOneFreeNy;
	}

	public Integer getOyspTodayShipNy() {
		return oyspTodayShipNy;
	}

	public void setOyspTodayShipNy(Integer oyspTodayShipNy) {
		this.oyspTodayShipNy = oyspTodayShipNy;
	}

	public Integer getOyspFreeShippingNy() {
		return oyspFreeShippingNy;
	}

	public void setOyspFreeShippingNy(Integer oyspFreeShippingNy) {
		this.oyspFreeShippingNy = oyspFreeShippingNy;
	}

	public Integer getOyspExculsiveNy() {
		return oyspExculsiveNy;
	}

	public void setOyspExculsiveNy(Integer oyspExculsiveNy) {
		this.oyspExculsiveNy = oyspExculsiveNy;
	}

	public Integer getOyspSalePrice() {
		return oyspSalePrice;
	}

	public void setOyspSalePrice(Integer oyspSalePrice) {
		this.oyspSalePrice = oyspSalePrice;
	}

	public String getOyspSalePeriodStart() {
		return oyspSalePeriodStart;
	}

	public void setOyspSalePeriodStart(String oyspSalePeriodStart) {
		this.oyspSalePeriodStart = oyspSalePeriodStart;
	}

	public String getOyspSalePeriodEnd() {
		return oyspSalePeriodEnd;
	}

	public void setOyspSalePeriodEnd(String oyspSalePeriodEnd) {
		this.oyspSalePeriodEnd = oyspSalePeriodEnd;
	}

	public Integer getOyspDelNy() {
		return oyspDelNy;
	}

	public void setOyspDelNy(Integer oyspDelNy) {
		this.oyspDelNy = oyspDelNy;
	}

	public String getOycdSeq() {
		return oycdSeq;
	}

	public void setOycdSeq(String oycdSeq) {
		this.oycdSeq = oycdSeq;
	}

	public String getOycdName() {
		return oycdName;
	}

	public void setOycdName(String oycdName) {
		this.oycdName = oycdName;
	}

	public Integer getOycdDelNy() {
		return oycdDelNy;
	}

	public void setOycdDelNy(Integer oycdDelNy) {
		this.oycdDelNy = oycdDelNy;
	}

	public String getOymeSeq() {
		return oymeSeq;
	}

	public void setOymeSeq(String oymeSeq) {
		this.oymeSeq = oymeSeq;
	}

	public Integer getOymeDefaultNy() {
		return oymeDefaultNy;
	}

	public void setOymeDefaultNy(Integer oymeDefaultNy) {
		this.oymeDefaultNy = oymeDefaultNy;
	}

	public String getOymeEmailFull() {
		return oymeEmailFull;
	}

	public void setOymeEmailFull(String oymeEmailFull) {
		this.oymeEmailFull = oymeEmailFull;
	}

	public String getOymeEmailAccount() {
		return oymeEmailAccount;
	}

	public void setOymeEmailAccount(String oymeEmailAccount) {
		this.oymeEmailAccount = oymeEmailAccount;
	}

	public Integer getOymeEmailDomainCd() {
		return oymeEmailDomainCd;
	}

	public void setOymeEmailDomainCd(Integer oymeEmailDomainCd) {
		this.oymeEmailDomainCd = oymeEmailDomainCd;
	}

	public Integer getOymeDelNy() {
		return oymeDelNy;
	}

	public void setOymeDelNy(Integer oymeDelNy) {
		this.oymeDelNy = oymeDelNy;
	}

}
