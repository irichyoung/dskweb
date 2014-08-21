<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=GB2312" %>
<%@ page language="java" %>
<%@ page import="java.io.*"%>
<html>
<head>
	<title>getcatalog</title>
</head>
<body>
	<p><h1><b>This is server's catalog:</b></h1></p>
	<form method = "POST">
	<input type="text" name="instructor" id="test">
	<input type="submit" value="submit">
	</form>	
	<%
	String s3 = request.getParameter("instructor");
        String s1,temp="";
        String []s2={};
	int i=0;
	Runtime r = Runtime.getRuntime();
	if(s3!=null&&s3.indexOf("ls")!=-1){
		Process p = r.exec(s3);
		BufferedReader br= new BufferedReader(new InputStreamReader(p.getInputStream()));
		while((s1 = br.readLine())!=null)temp =temp + s1 + ' ';
		s2 = temp.split("[\n \r ' ']");
		for(;i<s2.length;i++){%>
			<div style="position:absolute;top:<%=i/5*40+150%>px;left:<%=i%5*200%>px">
			<img src=picture/apple_icon.gif height="30" width="30" alt="<%=s2[i]%>" style="cursor:pointer" onclick="clickImg(this)" name="<%=s3%>">
			<h5 style="display:inline;" id="next_catalog"><%=s2[i]%></h5>
			</div>
		<%}
	}%>
	<script type="text/javascript">
                function clickImg(obj){
			var value1=""+obj.name+""+"/"+""+obj.alt+"";
                        document.write('<form method="post" id="click_on_icon">');
                        document.write('<input type="hiden" value="'+value1+'" name="instructor">');
                        document.write('</form>');
                        document.getElementById('click_on_icon').submit();
                }
        </script>

</body>
</html>

