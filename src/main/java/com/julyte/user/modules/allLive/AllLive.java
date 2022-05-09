package com.julyte.user.modules.allLive;

import java.util.Date;
import org.springframework.web.multipart.MultipartFile;

public class AllLive {
  
	private String tableName;
	private Integer type;
	private String seq;
	private Integer sort;
	private Integer defaultNy;
	private String originalName;
	private String uuidName;
	private String ext;
	private long size; 
	private Integer delNy;
	private String pseq; 
	private String path;

	private MultipartFile[] file0;
	private MultipartFile[] file1;

	private String originalFileName;
	private String uuidFileName;

	private Double oymaLat;
	private Double oymaLng;
// oyCate

	private String oyctSeq;
	private String oyctName;
	private String oyctParents;
	private String oyctDepth;
	private String oyctOrder;
	private Integer oyctDelNy;

//	oyProduct

	private String oypdSeq;
	private String oypdCate;
	private String oypdBrand;
	private Integer oypdBrandCd;
	private String oypdName;
	private String oypdPrice;
	private Integer oypdCountryCd;
	private Integer oypdDistributorCd;
	private Integer oypdManufacturerCd;
	private String oypdVolumeWeight;
	private String oypdIdeal;
	private String oypdExpirationDate;
	private String oypdHowtoUse;
	private String oypdIngredients;
	private Integer oypdFunctionalNy;
	private String oypdCautions;
	private String oypdQaStandard;
	private String oypdCustomerService;
	private Integer oypdDelNy;

//	oySaleProduct

	private String oyspSeq;
	private Integer oyspSaleNy;
	private Integer oyspCouponNy;
	private Integer oyspFreeGiftNy;
	private Integer oyspTodayshipNy;
	private Integer oyspFreeShippingNy;
	private Integer oyspExclusiveNy;
	private String oyspSalePrice;
	private String oyspSalePeriodStart;
	private String oyspSalePeriodEnd;
	private Integer oyspOneBuyGetOneFreeNy;
	private Integer oyspTwoBuyGetOneFreeNy;
	private Integer oyspDelNy;
	private Integer oyspTypeCd;
//	private String oypdSeq;

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
	public String getTableName() {
		return tableName;
	}

	public Integer getType() {
		return type;
	}

	public String getSeq() {
		return seq;
	}

	public Integer getSort() {
		return sort;
	}

	public Integer getDefaultNy() {
		return defaultNy;
	}

	public String getOriginalName() {
		return originalName;
	}

	public String getUuidName() {
		return uuidName;
	}

	public String getExt() {
		return ext;
	}

	public long getSize() {
		return size;
	}

	public Integer getDelNy() {
		return delNy;
	}

