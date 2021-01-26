window.onload = function() {
		idMessage = document.getElementById("idMessage");
		nameMessage = document.getElementById("nameMessage");
		phoneMessage = document.getElementById("phoneMessage");

		userId = document.getElementById("userId");
		userName = document.getElementById("userName");
		phone = document.getElementById("phone");
		authBox = document.getElementById("authBox");
		authInput = document.getElementById("inputAuthNum");
		sendSms = document.getElementById("sendSms");
		sendBtn = document.getElementById("sendSms");
	}

	function check() {
		if(!idCheck()){
			userId.focus();
			return false;
		} else if (!nameCheck()) {
			userName.focus();
			return false;
		} else if (!phoneCheck()) {
			phone.focus();
			return false;
		} else if (authBox.style.display == "none"){
			sendSms.focus();
			phoneMessage.style.color = "red";
			phoneMessage.innerHTML = "인증절차를 진행하여 주십시오";
			return false;
		} else if (authInput.value == "") {
			authInput.focus();
			phoneMessage.style.color = "red";
			phoneMessage.innerHTML = "인증번호를 옳바르게 입력하고 인증 버튼을 눌러 인증을 진행해 주십시오";
			return false;
		} else {
			return true;
		}
	}

	function idCheck() {
		if ((/^[a-z][a-z0-9]{5,11}$/.test(userId.value))) {
			idMessage.innerHTML = "";
			return true;
		} else{
			idMessage.style.color = "red";
			idMessage.innerHTML = "ID는 영 소문자 숫자 조합으로 최소 6글자 최대 12글자로 입력바랍니다.";
			return false;
		}
	}

	function nameCheck() {
		if (!(/[가-힣]+$/.test(userName.value))) //이름 검사
		{
			nameMessage.style.color = "red";
			nameMessage.innerHTML = "이름은 한글(최소1글자)만 가능합니다.";
			return false;
		} else {
			nameMessage.innerHTML = "";
			return true;
		}
	}
	
	function phoneCheck() {
		if (phone.value == "") //폰 검사
		{
			phoneMessage.style.color = "red";
			phoneMessage.innerHTML = "핸드폰 번호입력 후 인증절차를 진행하여 주십시오";
			return false;
		} else if (!(/^(010[1-9][0-9]{7})$/.test(phone.value))){
			phoneMessage.style.color = "red";
			phoneMessage.innerHTML = "핸드폰번호는 010으로 시작해 11자리로 입력해주세요(- 제외하고 입력)";
			return false;
		} else {
			if (authBox.style.display == "none") {
				phoneMessage.style.color = "red";
				phoneMessage.innerHTML = "인증절차를 진행하여 주십시오";
				return false;
			} else if (authInput.value == ""){
				phoneMessage.style.color = "red";
				phoneMessage.innerHTML = "인증번호를 옳바르게 입력하고 인증 버튼을 눌러 인증을 진행해 주십시오";
				return false;
			} else {
				phoneMessage.innerHTML = "";
				return true;
			}
		}
	}
	
	function authNumCheck() {
		if(authInput.value == "") {
			phoneMessage.style.color = "red";
			phoneMessage.innerHTML = "인증번호 입력 바람";

			return false;
		} else {
			phoneMessage.innerHTML = "";
			return true;
		}
	}
	
	$(function() {
		$('#sendSms').click(function() {
			console.log($('#authBox').css('display'));
			
			if($('#authInputBox').css('display') == 'inline-block'){
				alert('인증번호를 확인하세요.');
			} else {
				if($('#phone') == "" || !(/^(010[1-9][0-9]{7})$/.test(phone.value))){
					$('#phoneMessage').html('핸드폰번호를 제대로 작성하세요.');
				} else {
					//ajax SMS API 작성
					$('#authBox').removeAttr('style');
					$('#phoneMessage').html('');				
				}
			}
		});
	});