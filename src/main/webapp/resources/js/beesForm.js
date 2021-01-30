$(function(){

    //인풋태그 자동완성 X
    $('input').attr('autocomplete','off');

    $('.chat-open-btn').click(function(){    
    window.open("chatting-page.html", '비즈 채팅', 'width=400px, height=600px, resizable=no');
    return false;

    });

});