$(function() {

	var beesname = "쿼카를 사랑하는 모임 쿼. 사. 모";
	beesname = beesname.substring(0, 11);
	$('.best-feed-bees-name').html(beesname + "..");
	/*인기 비즈 카테고리 */
	var maintext = "호주에 가면 쿼카를 만날 수 있다.~~~ 쿼카는 귀엽다"
			+ "쿼카를 많이 사랑해줍시다 #쿼카야사랑해 #쿼카 #해시태그 #해시태그 호주에 가면 쿼카를 만날 수 있다.~~~ 쿼카는 귀엽다"
			+ "쿼카를 많이 사랑해줍시다 #쿼카야사랑해 #쿼카 #해시태그 #해시태그호주에 가면 쿼카를 만날 수 있다.~~~ 쿼카는 귀엽다"
			+ "쿼카를 많이 사랑해줍시다 #쿼카야사랑해 #쿼카 #해시태그 #해시태그호주에 가면 쿼카를 만날 수 있다.~~~ 쿼카는 귀엽다쿼카를 많이 사랑해줍시다 #쿼카야사랑해 #쿼카 #해시태그 #해시태그";

	maintext = maintext.substring(0, 150);

	$('.best-feed-maintext').html(maintext + "...");

	$('.best-feed-like-btn').click(
			function() {

				if ($(this).attr('fill') == 'lightgray') {
					$(this).attr('fill', 'red');
					$(this).parent().next().html(
							Number($(this).parent().next().html()) + 1);

				} else {

					$(this).attr('fill', 'lightgray');
					$(this).parent().next().html(
							Number($(this).parent().next().html()) - 1);
				}
			});

})