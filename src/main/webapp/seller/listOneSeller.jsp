<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ page import="com.seller.model.*"%>
<%-- �����Ƚm�߱ĥ� Script ���g�k���� --%>

<%
SellerVO sellerVO = (SellerVO) request.getAttribute("sellerVO"); //SellerServlet.java(Concroller), �s�Jreq��sellerVO����
%>

<html>
<head>
<title>�t�Ӹ�� - listOneSeller.jsp</title>

<style>
table#table-1 {
	background-color: #CCCCFF;
	border: 2px solid black;
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

<style>
table {
	width: 600px;
	background-color: white;
	margin-top: 5px;
	margin-bottom: 5px;
}

table, th, td {
	border: 1px solid #CCCCFF;
}

th, td {
	padding: 5px;
	text-align: center;
}
</style>

</head>
<body bgcolor='white'>

	<h4>�����Ƚm�߱ĥ� Script ���g�k����:</h4>
	<table id="table-1">
		<tr>
			<td>
				<h3>�t�Ӹ�� - ListOneSeller.jsp</h3>
				<h4>
					<a href="select_page.jsp">�^����</a>
				</h4>
			</td>
		</tr>
	</table>

	<table>
		<tr>
			<th>�t�ӽs��</th>
			<th>Email</th>
			<th>�K�X</th>
			<th>�t�ӦW��</th>
			<th>�q��</th>
			<th>�t�Ӧa�}</th>
			<th>�x����}</th>
			<th>facebook</th>
			<th>���s���H</th>
			<th>�t��²��</th>
			<th>�Ȧ�N�X</th>
			<th>�Ȧ�b��</th>
			<th>��W</th>
			<th>�Ƶ�</th>
			<th>���W��</th>
			<th>���t�d�H</th>
			<th>�Τ@�s��</th>
			<th>���߮צa�}</th>
			<th>�t���Y�K</th>
			<th>�t�ӵ��U�ɶ�</th>
			<th>�̫�ק�ɶ�</th>
			<th>�t�Ӫ��A</th>

		</tr>
		<tr>
			<td><%=sellerVO.getSel_id()%></td>
			<td><%=sellerVO.getSel_account()%></td>
			<td><%=sellerVO.getSel_password()%></td>
			<td><%=sellerVO.getSel_name()%></td>
			<td><%=sellerVO.getSel_phone()%></td>
			<td><%=sellerVO.getSel_address()%></td>
			<td><%=sellerVO.getSel_url()%></td>
			<td><%=sellerVO.getSel_facebook()%></td>
			<td><%=sellerVO.getSel_contactPerson()%></td>
			<td><%=sellerVO.getSel_introduction()%></td>
			<td><%=sellerVO.getSel_bankCode()%></td>
			<td><%=sellerVO.getSel_bankNumber()%></td>
			<td><%=sellerVO.getSel_bankName()%></td>
			<td><%=sellerVO.getSel_remark()%></td>
			<td><%=sellerVO.getSel_title()%></td>
			<td><%=sellerVO.getSel_principal()%></td>
			<td><%=sellerVO.getSel_uniformNumbers()%></td>
			<td><%=sellerVO.getSel_registeredAddress()%></td>
		   <td>
<img src="/IBM_emp_0201MVC_Single-Table_mySQL8/seller/seller2.do?sel_id=${sellerVO.sel_id}" width= 100px height= 100px/>
                </td>
			<td><%=sellerVO.getSel_registerdTime()%></td>
			<td><%=sellerVO.getSel_lastModifiedTime()%></td>
			<td><%=sellerVO.getSel_status()%></td>

		</tr>
	</table>

</body>
</html>