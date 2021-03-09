
<%@include file="../includes/header.jsp"%>

                    <!-- Page Heading -->
                    <h1 class="h3 mb-4 text-gray-800">Blank Page</h1>

<ul>
  <c:forEach items="${list }" var="board">
	<li>
	  <span><a class='listA' href="<c:out value="${board.bno }"/>"><c:out value="${board.bno }"></c:out></a></span>
	  <c:out value="${board.title }"></c:out>
	</li>
  </c:forEach>
</ul>
					
<h2>${list }</h2>
<h3>${pageMaker }</h3>
					
<ul class="pagination">
  <c:if test="${pageMaker.prev}">
    <li class="page-item">
      <a class="page-link" href="${pageMaker.start -1 }" tabindex="-1">Previous</a>
    </li>
  </c:if>
  <c:forEach begin = "${pageMaker.start }" end = "${pageMaker.end }" var="num">
    <li class="page-item ${num == pageMaker.pageInfo.page?"active":"" }"><a class="page-link" href="${num }">${num }</a></li>
  </c:forEach>
<!--     <li class="page-item active">
      <a class="page-link" href="#">2 <span class="sr-only">(current)</span></a>
    </li> -->
  <c:if test="${pageMaker.next }">
    <li class="page-item">
      <a class="page-link" href="${pageMaker.end + 1 }">Next</a>
    </li>
 </c:if>
    <!-- 부트가서 타입루프를 쓰면 깔끔하게 처리할 수 있다. -->
</ul>
<form class="actionForm" action="/board/list" method="get">
	<input type='hidden' name='page' value='${pageDTO.page }'>
	<input type='hidden' name='perSheet' value='${pageDTO.perSheet }'>
</form>
<script>

document.querySelector(".pagination").addEventListener("click", e => {
	e.preventDefault();
	//e.stopPropagation();
	
	const target = e.target;
	//console.log(target);
	
		
	const pageNum = target.getAttribute("href");
	console.log(pageNum);
	
	if(pageNum){
	
	document.querySelector(".actionForm input[name='page']").value = pageNum;
	document.querySelector(".actionForm").submit();
	
	}
	
}, false);

console.log(document.querySelectorAll('.listA'));

document.querySelectorAll('.listA').forEach(board => {
	
	board.addEventListener("click", function(e) {
		
		e.preventDefault();
		const bno = e.target.getAttribute("href");
		const actionForm = document.querySelector(".actionForm");
		actionForm.setAttribute("action", "/board/read");
		actionForm.innerHTML += "<input type='hidden' name='bno' value='"+bno+"'>";
		actionForm.submit();
		
	}, false);
})

</script>					
					
<%@include file="../includes/footer.jsp"%>               