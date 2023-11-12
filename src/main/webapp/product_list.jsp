<%@page import="java.text.DecimalFormat"%>
<%@page import="com.itwill.shop.product.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.itwill.shop.product.ProductService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
ProductService productService = new ProductService();

String order = request.getParameter("order");
List<Product> productList = null;
if(order == null || order.equals("")) {
	productList = productService.productMasterList();
} else if(order.equals("desc")) {
	productList = productService.productMasterListDesc();	
} else {
	productList = productService.productMasterListAsc();
}



%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>휴대폰 리스트</title>
</head>
<body>
<div id="container">
		<!-- header start -->
		<div id="header">
			<!-- include_common_top.jsp start-->
			<jsp:include page="include_common_top.jsp" />
			<!-- include_common_top.jsp end-->
		</div>
		<!-- header end -->
		<!-- navigation start-->
		<div id="navigation">
			<!-- include_common_left.jsp start-->
			<jsp:include page="include_common_left.jsp" />
			<!-- include_common_left.jsp end-->
		</div>
		<!-- navigation end-->
		<!-- wrapper start -->
		<div id="wrapper">
			<!-- content start -->

			<!-- include_content.jsp start-->
			<div id="content">


	<table border=0 cellpadding=0 cellspacing=0>
		<tr>
			<td><br />
				<table style="padding-left: 10px" border=0 cellpadding=0 cellspacing=0>
					<tr>
						<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>쇼핑몰 -
								상품리스트</b></td>
					</tr>
				</table>
				<a href="product_list.jsp">추천순</a>
				<a href="product_list.jsp?order=desc">가격 높은 순</a>
				<a href="product_list.jsp?order=asc">가격 낮은 순</a>

				<div id="f">
					<br />
					<table id="product_table" width="100%" align="center" border="0"
						cellpadding="10" cellspacing="1" bgcolor="BBBBBB">
						<%
						int product_size = productList.size();
						int product_column_size = 3;
						int product_line_count = 1;

						for (int i = 0; i < productList.size(); i++) {
							Product product = productList.get(i);
						%>
						<!--상품시작 -->
						<%
						if (i % product_column_size == 0) {
						%>
						<tr>
							<%
							}
							%>
							<td align="center" width="25%" bgcolor="ffffff"><a
								href="product_detail.jsp?product_no=<%=product.getProductNo()%>">
								<img width="300px" height="220px"
									src="<%=product.getProductImage()%>" border="0"></a><br />
								<br /> <b><%=product.getProductName()%></b>
								<br> <font color="#FF0000">가격:<%=new DecimalFormat("#,##0").format(product.getProductPrice())%>원
							</font></td>
							<%
							if (i % product_column_size == 2) {
							%>
						</tr>
						<%
						}
						%>

						<!--상품 끝 -->
						<%
						}
						%>
					</table>
				</div> <br /></td>
		</tr>
	</table>



</div>
			<!-- include_content.jsp end-->
			<!-- content end -->
		</div>
		<!--wrapper end-->
		<div id="footer">
			<!-- include_common_bottom.jsp start-->
			<jsp:include page="include_common_bottom.jsp" />
			<!-- include_common_bottom.jsp end-->
		</div>
	</div>
	<!--container end-->
</body>
</html>