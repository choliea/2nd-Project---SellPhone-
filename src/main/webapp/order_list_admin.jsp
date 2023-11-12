<%@page import="com.itwill.shop.user.UserDaoImplMyBatis"%>
<%@page import="com.itwill.shop.user.UserDao"%>
<%@page import="com.itwill.shop.user.User"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.itwill.shop.order.OrderDaoImplMyBatis"%>
<%@page import="com.itwill.shop.order.Order"%>
<%@page import="java.util.List"%>
<%@page import="com.itwill.shop.order.OrderDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 내역 조회</title>
<style>
table {
	width: 80%;
	border-collapse: collapse;
}

th, td {
	border: 1px solid black;
	padding: 8px;
	text-align: center;
}

th {
	background-color: #f2f2f2;
}

select, input[type="text"] {
	padding: 6px;
}
</style>
</head>
<body>
	<h1>주문 내역 조회</h1>
	<form method="post" action="">
		<label for="searchField">검색 항목:</label> <select name="searchField"
			id="searchField">
			<option value="order_no">주문 번호</option>
			<option value="order_fee">상품 가격</option>
			<option value="order_date">주문 날짜</option>
			<option value="delivery">배송지</option>
			<option value="delivery_req">배송시 요청사항</option>
			<option value="delivery_reciever">수령인</option>
			<option value="user_id">아이디</option>
			<option value="payment_no">결제 정보</option>
		</select> <input type="text" name="searchKeyword" placeholder="검색어 입력">
		<button type="submit">검색</button>
	</form>
	<form method="post" action="">
		<button type="submit" name="showAllOrders">모든 주문 조회</button>
	</form>
	<table>
        <tr>
            <th>주문 번호</th>
            <th>상품 가격</th>
            <th>주문 날짜</th>
            <th>배송지</th>
            <th>배송시 요청사항</th>
            <th>수령인</th>
            <th>아이디</th>
            <th>지불 번호</th>
        </tr>
    
    </table>
</body>
</html>