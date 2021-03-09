<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Add2</h1>

	<form action="/todo/add" method="post">
		<!-- <input type='hidden' name='complete' value='true'> -->
		<div>
			<input type='text' name='title' value='${todoDTO.title }'>
		</div>
		<div>
			<button class='btn'>SAVE</button>
		</div>
	</form>


	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous">
		
	</script>
	
	<script>
		function showResult(msg) {
			
			if(!msg) {
				
				self.location = "/todo/list";
				
			}else {
				
				alert(msg)
				
			}
			
		}
		
		$(document).ready(function() {
			
			$(".btn").on("click", function(e) {
				
				e.preventDefault();
				const data = {title:$("input[name='title']").val(), complete:false}
				console.log(data);
				
				$.post("/todo/add2", data, function(result) {
					//바닐라 JS로 만들려면 fetch api를 사용해야 한다.
					//항상 데이터가 제대로 날라가는지 확인해줘야한다. - Network
					
					//console.log(result);
					
					//JQuery
					const $error = $(result);
					
					console.log($error);
					
					console.log($error.get(0));
					
					console.log($($(result).get(0)));
					
					console.log($($error.get(0)));
					
					console.log($error[0]);
					
					console.log($(result[0]));
					
					console.log($(result).attr("defaultMessage"));	
					
					
//===================================================================================
	
					//바닐라 JS
					/* if(result) {
						
						//console.log("Not Null")
						
						//console.log(result[0]);
						
						const errors = result[0];
						
						console.log(errors);
						
						//console.log(errors.defaultMessage);
						
						const msg = errors.defaultMessage;
						
						//console.log(errors.rejectedValue);
						
						const value = errors.rejectedValue;
						
						document.querySelector('input').setAttribute('value', value);
						
						result = msg;
						
					}
					
					showResult(result); */
					
				})
				
			})
		})
		
	</script>
</body>
</html>