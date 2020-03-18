<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>学生信息填报</title>

<style type="text/css">
body{
	color:white;
}
h1{
	margin-top:65px;
	margin-left:300px;
}
.table{
	margin-top:60px;
	margin-left:100px;
}
</style>
<script type="text/javascript">
function datetime() {
	 var now = new Date();
	 document.getElementById("time").value = now.getFullYear() + "-"
	 + (now.getMonth() + 1) + "-" + now.getDate();
	 document.getElementById("time").value += " " + now.getHours() + ":"
	 + now.getMinutes() + ":" + now.getSeconds();
	 }
	 window.setInterval("datetime()", 1000);
</script>
</head>
<body background="plug-in/system/img/back.jpg">

<div id="top">
	<h1>学生疫情登记</h1>
</div>

<div id="center">
<form action="saveStudent">
	<table class="table" style="width:55%;">		
			<thead>
				<tr>
					<th style="text-align:left;">所在学院：</th>
					<td>
						<select>
							<option value="computer">计算机科学与工程学院</option>
							<option value="math">数学与统计学院</option>
							<option value="sport">体育学院</option>
							<option value="english">外国语学院</option>
							<option value="heart">心理学院</option>
							<option value="teacher">教育技术学院</option>
							<option value="math">传媒学院</option>
							<option value="art">美术学院</option>
							<option value="philosophy">哲学院</option>
							<option value="history">历史学院</option>
							<option value="lecture">文学院</option>
						</select>
					</td>
				</tr>
				<tr>
					<th style="text-align:left;">所在班级：</th>
					<td><input type="text" name="class" id="class" size="27" value="" /></td>
				</tr>
				<tr>
					<th style="text-align:left;">上报时间：</th>
					<td><input id="time" style="text-align: center;width:208px" /></td>
				</tr>
				<tr>
					<th style="text-align:left;">填报人：</th>
					<td><input type="text" name="name" id="name" size="27" value="" /></td>
				</tr>
				<tr>
					<th style="text-align:left;">学号：</th>
					<td><input type="text" name="code" id="code" size="27" value="" /></td>
				</tr>
				<tr>
					<th style="text-align:left;">联系电话：</th>
					<td><input type="text" name="number" id="number" size="27" value="" /></td>
				</tr>
				<tr>
					<th style="text-align:left;">当前所在省：</th>
					<td><input type="text" name="number" id="number" size="27" value="" /></td>
				</tr>
				<tr>
					<th style="text-align:left;">当前所在市：</th>
					<td><input type="text" name="number" id="number" size="27" value="" /></td>
				</tr>
				<tr>
					<th style="text-align:left;">当前所在区：</th>
					<td><input type="text" name="number" id="number" size="27" value="" /></td>
				</tr>
				<tr>
					<th style="text-align:left;">是否为中国留校生：</th>
					<td>
						<input type="radio" name="favorite" value="nba" style="margin-left:20px"> 是 &nbsp; 
						<input type="radio" name="favorite" value="nba" style="margin-left:80px"> 否 &nbsp; 
					</td>	
				</tr>
				<tr>
					<th style="text-align:left;">是否为武汉籍学生：</th>
					<td>
						<input type="radio" name="favorite0" value="nba" style="margin-left:20px"> 是 &nbsp; 
						<input type="radio" name="favorite0" value="nba" style="margin-left:80px"> 否 &nbsp; 
					</td>	
				</tr>
				<tr>
					<th style="text-align:left;">是否为湖北籍（不含武汉）：</th>
					<td>
						<input type="radio" name="favorite1" value="nba" style="margin-left:20px"> 是 &nbsp; 
						<input type="radio" name="favorite1" value="nba" style="margin-left:80px"> 否 &nbsp; 
					</td>	
				</tr>
				<tr>
					<th style="text-align:left;">是否近14日与湖北疫区人员接触过：</th>
					<td>
						<input type="radio" name="favorite2" value="nba" style="margin-left:20px"> 是 &nbsp; 
						<input type="radio" name="favorite2" value="nba" style="margin-left:80px"> 否 &nbsp; 
					</td>	
				</tr>
				<tr>
					<th style="text-align:left;">是否在武汉：</th>
					<td>
						<input type="radio" name="favorite3" value="nba" style="margin-left:20px"> 是 &nbsp; 
						<input type="radio" name="favorite3" value="nba" style="margin-left:80px"> 否 &nbsp; 
					</td>	
				</tr>
				<tr>
					<th style="text-align:left;">是否在湖北（不含武汉）：</th>
					<td>
						<input type="radio" name="favorite4" value="nba" style="margin-left:20px"> 是 &nbsp; 
						<input type="radio" name="favorite4" value="nba" style="margin-left:80px"> 否 &nbsp; 
					</td>	
				</tr>
				<tr>
					<th style="text-align:left;">是否今天从外地返校:</th>
					<td>
						<input type="radio" name="favorite5" value="nba" style="margin-left:20px"> 是 &nbsp; 
						<input type="radio" name="favorite5" value="nba" style="margin-left:80px"> 否 &nbsp; 
					</td>	
				</tr>
				<tr>
					<th style="text-align:left;">是否有疫情疑似症状：</th>
					<td>
						<input type="radio" name="favorite6" value="nba" style="margin-left:20px"> 是 &nbsp; 
						<input type="radio" name="favorite6" value="nba" style="margin-left:80px"> 否 &nbsp; 
					</td>	
				</tr>
				<tr>
					<th style="text-align:left;">是否已经确认被感染：</th>
					<td>
						<input type="radio" name="favorite7" value="nba" style="margin-left:20px"> 是 &nbsp; 
						<input type="radio" name="favorite7" value="nba" style="margin-left:80px"> 否 &nbsp; 
					</td>	
				</tr>
				<tr>
					<th style="text-align:left;">其他情况：</th>
					<td>
						<textarea name="eduhistory" cols="30" rows="5" align="center">任何需要说明的情况（如国外详细信息，家庭成员情况等）</textarea>
					</td>	
				</tr>
			</thead>
		</table>	
		<a href="home_page.jsp"><button type="button" class="btn btn-primary" style="color:white;margin-left:310px;font-size:15px;background-color:#4189E1;" type="submit">确认提交</button></a>	
</form>
</div>
</body>
</html>