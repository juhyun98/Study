<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>상품 리스트</h1>
	
	<form action="product_add.jsp" method="post">
	
		<table border="1">
			<tr>
			<th>상품</th>
			<th>상품명</th>
			<th>담기</th>
			</tr>
			<tr>
				<td><input type="checkbox" name="product" value="product1"></td>
				<td>상품1</td>
				<td><input type="submit" value="장바구니담기"></td>
				
			</tr>
			<tr>
				<td><input type="checkbox" name="product" value="product2"></td>
				<td>상품2</td>
				<td><input type="submit" value="장바구니담기"></td>
				
			</tr>
			<tr>
				<td><input type="checkbox" name="product" value="product3"></td>
				<td>상품3</td>
				<td><input type="submit" value="장바구니담기"></td>
				
			</tr>
			<tr>
				<td><input type="checkbox" name="product" value="product4"></td>
				<td>상품4</td>
				<td><input type="submit" value="장바구니담기"></td>
				
			</tr>
			<tr>
				<td><input type="checkbox" name="product" value="product5"></td>
				<td>상품5</td>
				<td><input type="submit" value="장바구니담기"></td>
			</tr>
		</table>
		
		
		<p><input type="submit" value="선택한 상품 담기">
		<p><a href="product_basket.jsp">장바구니 이동</a></p>
	</form>
</body>
</html>