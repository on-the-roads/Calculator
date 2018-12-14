<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>Calculator By Jsp</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	</head>

	<body>
		<div align="center">
		<jsp:useBean id="calculator"  class="com.CalculatorBean.Calculator"></jsp:useBean>
			<jsp:setProperty name="calculator" property="*" />
			<%
				try {calculator.calculate();}
				catch(Exception e){
				out.write(e.getMessage());//用于除数为0时给用户友好提示！
				}
			%><br>
			--------------------------------------------------------<br>
			<%
				out.write("计算结果是：");
			%>
			<jsp:getProperty name="calculator" property="firstnum" />
			<jsp:getProperty name="calculator" property="operator" />
			<jsp:getProperty name="calculator" property="secondnum" />
			<%
				out.write("=");
			%>
			<jsp:getProperty name="calculator" property="ans" /><br>
			--------------------------------------------------------<br>

			<form action="/Calculator/Calculator.jsp" method="post">
				<table witdh="40%" border="1" >

					<br>
					<tr>
						<td  colspan="2">
							简单的计算器
						</td>
					</tr>

					<tr>
						<td align="center">
							第一个数值
						</td>
						<td>
							<input type="text" name="firstnum">
						</td>
					</tr>


					<tr>
						<td align="center">
							运算符
						</td>
						<td>
							<select name="operator">
								<option value="+">
									+
								</option>
								<option value="-">
									-
								</option>
								<option value="*">
									*
								</option>
								<option value="/">
									/
								</option>
							</select>
						</td>
					</tr>

					<tr>
						<td align="center">
							第二个数值
						</td>
						<td>
							<input type="text" name="secondnum">
						</td>
					<tr>
						<td align="center" colspan="2">
							<input type="submit" value="Submit">
						</td>
					</tr>

				</table>

			</form>
		</div>
	</body>



</html>
