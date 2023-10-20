<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>Artion Seller: Home</title>

<style>
table#table-1 {
	width: 450px;
	background-color: #CCCCFF;
	margin-top: 5px;
	margin-bottom: 10px;
	border: 3px ridge Gray;
	height: 80px;
	text-align: center;
}

table#table-1 h4 {
	color: red;
	display: block;
	margin-bottom: 1px;
}

h4 {
	color: blue;
	display: inline;
}
</style>

</head>
<body bgcolor='white'>

	<table id="table-1">
		<tr>
			<td><h3>Artion Seller: Home</h3>
				<h4>( MVC )</h4></td>
		</tr>
	</table>

	<p>This is the Home page for Artion Seller: Home</p>

	<h3>��Ƭd��:</h3>

	<%-- ���~��C --%>
	<c:if test="${not empty errorMsgs}">
		<font style="color: red">�Эץ��H�U���~:</font>
		<ul>
			<c:forEach var="message" items="${errorMsgs}">
				<li style="color: red">${message}</li>
			</c:forEach>
		</ul>
	</c:if>

	<ul>
		<li><a href='listAllSeller.jsp'>List</a> all Sellers. <br>
		<br></li>


		<li>
			<FORM METHOD="post" ACTION="seller.do">
				<b>��J�t�ӽs�� (�p2001):</b> <input type="text" name=sel_id> <input
					type="hidden" name="action" value="getOne_For_Display"> <input
					type="submit" value="�e�X">
			</FORM>
		</li>

		<jsp:useBean id="sellerSvc" scope="page"
			class="com.seller.model.SellerService" />

		<li>
			<FORM METHOD="post" ACTION="seller.do">
				<b>��ܼt�ӽs��:</b> <select size="1" name="sel_id">
					<c:forEach var="sellerVO" items="${sellerSvc.all}">
						<option value="${sellerVO.sel_id}">${sellerVO.sel_id}</option>
					</c:forEach>
				</select> <input type="hidden" name="action" value="getOne_For_Display">
				<input type="submit" value="�e�X">
			</FORM>
		</li>

		<li>
			<FORM METHOD="post" ACTION="seller.do">
				<b>��ܼt�ӦW��:</b> <select size="1" name="sel_id">
					<c:forEach var="sellerVO" items="${sellerSvc.all}">
						<option value="${sellerVO.sel_id}">${sellerVO.sel_name}
					</c:forEach>
				</select> <input type="hidden" name="action" value="getOne_For_Display">
				<input type="submit" value="�e�X">
			</FORM>
		</li>
	</ul>


	<h3>�t�Ӻ޲z</h3>

	<ul>
		<li><a href='addSeller.jsp'>Add</a> a new Seller.</li>
	</ul>

</body>
</html>