<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" charset="UTF-8">
<title>Lokmacı Baba Anasayfa</title>
<link href="<c:url value="assets/css/style.css" />" rel="stylesheet"> 
<script src="<c:url value="assets/js/jquery-3.5.1.js" />" > </script>
</head>
<body>
<div class="container">
<div class="navbar">
<a href="index"><img src="<c:url value="assets/img/logo.png" />"   class="logo"></a>
<nav>
<ul id="menuList">
<li><a href="index">Anasayfa</a></li>
<li><a href="#">Hakkımızda</a></li>
<li><a href="viewer">Firmaları Görüntüle</a></li>
<li><a href="new">Yeni Firma Kayıt </a></li>

</ul>

</nav>
<a onclick="togglemenu();"><img src="<c:url value="assets/img/menu.png" />"  class="menu-icon" ></a>

</div>
<div class="row">
<div class="col-1">
<h2>Lokmacı Baba </h2>
<h3>Türkiye'deki En İyi Lokmaların Adresi </h3>
<p>1923'ten Günümüze Uzanan Bir Lezzet Şöleni </p>
<h4>Sizde Ailemize Katılmak İster Misiniz?</h4>
<a href="new"><button type="button" >Şimdi Katılın<img src="<c:url value="assets/img/arrow.png" />"></button></a>
</div>
<div class="col-2">
<img src="<c:url value="assets/img/lokma.png" />" class="controller">

</div>
</div>
<div class="social-links">
<img src="<c:url value="assets/img/fb.png" />" >
<img src="<c:url value="assets/img/tw.png" />" >
<img src="<c:url value="assets/img/ig.png" />" >
</div>


</div>
<script type="text/javascript">

function togglemenu()
{
	var menuList=document.getElementById("menuList");
	menuList.style.maxHeight="0px";
	if(menuList.style.maxHeight=="0px")
		
		{
		menuList.style.maxHeight="130px";
		
		}
	else
		{
		menuList.style.maxHeight="0px";

		}
	}
</script>
</body>
</html>