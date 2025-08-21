function insert_ok() {
	if (frm.resv_no.value == '') {
		alert("예약번호를 입력하지 않으셨습니다.");
		frm.resv_no.focus();
	}
	else if (frm.cust_no.value == '') {
		alert("고객번호를 입력하지 않으셨습니다.");
		frm.cust_no.focus();
	}
	else if (frm.resv_date.value == '') {
		alert("예약일자를 입력하지 않으셨습니다.");
		frm.resv_date.focus();
	}
	else if (frm.court_no.value == '') {
		alert("코트번호를 입력하지 않으셨습니다.");
		frm.court_no.focus();
	}
	else{
		alert("완료함");
		frm.submit();
	}
}
function insert_no(){
	alert("초기화");
	frm.reset();
}

function resv_go(){
	if(hi.cust_no.value == ''){
		alert("고객번호가 입력되지 않았습니다!");
		hi.cust_no.focus();
	}
	else{
		alert("완료됨");
		hi.submit();
	}
}