$(function() {
	$('#loginBtn').click(function() {
		if ($('#userId').val() == "") {
			$('#idMessage').html('아이디를 입력하여 주십시오');
			$('#pwMessage').html('');
			$('#userId').focus();
			return false;
		} else if ($('#userPw').val() == "") {
			$('#idMessage').html('');
			$('#pwMessage').html('비밀번호를 입력하여 주십시오');
			$('#userPw').focus();
			return false;
		} else {
			return true;
		}
		$('#userPw').attr('readonly', false);
		$('#chPwBtn').css('display', 'none');
		$('#changeMessage').css('display', 'none');
	});
});