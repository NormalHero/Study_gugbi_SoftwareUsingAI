getList();

function getList(){
   $.ajax({
       // url: contextPath + "/board/BoardReplyListOk.bo?boardNumber=" + boardNumber,
       url: contextPath + "/board/BoardReplyListOk.bo",
       type: "get",
       // dataType: "text", //text일 경우 dataType 생략 가능
       dataType: "json",
       data: {"boardNumber": boardNumber},
       contentType: "application/json;charset=utf-8",
       success: showList,
       error: function(a, b, c){
           console.log("오류" + c);
       }
   });
}

function showList(replies){
    var text = "";
    if(replies != null && replies.length != 0){
        $.each(replies, function(index, reply){
            text += "<div id='reply'>"
            text += "<p class='writer'>" + reply.memberId +"</p>"
            text += "<div class='content' style='width:100%'>"
            text += "<pre>" + reply.replyContent + "</pre>"
            text += "</div>"
            if(memberNumber == reply.memberNumber){
                text += "<input type='button' class='primary' value='수정'>"
                text += "<input type='button' class='primary' value='삭제'>"
            }
            text += "</div>"
        });
    }else{
        //댓글 없음
        text = "<p>댓글이 없습니다.</p>";
    }

   $("#replies").html(text);

}