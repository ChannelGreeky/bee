$(function() {

	$('.item-select-btn').click(function() {

		if ($(this).attr('fill') == 'lightgray') {

			$(this).attr('fill', '#F7D078');
			$(this).prev().attr('checked', 'true');
			$('.item-select-btn').not($(this)).attr('fill', 'lightgray');

		} else {

			$(this).attr('fill', 'lightgray');
			$(this).prev().removeAttr('checked');

		}

	})

	$('.feed-like-btn').click(function() {

		if ($(this).attr('fill') == 'red') {

			$(this).attr('fill', 'lightgray');
			// 좋아요 취소하는 로직
			$(this).next().html($(this).next().html() - 1);

		} else {

			$(this).attr('fill', 'red');

			// 좋아요 추가하는 로직
			$(this).next().html(Number($(this).next().html()) + 1);
		}

	});

	$('.comment-open').click(function() {

		$(this).prev().css('display', 'block');
		$(this).css('display', 'none');
		$(this).closest('table').next().css('display', 'block');

	})

	$('.comment-close').click(function() {

		$(this).next().css('display', 'block');
		$(this).css('display', 'none');
		$(this).closest('table').next().css('display', 'none');
	})

	$('.recomment-btn').click(function() {

		$(this).parent().parent().next().css('display', 'table-row');
		$(this).parent().parent().css('display', 'none');

	})

	$('.recomment-reset-btn').click(function() {

		$(this).parent().parent().prev().css('display', 'table-row');
		$(this).parent().parent().css('display', 'none');

	})

	$('.comment-modify-btn').click(
			function() {

				$(this).parent().parent().prev().css('display', 'none');
				$(this).parent().parent().css('display', 'none');
				$(this).parent().parent().next().next().css('display',
						'table-row');
				$(this).parent().parent().next().next().next().css('display',
						'table-row');

			});

	$('.comment-modify-reset-btn').click(
			function() {

				$(this).parent().parent().prev().css('display', 'none');
				$(this).parent().parent().css('display', 'none')
				$(this).parent().parent().prev().prev().prev().css('display',
						'table-row');
				$(this).parent().parent().prev().prev().prev().prev().css(
						'display', 'table-row');

			})
			
	$('.recomment-modify-btn').click(
			function() {

				$(this).parent().parent().prev().css('display', 'none');
				$(this).parent().parent().css('display', 'none');
				$(this).parent().parent().next().next().css('display',
						'table-row');
				$(this).parent().parent().next().next().next().css('display',
						'table-row');

			});

	$('.recomment-modify-reset-btn').click(
			function() {

				$(this).parent().parent().prev().css('display', 'none');
				$(this).parent().parent().css('display', 'none')
				$(this).parent().parent().prev().prev().prev().css('display',
						'table-row');
				$(this).parent().parent().prev().prev().prev().prev().css(
						'display', 'table-row');

			})

	$('.feed-navi-block').children().mouseover(function() {

		$(this).css('background-color', 'lightgray');

	})

	$('.feed-navi-block').children().mouseout(function() {

		$(this).css('background-color', 'white');

	})

	$('.feed-setting').click(function() {

		var $feedNavi = $(this).parent().next().next()
		if ($feedNavi.css('visibility') == 'hidden') {
			$feedNavi.css('visibility', 'visible');
		} else {
			$feedNavi.css('visibility', 'hidden');
		}
	})

	$('.feed-delete').click(function() {

		if (confirm("피드를 정말 삭제하시겠습니까?")) {

			// 삭제하는 로직 구현

		}

	})

	$('.write-function-icon').mouseover(function() {

		$(this).prev().css('visibility', 'visible');

	})

	$('.write-function-icon').mouseout(function() {

		$(this).prev().css('visibility', 'hidden');
	})

	$('.sche-box').find('p').click(
			function() {

				$('#sche-detail-modal').css(
						'top',
						Math.max(0, (($(window).height() - $(
								'#sche-detail-modal').outerHeight()) / 2)
								+ $(window).scrollTop())
								+ 'px');
				$('#sche-detail-modal').css(
						'left',
						Math.max(0, (($(window).width() - $(
								'#sche-detail-modal').outerWidth()) / 2)
								+ $(window).scrollLeft())
								+ 'px');
				$('#feed-modal-bg').css('height',
						($(window).height() + $(window).scrollTop()) + 'px');
				$('#feed-modal-bg').css('display', 'block');
				$('#sche-detail-modal').css('display', 'block');
			})

	$('.sche-icon').click(
			function() {

				$('#sche-detail-modal').css(
						'top',
						Math.max(0, (($(window).height() - $(
								'#sche-detail-modal').outerHeight()) / 2)
								+ $(window).scrollTop())
								+ 'px');
				$('#sche-detail-modal').css(
						'left',
						Math.max(0, (($(window).width() - $(
								'#sche-detail-modal').outerWidth()) / 2)
								+ $(window).scrollLeft())
								+ 'px');
				$('#feed-modal-bg').css('height',
						($(window).height() + $(window).scrollTop()) + 'px');
				$('#feed-modal-bg').css('display', 'block');
				$('#sche-detail-modal').css('display', 'block');
			})

	$('#sche-detail-modal-close').click(function() {

		$('#feed-modal-bg').css('display', 'none');
		$('#sche-detail-modal').css('display', 'none');

	})

	$('#sche-detail-modal-button').click(function() {

		$('#feed-modal-bg').css('display', 'none');
		$('#sche-detail-modal').css('display', 'none');

	})

})