<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" charset="UTF-8">
<title>Lokmacı Baba Firmaları Görüntüle</title>
<link href="<c:url value="assets/css/style.css" />" rel="stylesheet"> 
<link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.18.1/dist/bootstrap-table.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
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


<div align="center">
<h1> Kayıtlı Firmalar</h1>
<h4><a href="new">Yeni Firma Ekle</a></h4>
</br>
</br>

    <table  cellspacing="0" width="100%"
                      data-toggle="table"
                      data-pagination="true"
                      data-search="true"
                      
                      >

                      <thead>
                          <tr>
                           
                            <th class="th-sm" data-field="id" data-sortable="true">ID
                            </th>
                       <th class="th-sm" data-field="name" data-sortable="true">Adı ve Soyadı
                      
                            </th>
                              <th class="th-sm" data-field="tc" data-sortable="true">TC Kimlik No
                      
                      
                            </th>
                           
                            <th class="th-sm" data-field="adres" data-sortable="true">Adres
                      
                            </th>
                            <th class="th-sm" data-field="tel" data-sortable="true">Telefon
                      
                            </th>
							 <th class="th-sm" data-field="email" data-sortable="true">Email
                      
                            </th>
                            <th class="th-sm" data-field="birthdate" data-sortable="true">Doğum Tarihi </th>
                          <th class="th-sm" data-field="soru1" data-sortable="true">Parankende Tecrübesi
                      
                          </th>
						    <th class="th-sm" data-field="soru2" data-sortable="true">Tercih Sebebiniz
                      
                          </th>
                          <th class="th-sm" data-field="isadres" data-sortable="true">Şube Adresi
                      
                          </th>
                           <th class="th-sm" data-field="miktar" data-sortable="true">Yatırım Miktarı
                      
                          </th> 
						  <th class="th-sm" data-field="notlar" data-sortable="true">Notlar
                      
                          </th>
						   <th class="th-sm" data-field="ayarlar" data-sortable="true">Ayarlar
                      
                          </th>
                        </tr>
                   
                        </thead>
                        <tbody>
                        
                        <c:forEach items="${listCompany}" var="company" varStatus="status">
<tr>
<td>${status.index+1 }</td>
<td>${company.isim }</td>
<td>${company.TC }</td>
<td>${company.adres }</td>
<td>${company.tel }</td>
<td>${company.email }</td>
<td>${company.dTarih }</td>
<td>${company.soru1 }</td>
<td>${company.soru2 }</td>
<td>${company.isAdres }</td>
<td>${company.miktar }</td>
<td>${company.notlar }</td>
<td><a href="edit?id=${company.id}">Düzenle</a>
<a href="delete?id=${company.id}">Sil</a>
</td>

</tr>
</c:forEach>
                        </tbody>
                        <tfoot>
                          <tr>
                            <th>ID
                            </th>
							<th>Adı ve Soyadı
                            </th>
                            <th>TC Kimlik No
                            </th>
                            
                            <th>Adres
                            </th>
                            <th>Telefon
                            </th>
							<th>EMail
                            </th>
                            <th>Doğum Tarihi
                            </th>
                            <th>Parakende Tecrübeniz
                            </th>
                            <th>Tercih Sebebiniz
                            </th>
                           <th>Şube Adresi
                            </th>
							<th>Yatırım Miktarı
                            </th>
							<th>Notlar
                            </th>
							<th>Ayarlar
                            </th>
                          </tr>
                        </tfoot>
                      </table>
                      
</div>
<div class="social-links">
<img src="<c:url value="assets/img/fb.png" />" >
<img src="<c:url value="assets/img/tw.png" />" >
<img src="<c:url value="assets/img/ig.png" />" >
</div>

  <script>
                    $(document).ready(function () {
                      $('#dtBasicExample').DataTable();
                      $('.dataTables_length').addClass('bs-select');
                    });
                    
                        </script>
  <script src="https://unpkg.com/bootstrap-table@1.18.1/dist/bootstrap-table.min.js"></script>
  <script src="<c:url value="assets/js/dataTables.bootstrap4.min.js" />" > </script>
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