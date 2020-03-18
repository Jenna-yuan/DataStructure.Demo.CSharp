<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="t" uri="http://www.nwnu.cn/common/"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>信息统计</title>

<script type="text/javascript">
function base64 (content) {
    return window.btoa(unescape(encodeURIComponent(content)));         
}
    /*
    *@tableId: table的Id
    *@fileName: 要生成excel文件的名字（不包括后缀，可随意填写）
    */
function tableToExcel(tableID,fileName){
      var table = document.getElementById(tableID);
      var excelContent = table.innerHTML;
      var excelFile = "<html xmlns:o='urn:schemas-microsoft-com:office:office' xmlns:x='urn:schemas-microsoft-com:office:excel' xmlns='http://www.w3.org/TR/REC-html40'>";
      excelFile += "<head><!--[if gte mso 9]><xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet><x:Name>{worksheet}</x:Name><x:WorksheetOptions><x:DisplayGridlines/></x:WorksheetOptions></x:ExcelWorksheet></x:ExcelWorksheets></x:ExcelWorkbook></xml><![endif]--></head>";
      excelFile += "<body><table>";
      excelFile += excelContent;
      excelFile += "</table></body>";
      excelFile += "</html>";
      var link = "data:application/vnd.ms-excel;base64," + base64(excelFile);
      var a = document.createElement("a");
      a.download = fileName+".xls";
      a.href = link;
      a.click();
 }
</script>
<style type="text/css">
body{
	color:white;
	background:#003366;
}

</style>
</head>
<body>

<div id="top">
	<h1 style="text-align:center">疫情上报系统</h1>
	<div style="float:right;">
		<button type="submit" class="btn btn-primary">数据统计</button>
		<a href="census.jsp"><button type="button" class="btn btn-warning" onclick="tableToExcel('item','data')">导出</button></a>
	</div>
</div>
<form action="listStudent" id="addStudentForm">
<div id="center" style="margin-top:80px">
	<table class="table" border="1" style="font-size:13px;border: 2px;border-color: white;border-collapse: collapse;">		
			<thead>
				<tr>
					<th>序号</th>
					<th>所在学院</th>
					<th>所在班级</th>
					<th>上报时间</th>
					<th>填报人</th>
					<th>学号</th>
					<th>联系电话</th>
					<th>当前所在省</th>
					<th>当前所在市</th>
					<th>当前所在区</th>
					<th>是否为中国留校生</th>
					<th>是否为武汉籍学生</th>
					<th>是否为湖北籍（不含武汉）</th>
					<th>是否近14日与湖北疫区人员接触过</th>
					<th>是否在武汉</th>
					<th>是否在湖北（不含武汉）</th>
					<th>是否今天从外地返校</th>
					<th>是否有疫情疑似症状</th>
					<th>是否已经确认被感染</th>
					<th>其他情况</th>
				</tr>
			</thead>
			<tbody>
					<c:forEach var="item" items="${page.rows}">
					<tr>
						<td>${item.id}</td>
						<td>${item.college}</td>
						<td>${item.class_name}</td>
						<td>${item.time}</td>
						<td>${item.name}</td>
						<td>${item.code}</td>
						<td>${item.number}</td>
						<td>${item.province}</td>
						<td>${item.city}</td>
						<td>${item.area}</td>
						<td>${item.an}</td>
						<td>${item.bn}</td>
						<td>${item.cn}</td>
						<td>${item.dn}</td>
						<td>${item.en}</td>
						<td>${item.fn}</td>
						<td>${item.gn}</td>
						<td>${item.hn}</td>
						<td>${item.in}</td>
						<td>${item.jn}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>	
		<div style="text-align:right"><t:page url="list" /></div>	
</div>
</form>

</body>
</html>