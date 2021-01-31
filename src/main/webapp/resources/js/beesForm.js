$(function() {

	$('.chat-open-btn').click(
			function() {
				window.open("/beesChatPopUp.do", '비즈 채팅',
						'width=400px, height=600px, resizable=no');
				return false;

			});

});