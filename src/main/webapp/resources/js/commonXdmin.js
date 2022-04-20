document.write("<script src='/resources/js/common.js'></script>");

const MAX_EACH_FILE_SIZE = 15 * 1024 * 1024;		// 1M
const MAX_TOTAL_FILE_SIZE = 300 * 1024 * 1024;	// 300M
const MAX_TOTAL_FILE_NUMBER = 30;				// 30개

checkUploadedTotalFileNumber = function(totalSize, seq){
	if(totalSize > MAX_TOTAL_FILE_NUMBER){
		alert("전체 파일개수는 30개까지 허용됩니다.");
		$("#file"+seq).val("");
		return false;
	}
}
checkUploadedImageExt = function(obj, seq){
	var ext = obj.split('.').pop().toLowerCase();
	if(extArrayImage.indexOf(ext) == -1){
		alert("허용된 확장자가 아닙니다.");
		$("#file"+seq).val("");
		return false;
	}
}
checkUploadedAllExt = function(obj, seq){
	var ext = obj.split('.').pop().toLowerCase();
	if(extArrayAll.indexOf(ext) == -1){
		alert("허용된 확장자가 아닙니다.");
		$("#file"+seq).val("");
		return false;
	}
}
checkUploadedEachFileSize = function(obj, seq){
	if(obj.size > MAX_EACH_FILE_SIZE){
		alert("각 첨부 파일 사이즈는 1MB이내로 등록 가능합니다.");
		$("#file"+seq).val("");
		return false;
	}
}
checkUploadedTotalFileSize = function(totalSize, seq){
	if(totalSize > MAX_TOTAL_FILE_SIZE){
		alert("전체 용량은 10MB를 넘을 수 없습니다.");
		$("#file"+seq).val("");
		return false;
	}
}