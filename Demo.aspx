<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo.aspx.cs" Inherits="Demo" %>

<!DOCTYPE html>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled 1</title>
<style type="text/css">
.zone-main{
	position:absolute;
	top:0;
	left:0;
	right:0;
	bottom:0;
	background-color:gray;
}
.zone-top{
	height:30px;
	background-color:aqua;
	line-height:30px;
}
.zone-content{
	background-color:orange;
	position:absolute;
	top:30px;
	left:0;
	right:0;
	bottom:30px;
	overflow:auto;
}
.zone-bottom{
	height:30px;
	background-color:green;
	line-height:30px;
	position:absolute;
	left:0;
	right:0;
	bottom:0;
}
</style>
</head>

<body>
<div class="zone-main">
	<div class="zone-top">top</div>
	<div class="zone-content">
		content <br />
		content <br />
		content <br />
		content <br />content <br />
		content <br />content <br />content <br />content <br />content <br />content <br />content <br />content <br />
		content <br />content <br />content <br />content <br />content <br />content <br />content <br />
		content <br />content <br />content <br />content <br />content <br />content <br />content <br />
		content <br />content <br />content <br />content <br />content <br />content <br />
		content <br />content <br />content <br />content <br />content <br />content <br />
		content <br />
		content <br />
		content <br />
		content <br />content <br />
		content <br />content <br />content <br />content <br />content <br />content <br />content <br />content <br />
		content <br />content <br />content <br />content <br />content <br />content <br />content <br />
		content <br />content <br />content <br />content <br />content <br />content <br />content <br />
		content <br />content <br />content <br />content <br />content <br />content <br />
		content <br />content <br />content <br />content <br />content <br />content <br />
	</div>
	<div class="zone-bottom">bottom</div>
</div>
</body>

</html>
