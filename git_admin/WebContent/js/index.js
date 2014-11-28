/**
 * 
 */

$(document).ready(function() {

	$("a").click(function() {

		if ($(this).hasClass("info")) {
			 
			var bb=$(".right");
			if(bb.find("div").length!=0)
				{
				bb.find("div").remove();
				bb.append("<div align='center'>"+$("#source").find("#info").html());
				
				}
			else{
			
			


			bb.append("<div align='center'>"+$("#source").find("#info").html());
			
			
			
			
			
			}
			
			
		}

		if ($(this).hasClass("version")) {
			 
			var bb=$(".right");
			if(bb.find("div").length!=0)
				{
				bb.find("div").remove();
				bb.append("<div align='center'>"+$("#source").find("#version").html());
				
				}
			else{
			
			
				bb.append("<div align='center'>"+$("#source").find("#version").html());
				
			
			
			
			
			
			}
			
			
		}

		if ($(this).hasClass("databases")) {
			 
			var bb=$(".right");
			if(bb.find("div").length!=0)
				{
				bb.find("div").remove();
				bb.append("<div>"+$("#source").find("#database").html());
				
				}
			else{
			
				bb.append("<div align='center'>"+$("#source").find("#database").html());
				
			
			
			
			
			}
			
			
		}

		if ($(this).hasClass("post")) {
			 
			var bb=$(".right");
			if(bb.find("div").length!=0)
				{
				bb.find("div").remove();
				bb.append("<div align='center'>"+$("#source").find("#post").html());
				
				}
			else{
			

			bb.append("<divalign='center'>"+$("#source").find("#post").html());
			
			
			
			
			
			}
			
			
		}

		if ($(this).hasClass("editor")) {
			 
			var bb=$(".right");
			if(bb.find("div").length!=0)
				{
				bb.find("div").remove();
				bb.append("<div align='center'>"+$("#source").find("#editor").html());
					
				}
			else{
			
			
			
			bb.append("<div align='center'>"+$("#source").find("#editor").html());
			
			
			
			
			
			}
			
			
		}
		
		if($(this).hasClass("page")){
			 
			var bb=$(".right");
			if(bb.find("div").length!=0)
				{
				bb.find("div").remove();
				bb.append("<div>"+$("#source").find("#page").html());
				
				}
			else{
			
			bb.append("<div>"+$("#source").find("#page").html());
			
			
			
			
			
			}
			
			
		}
		

	});

});
