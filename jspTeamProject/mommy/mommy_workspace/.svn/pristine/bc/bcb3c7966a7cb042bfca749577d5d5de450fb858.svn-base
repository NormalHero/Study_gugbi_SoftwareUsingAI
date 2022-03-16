/**
 * 
 */
	const $certified = $('#certified');
	var contents;
	
	$certified.on("click", function(){
		
		contents= $.ajax({
			url:"certified.jsp", 
			datatype:"html",
			type:"get",
			
			success:function(e){
				$('div#mainbox').html(e);
				
			},
			error:function(){
				alert("실패");
				
			}
		
		});
	})
	
	/*  $('.button-size').click(function() {
		$('.font-position').css({"display":"none"}); 
		 
	 }); */
	