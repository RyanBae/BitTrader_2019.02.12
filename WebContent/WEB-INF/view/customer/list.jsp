<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../home/top.jsp"/>
<link rel="stylesheet" 
	href="${css}/customer/list.css" />
<link rel="stylesheet" href="${css}/customer/navi_bar.css" />
<div class="grid-item" id="navi_bar">
	<jsp:include page="../home/post-navi-bar.jsp"/>
	</div>
<div class="grid-item" id="side_menu" >
 	<h1><font style="font-size: 30px">고객 리스트</font></h1>
</div>

<div class="grid-item" id="content">


<table id="cust_tab">
  <tr>
    <th>No.</th>
    <th>아이디</th>
    <th>이    름</th>
    <th>생년월일</th>
    <th>성    별</th>
    <th>전화번호</th>
    <th>우편번호</th>
    <th>지번주소</th>
    <th>상세주소</th>
	
  </tr>
  <c:forEach items="${list}" var="cust">
  <tr>
    <td>${cust.count}</td>
    <td>${cust.customerID}</td>
    <td>${cust.customerName}</td>
    <td>${cust.ssn}</td>
    <td>남자</td>
    <td>${cust.phone}</td>
    <td>${cust.postalcode}</td>
    <td>${cust.city}</td>
    <td>${cust.address}</td>
  </tr>
    </c:forEach>

</table>

<div class="center">
  <div class="pagination">
  <a href="#">&laquo;</a>
  <a href="#" class="active">1</a>
  <a href="#" class="active2">2</a>
  <a href="#">3</a>
  <a href="#">4</a>
  <a href="#">5</a>
  <a href="#">&raquo;</a>
  </div>
</div>
</div>
<jsp:include page="../home/bottom.jsp"/>
<script>
/*  $('.active2').click(function(){
	 alert('2페이지 이동.');
	 location.assign('${ctx}/customer.do&cmd=cust_list&page=list&page_num=2&page_size=5');
 }); */
 $('.active2').click(function(){
	 alert('2페이지');
	 location.assign('${ctx}/customer.do?cmd=cust_list&page=list&page_num=2&page_size=5');
 });
	 //page_num, page_size, cmd, dir, page
	 // ?cmd=list&page=list&page_num=2&page_size=5
	 /* 
	<input type="hidden" name="cmd" value="access" />
    <input type="hidden" name="dir" value="customer" />
    <input type="hidden" name="page" value="list" />
	 
	 */


</script>