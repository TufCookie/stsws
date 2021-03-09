<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script>// 1. ======= 오전 전통적인 방식(1번) & Iframe 방식(2번) =======</script>

	<form action="/todo/add" method="post" target='zero'>
		<!-- <input type='hidden' name='complete' value='true'> -->
		<div>
			<input type='text' name='title'>
		</div>
		<div>
			<button class='btn'>SAVE</button>
		</div>
	</form>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous">
		
	</script>
	<iframe name='zero'></iframe> <script>
							//오전 Ajax 방식 시작할 때는 28 ~ 30 line 삭제!! 1
								</script>
								  
	<script>
		function showResult() {
			alert("showResult")
			self.location = "/todo/list";
		}
		$(document).ready(function() {
			$(".btn").on("click", function(e) {
				e.preventDefault();
				$('form').submit();//오전 Ajax 방식 시작 할때는 이 line 삭제!! - 2
				
	
			//2. 이 아래로============ 오전 Ajax POST처리 방식(3번) =============
			//	 /* */ 주석처리만 지우시면 됩니다!!!
				
			/* const data = {title:$("input[name='title']").val(), complete:false}
				console.log(data);
				$.post("/todo/add", data, function(result) {
					//바닐라 JS로 만들려면 fetch api를 사용해야 한다.
					//항상 데이터가 제대로 날라가는지 확인해줘야한다. - Network
					console.log(result);
					
				}) */
				
			})
			
		/* 3. =======오후 수업 강의 들을 때는 원래 있던 add.jsp를 지우고거나 이름을 바꾸고 ===========
										addOld.jsp -> add.jsp로 바꾸세요	  		         
										add2.jsp는 그대로 쓰면 됩니다.
				  				  
		*/
		})
	</script>
</body>
</html>