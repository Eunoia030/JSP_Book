//회원가입 입력값 확인
function joinCheck() {
	if (document.joinform.name.value == "") {
		alert("이름을 입력해주세요.");
		document.joinform.name.focus();
		return false;
	}

	if (document.joinform.id.value == "") {
		alert("아이디를 입력해주세요.");
		document.joinform.id.focus();
		return false;
	}

	if (document.joinform.pass.value == "") {
		alert("비밀번호를 입력해주세요.");
		document.joinform.pass.focus();
		return false;
	}

	if (document.joinform.pass2.value == "") {
		alert("비밀번호를 확인해주세요.");
		document.joinform.pass2.focus();
		return false;
	}


	if (document.joinform.reid.value == "") {
		alert("아이디 중복체크를 하지 않았습니다.");
		return false;
	}

	if (document.joinform.pass.value != document.joinform.pass2.value) {
		alert("비밀번호가 일치하지 않습니다.");
		document.joinform.pass2.focus();
		return false;
	}

	return true;
}

function idCheck() {
	// 사용자 아이디가 입력되었는지 확인 루틴 구현
	if (document.joinform.id.value == "") {
		alert("사용자 아이디를 입력해주세요.");
		document.joinform.id.focus();
		return false;
	}
	// 아이디 중복 체크를 위한 페이지는 새로운 창에 출력
	var url = "idCheck.do?id=" + document.joinform.id.value;
	window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=450, height=200");
}

function idOk(){
	opener.joinform.id.value = document.frm.id.value;
	opener.joinform.id2.value = document.frm.id.value;
	
	self.close();
}
