<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" charset="UTF-8">
<title>Lokmacı Baba Firma Ekle</title>
<link href="<c:url value="assets/css/addform.css"/>" rel="stylesheet"> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

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


<div align="center">
<h1>Firma Kayıt Formu</h1>
</br>
</br>
<form:form class="form" action="save" method="post" modelAttribute="company" accept-charset="utf-8">
<form:hidden path="id"/>
<div class="form-group">

<form:input type="text" class="form-control" name="isim" id="isim" placeholder=" Adınız ve Soyadınız " data-rule="minlen:4" data-msg="En az 4 karakter olmalıdır" path="isim"/> 

</div>
<div class="form-group">

 <form:input type="text" class="form-control" name="TC" id="TC" placeholder="TC Kimlik No " maxlength="11" data-rule="minlen:11" pattern="[0-9]{11}"  data-msg="En az 11 karakter olmalıdır" path="TC"/> 
</div>
<div class="form-group">

 <form:textarea class="form-control" name="adres" id="adres" rows="5" placeholder="Adresiniz"  data-rule="required" data-msg="Adresinizi Giriniz" path="adres"/> 

</div>

<div class="form-group">

<form:input type="tel" class="form-control" name="tel" id="tel" placeholder="530-000-00-00" maxlength="13" data-rule="minlen:13"  pattern="[0-9]{3}-[0-9]{3}-[0-9]{2}-[0-9]{2}" path="tel"/> 

</div>
<div class="form-group">

<form:input type="email" name="email" class="form-control" id="email" placeholder="aa@aa.com"  data-rule="required"  path="email"/> 

</div>
<div class="form-group">

<form:input type="date" name="dTarih" class="form-control" id="dTarih" placeholder="Hastanın Doğum Tarihi"  data-rule="required"  path="dTarih"/> 

</div>
<div class="form-group">

<form:select  name="Soru1" class="form-control" id="Soru1"  data-rule="required"  path="Soru1">
                      <option value="">--Parenkende Ticaret ile Uğraştınız mı?--</option>
                        <option value="1">Evet</option>
                        <option value="0">Hayır</option>
                        
                      </form:select>
</div>
<div class="form-group">

<form:textarea name="Soru2" class="form-control" rows="5" id="Soru2" placeholder="Lokumcu Babayı Tercih Etme Sebebiniz Nedir?"  data-rule="required"  path="Soru2"/> 

</div>

<div class="form-group">

<form:input type="text" class="form-control" name="isAdres" id="isAdres" placeholder=" Hangi İl/İlçe/Semt'te Lokumcu Baba Şubesi Açmayı Düşünüyorsunuz? " data-rule="required" data-msg="Lütfen Adres Bilgisini Giriniz" path="isAdres"/> 

</div>

<div class="form-group">

<form:input type="text" class="form-control" name="miktar" id="isAdres" placeholder=" Yatırım Miktarınız Nedir? " data-rule="required" data-msg="Lütfen Yatırım Miktarını Giriniz" path="miktar"/> 

</div>


<div class="form-group">

 <form:textarea class="form-control" name="notlar" id="notlar" rows="5" placeholder="Eklemek İstedikleriniz"  data-rule="required" data-msg="Not Giriniz" path="notlar"/> 

</div>
 <div class="text-center">
 <form:button type="submit" class="btn btn-primary" name="Kaydet" value="Kaydet" >Kaydet</form:button>
 </div>


</form:form>
</div>
<div class="social-links">
<img src="<c:url value="assets/img/fb.png" />" >
<img src="<c:url value="assets/img/tw.png" />" >
<img src="<c:url value="assets/img/ig.png" />" >
</div>

</body>
</html>