	public String getPseq() {
		return pseq;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public MultipartFile[] getFile0() {
		return file0;
	}

	public MultipartFile[] getFile1() {
		return file1;
	}

	public String getOriginalFileName() {
		return originalFileName;
	}

	public String getUuidFileName() {
		return uuidFileName;
	}

	public Double getOymaLat() {
		return oymaLat;
	}

	public Double getOymaLng() {
		return oymaLng;
	}

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

	public String getOypdSeq() {
		return oypdSeq;
	}

	public String getOypdCate() {
		return oypdCate;
	}

	public String getOypdBrand() {
		return oypdBrand;
	}

	public Integer getOypdBrandCd() {
		return oypdBrandCd;
	}

	public String getOypdName() {
		return oypdName;
	}

	public String getOypdPrice() {
		return oypdPrice;
	}

	public String getOypdVolumeWeight() {
		return oypdVolumeWeight;
	}

	public String getOypdIdeal() {
		return oypdIdeal;
	}

	public String getOypdExpirationDate() {
		return oypdExpirationDate;
	}

	public String getOypdHowtoUse() {
		return oypdHowtoUse;
	}

	public Integer getOypdManufacturerCd() {
		return oypdManufacturerCd;
	}

	public Integer getOypdDistributorCd() {
		return oypdDistributorCd;
	}

	public Integer getOypdCountryCd() {
		return oypdCountryCd;
	}

	public String getOypdIngredients() {
		return oypdIngredients;
	}

	public Integer getOypdFunctionalNy() {
		return oypdFunctionalNy;
	}

	public String getOypdCautions() {
		return oypdCautions;
	}

	public String getOypdQaStandard() {
		return oypdQaStandard;
	}

	public String getOypdCustomerService() {
		return oypdCustomerService;
	}

	public Integer getOypdDelNy() {
		return oypdDelNy;
	}

	public String getOyspSeq() {
		return oyspSeq;
	}

	public Integer getOyspSaleNy() {
		return oyspSaleNy;
	}

	public Integer getOyspCouponNy() {
		return oyspCouponNy;
	}

	public Integer getOyspFreeGiftNy() {
		return oyspFreeGiftNy;
	}

	public Integer getOyspTodayshipNy() {
		return oyspTodayshipNy;
	}

	public Integer getOyspFreeShippingNy() {
		return oyspFreeShippingNy;
	}

	public Integer getOyspExclusiveNy() {
		return oyspExclusiveNy;
	}

	public String getOyspSalePrice() {
		return oyspSalePrice;
	}

	public String getOyspSalePeriodStart() {
		return oyspSalePeriodStart;
	}

	public String getOyspSalePeriodEnd() {
		return oyspSalePeriodEnd;
	}

	public Integer getOyspOneBuyGetOneFreeNy() {
		return oyspOneBuyGetOneFreeNy;
	}

	public Integer getOyspTwoBuyGetOneFreeNy() {
		return oyspTwoBuyGetOneFreeNy;
	}

	public Integer getOyspDelNy() {
		return oyspDelNy;
	}

	public Integer getOyspTypeCd() {
		return oyspTypeCd;
	}

	public Integer[] getOympDefaultNyArray() {
		return oympDefaultNyArray;
	}

	public String[] getOympNumberArray() {
		return oympNumberArray;
	}

	public Integer[] getOympTelecomCdArray() {
		return oympTelecomCdArray;
	}

	public Integer[] getOymeDefaultNyArray() {
		return oymeDefaultNyArray;
	}

	public String[] getOymeEmailAccountArray() {
		return oymeEmailAccountArray;
	}

	public Integer[] getOymeEmailDomainCdArray() {
		return oymeEmailDomainCdArray;
	}

	public Integer getOymbAdminNy() {
		return oymbAdminNy;
	}

	public String getOymbSeq() {
		return oymbSeq;
	}

	public Integer getOymbGradeCd() {
		return oymbGradeCd;
	}

	public String getOymbId() {
		return oymbId;
	}

	public String getOymbName() {
		return oymbName;
	}

	public String getOymbNameEng() {
		return oymbNameEng;
	}

	public String getOymbNickName() {
		return oymbNickName;
	}

	public String getOymbPassword() {
		return oymbPassword;
	}

	public String getOymbDob() {
		return oymbDob;
	}

	public Integer getOymbGenderCd() {
		return oymbGenderCd;
	}

	public Integer getOymbSkinTypeCd() {
		return oymbSkinTypeCd;
	}

	public Integer getOymbPersonalColorCd() {
		return oymbPersonalColorCd;
	}

	public Integer getOymbInterestsCd() {
		return oymbInterestsCd;
	}

	public Integer getOymbSmsConsentNy() {
		return oymbSmsConsentNy;
	}

	public Integer getOymbEmailConsentNy() {
		return oymbEmailConsentNy;
	}

	public Integer getOymbPushConsentNy() {
		return oymbPushConsentNy;
	}

	public Integer getOymbSavedCd() {
		return oymbSavedCd;
	}

	public String getOymbDesc() {
		return oymbDesc;
	}

	public Integer getOymbDelNy() {
		return oymbDelNy;
	}

	public Date getRegDateTime() {
		return regDateTime;
	}

	public Date getModDateTime() {
		return modDateTime;
	}

	public String getOyjqSeq() {
		return oyjqSeq;
	}

	public String getOyjqQuestionCd() {
		return oyjqQuestionCd;
	}

	public String getOyjqAnswer() {
		return oyjqAnswer;
	}

	public Integer getOyjqDelNy() {
		return oyjqDelNy;
	}

	public String getOymaSeq() {
		return oymaSeq;
	}

	public String getOymaZipCode() {
		return oymaZipCode;
	}

	public String getOymaAddress1() {
		return oymaAddress1;
	}

	public String getOymaAddress2() {
		return oymaAddress2;
	}

	public String getOymaAddress3() {
		return oymaAddress3;
	}

	public Integer getOymaDelNy() {
		return oymaDelNy;
	}

	public String getOymnSeq() {
		return oymnSeq;
	}

	public Integer getOymnDelNy() {
		return oymnDelNy;
	}

	public String getOynaSeq() {
		return oynaSeq;
	}

	public String getOynaName() {
		return oynaName;
	}

	public Integer getOynaDelNy() {
		return oynaDelNy;
	}

	public String getOympSeq() {
		return oympSeq;
	}

	public Integer getOympDefaultNy() {
		return oympDefaultNy;
	}

	public Integer getOympTelecomCd() {
		return oympTelecomCd;
	}

	public String getOympNumber() {
		return oympNumber;
	}

	public Integer getOympDelNy() {
		return oympDelNy;
	}

	public String getOycgSeq() {
		return oycgSeq;
	}

	public String getOycgName() {
		return oycgName;
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

	public Integer getOycdDelNy() {
		return oycdDelNy;
	}

	public String getOymeSeq() {
		return oymeSeq;
	}

	public Integer getOymeDefaultNy() {
		return oymeDefaultNy;
	}

	public String getOymeEmailFull() {
		return oymeEmailFull;
	}

	public String getOymeEmailAccount() {
		return oymeEmailAccount;
	}

	public Integer getOymeEmailDomainCd() {
		return oymeEmailDomainCd;
	}

	public Integer getOymeDelNy() {
		return oymeDelNy;
	}

	public void setTableName(String tableName) {
		this.tableName = tableName;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public void setSeq(String seq) {
		this.seq = seq;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}

	public void setDefaultNy(Integer defaultNy) {
		this.defaultNy = defaultNy;
	}

	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}

	public void setUuidName(String uuidName) {
		this.uuidName = uuidName;
	}

	public void setExt(String ext) {
		this.ext = ext;
	}

	public void setSize(long size) {
		this.size = size;
	}

	public void setDelNy(Integer delNy) {
		this.delNy = delNy;
	}

	public void setPseq(String pseq) {
		this.pseq = pseq;
	}

	public void setFile0(MultipartFile[] file0) {
		this.file0 = file0;
	}

	public void setFile1(MultipartFile[] file1) {
		this.file1 = file1;
	}

	public void setOriginalFileName(String originalFileName) {
		this.originalFileName = originalFileName;
	}

	public void setUuidFileName(String uuidFileName) {
		this.uuidFileName = uuidFileName;
	}

	public void setOymaLat(Double oymaLat) {
		this.oymaLat = oymaLat;
	}

	public void setOymaLng(Double oymaLng) {
		this.oymaLng = oymaLng;
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

	public void setOypdSeq(String oypdSeq) {
		this.oypdSeq = oypdSeq;
	}

	public void setOypdCate(String oypdCate) {
		this.oypdCate = oypdCate;
	}

	public void setOypdBrand(String oypdBrand) {
		this.oypdBrand = oypdBrand;
	}

	public void setOypdBrandCd(Integer oypdBrandCd) {
		this.oypdBrandCd = oypdBrandCd;
	}

	public void setOypdName(String oypdName) {
		this.oypdName = oypdName;
	}

	public void setOypdPrice(String oypdPrice) {
		this.oypdPrice = oypdPrice;
	}

	public void setOypdVolumeWeight(String oypdVolumeWeight) {
		this.oypdVolumeWeight = oypdVolumeWeight;
	}

	public void setOypdIdeal(String oypdIdeal) {
		this.oypdIdeal = oypdIdeal;
	}

	public void setOypdExpirationDate(String oypdExpirationDate) {
		this.oypdExpirationDate = oypdExpirationDate;
	}

	public void setOypdHowtoUse(String oypdHowtoUse) {
		this.oypdHowtoUse = oypdHowtoUse;
	}

	public void setOypdManufacturerCd(Integer oypdManufacturerCd) {
		this.oypdManufacturerCd = oypdManufacturerCd;
	}

	public void setOypdDistributorCd(Integer oypdDistributorCd) {
		this.oypdDistributorCd = oypdDistributorCd;
	}

	public void setOypdCountryCd(Integer oypdCountryCd) {
		this.oypdCountryCd = oypdCountryCd;
	}

	public void setOypdIngredients(String oypdIngredients) {
		this.oypdIngredients = oypdIngredients;
	}

	public void setOypdFunctionalNy(Integer oypdFunctionalNy) {
		this.oypdFunctionalNy = oypdFunctionalNy;
	}

	public void setOypdCautions(String oypdCautions) {
		this.oypdCautions = oypdCautions;
	}

	public void setOypdQaStandard(String oypdQaStandard) {
		this.oypdQaStandard = oypdQaStandard;
	}

	public void setOypdCustomerService(String oypdCustomerService) {
		this.oypdCustomerService = oypdCustomerService;
	}

	public void setOypdDelNy(Integer oypdDelNy) {
		this.oypdDelNy = oypdDelNy;
	}

	public void setOyspSeq(String oyspSeq) {
		this.oyspSeq = oyspSeq;
	}

	public void setOyspSaleNy(Integer oyspSaleNy) {
		this.oyspSaleNy = oyspSaleNy;
	}

	public void setOyspCouponNy(Integer oyspCouponNy) {
		this.oyspCouponNy = oyspCouponNy;
	}

	public void setOyspFreeGiftNy(Integer oyspFreeGiftNy) {
		this.oyspFreeGiftNy = oyspFreeGiftNy;
	}

	public void setOyspTodayshipNy(Integer oyspTodayshipNy) {
		this.oyspTodayshipNy = oyspTodayshipNy;
	}

	public void setOyspFreeShippingNy(Integer oyspFreeShippingNy) {
		this.oyspFreeShippingNy = oyspFreeShippingNy;
	}

	public void setOyspExclusiveNy(Integer oyspExclusiveNy) {
		this.oyspExclusiveNy = oyspExclusiveNy;
	}

	public void setOyspSalePrice(String oyspSalePrice) {
		this.oyspSalePrice = oyspSalePrice;
	}

	public void setOyspSalePeriodStart(String oyspSalePeriodStart) {
		this.oyspSalePeriodStart = oyspSalePeriodStart;
	}

	public void setOyspSalePeriodEnd(String oyspSalePeriodEnd) {
		this.oyspSalePeriodEnd = oyspSalePeriodEnd;
	}

	public void setOyspOneBuyGetOneFreeNy(Integer oyspOneBuyGetOneFreeNy) {
		this.oyspOneBuyGetOneFreeNy = oyspOneBuyGetOneFreeNy;
	}

	public void setOyspTwoBuyGetOneFreeNy(Integer oyspTwoBuyGetOneFreeNy) {
		this.oyspTwoBuyGetOneFreeNy = oyspTwoBuyGetOneFreeNy;
	}

	public void setOyspDelNy(Integer oyspDelNy) {
		this.oyspDelNy = oyspDelNy;
	}

	public void setOyspTypeCd(Integer oyspTypeCd) {
		this.oyspTypeCd = oyspTypeCd;
	}

	public void setOympDefaultNyArray(Integer[] oympDefaultNyArray) {
		this.oympDefaultNyArray = oympDefaultNyArray;
	}

	public void setOympNumberArray(String[] oympNumberArray) {
		this.oympNumberArray = oympNumberArray;
	}

	public void setOympTelecomCdArray(Integer[] oympTelecomCdArray) {
		this.oympTelecomCdArray = oympTelecomCdArray;
	}

	public void setOymeDefaultNyArray(Integer[] oymeDefaultNyArray) {
		this.oymeDefaultNyArray = oymeDefaultNyArray;
	}

	public void setOymeEmailAccountArray(String[] oymeEmailAccountArray) {
		this.oymeEmailAccountArray = oymeEmailAccountArray;
	}

	public void setOymeEmailDomainCdArray(Integer[] oymeEmailDomainCdArray) {
		this.oymeEmailDomainCdArray = oymeEmailDomainCdArray;
	}

	public void setOymbAdminNy(Integer oymbAdminNy) {
		this.oymbAdminNy = oymbAdminNy;
	}

	public void setOymbSeq(String oymbSeq) {
		this.oymbSeq = oymbSeq;
	}

	public void setOymbGradeCd(Integer oymbGradeCd) {
		this.oymbGradeCd = oymbGradeCd;
	}

	public void setOymbId(String oymbId) {
		this.oymbId = oymbId;
	}

	public void setOymbName(String oymbName) {
		this.oymbName = oymbName;
	}

	public void setOymbNameEng(String oymbNameEng) {
		this.oymbNameEng = oymbNameEng;
	}

	public void setOymbNickName(String oymbNickName) {
		this.oymbNickName = oymbNickName;
	}

	public void setOymbPassword(String oymbPassword) {
		this.oymbPassword = oymbPassword;
	}

	public void setOymbDob(String oymbDob) {
		this.oymbDob = oymbDob;
	}

	public void setOymbGenderCd(Integer oymbGenderCd) {
		this.oymbGenderCd = oymbGenderCd;
	}

	public void setOymbSkinTypeCd(Integer oymbSkinTypeCd) {
		this.oymbSkinTypeCd = oymbSkinTypeCd;
	}

	public void setOymbPersonalColorCd(Integer oymbPersonalColorCd) {
		this.oymbPersonalColorCd = oymbPersonalColorCd;
	}

	public void setOymbInterestsCd(Integer oymbInterestsCd) {
		this.oymbInterestsCd = oymbInterestsCd;
	}

	public void setOymbSmsConsentNy(Integer oymbSmsConsentNy) {
		this.oymbSmsConsentNy = oymbSmsConsentNy;
	}

	public void setOymbEmailConsentNy(Integer oymbEmailConsentNy) {
		this.oymbEmailConsentNy = oymbEmailConsentNy;
	}

	public void setOymbPushConsentNy(Integer oymbPushConsentNy) {
		this.oymbPushConsentNy = oymbPushConsentNy;
	}

	public void setOymbSavedCd(Integer oymbSavedCd) {
		this.oymbSavedCd = oymbSavedCd;
	}

	public void setOymbDesc(String oymbDesc) {
		this.oymbDesc = oymbDesc;
	}

	public void setOymbDelNy(Integer oymbDelNy) {
		this.oymbDelNy = oymbDelNy;
	}

	public void setRegDateTime(Date regDateTime) {
		this.regDateTime = regDateTime;
	}

	public void setModDateTime(Date modDateTime) {
		this.modDateTime = modDateTime;
	}

	public void setOyjqSeq(String oyjqSeq) {
		this.oyjqSeq = oyjqSeq;
	}

	public void setOyjqQuestionCd(String oyjqQuestionCd) {
		this.oyjqQuestionCd = oyjqQuestionCd;
	}

	public void setOyjqAnswer(String oyjqAnswer) {
		this.oyjqAnswer = oyjqAnswer;
	}

	public void setOyjqDelNy(Integer oyjqDelNy) {
		this.oyjqDelNy = oyjqDelNy;
	}

	public void setOymaSeq(String oymaSeq) {
		this.oymaSeq = oymaSeq;
	}

	public void setOymaZipCode(String oymaZipCode) {
		this.oymaZipCode = oymaZipCode;
	}

	public void setOymaAddress1(String oymaAddress1) {
		this.oymaAddress1 = oymaAddress1;
	}

	public void setOymaAddress2(String oymaAddress2) {
		this.oymaAddress2 = oymaAddress2;
	}

	public void setOymaAddress3(String oymaAddress3) {
		this.oymaAddress3 = oymaAddress3;
	}

	public void setOymaDelNy(Integer oymaDelNy) {
		this.oymaDelNy = oymaDelNy;
	}

	public void setOymnSeq(String oymnSeq) {
		this.oymnSeq = oymnSeq;
	}

	public void setOymnDelNy(Integer oymnDelNy) {
		this.oymnDelNy = oymnDelNy;
	}

	public void setOynaSeq(String oynaSeq) {
		this.oynaSeq = oynaSeq;
	}

	public void setOynaName(String oynaName) {
		this.oynaName = oynaName;
	}

	public void setOynaDelNy(Integer oynaDelNy) {
		this.oynaDelNy = oynaDelNy;
	}

	public void setOympSeq(String oympSeq) {
		this.oympSeq = oympSeq;
	}

	public void setOympDefaultNy(Integer oympDefaultNy) {
		this.oympDefaultNy = oympDefaultNy;
	}

	public void setOympTelecomCd(Integer oympTelecomCd) {
		this.oympTelecomCd = oympTelecomCd;
	}

	public void setOympNumber(String oympNumber) {
		this.oympNumber = oympNumber;
	}

	public void setOympDelNy(Integer oympDelNy) {
		this.oympDelNy = oympDelNy;
	}

	public void setOycgSeq(String oycgSeq) {
		this.oycgSeq = oycgSeq;
	}

	public void setOycgName(String oycgName) {
		this.oycgName = oycgName;
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

	public void setOycdDelNy(Integer oycdDelNy) {
		this.oycdDelNy = oycdDelNy;
	}

	public void setOymeSeq(String oymeSeq) {
		this.oymeSeq = oymeSeq;
	}

	public void setOymeDefaultNy(Integer oymeDefaultNy) {
		this.oymeDefaultNy = oymeDefaultNy;
	}

	public void setOymeEmailFull(String oymeEmailFull) {
		this.oymeEmailFull = oymeEmailFull;
	}

	public void setOymeEmailAccount(String oymeEmailAccount) {
		this.oymeEmailAccount = oymeEmailAccount;
	}

	public void setOymeEmailDomainCd(Integer oymeEmailDomainCd) {
		this.oymeEmailDomainCd = oymeEmailDomainCd;
	}

	public void setOymeDelNy(Integer oymeDelNy) {
		this.oymeDelNy = oymeDelNy;
	}

}
