<%@page import="model.Branch"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CEB LOCATION DETAILS</title>
<link rel="stylesheet" href="WebContentF/Views/bootstrap.min.css">
<script src="WebContentF/Components/jquery-3.6.0.min.js"></script>
<script src="WebContentF/Components/main.js"></script>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-8">

 <h1 class="m-3">CEB Location Informations</h1>

 <form id="formStudent">
 
 
 <!-- MAPLOCATIONCODE -->
 
 <div class="input-group input-group-sm mb-3">
 <div class="input-group-prepend">
 <span class="input-group-text" id="lbllcode">Map Location Code: </span>
 </div>
 <input type="text" id="txtlcode" name="txtlcode">
 </div>
 
 <!-- ADDRESSLINE1 -->
 
 <div class="input-group input-group-sm mb-3">
 <div class="input-group-prepend">
 <span class="input-group-text" id="lbladdl1">Address Line 1: </span>
 </div>
 <input type="text" id="txtaddl1" name="txtaddl1">
 </div>
 
 <!-- ADDRESSLINE2 -->
 
 <div class="input-group input-group-sm mb-3">
 <div class="input-group-prepend">
 <span class="input-group-text" id="lbladdl2">Address Line 2: </span>
 </div>
 <input type="text" id="txtaddl2" name="txtaddl2">
 </div>
 
 <!-- CITY -->
 
 <div class="input-group input-group-sm mb-3">
 <div class="input-group-prepend">
 <span class="input-group-text" id="lblcity">City: </span>
 </div>
 <select id="ddlcity" name="ddlcity">
 <option value="0">--Select City--</option>
 <option value="1">Anuradhapura</option>
 <option value="2">Badulla</option>
 <option value="3">Colombo</option>
 <option value="4">Gampaha</option>
 </select>
 </div>
 
 <!-- ZIPCODE -->
 <div class="input-group input-group-sm mb-3">
 <div class="input-group-prepend">
 <span class="input-group-text" id="lblzipcode">ZIP Code: </span>
 </div>
 <select id="ddlzipcode" name="ddlzipcode">
 <option value="0">--Select ZIP CODE--</option>
 <option value="1">10000</option>
 <option value="2">10100</option>
 <option value="3">01000</option>
 <option value="4">01200</option>
 <option value="1">10200</option>
 <option value="2">10300</option>
 <option value="3">10340</option>
 <option value="4">00100</option>
 </select>
 </div>
 
  <!-- PHONE -->
 
 <div class="input-group input-group-sm mb-3">
 <div class="input-group-prepend">
 <span class="input-group-text" id="lblphone">Phone: </span>
 </div>
 <input type="text" id="txtphone" name="txtphone">
 </div>
 
 
<input type="button" id="btnSave" value="Save" class="btn btn-primary">
<input type="hidden" id="hidItemIDSave" name="hidItemIDSave" value="">
</form>


<div id="alertSuccess" class="alert alert-success"></div>
<div id="alertError" class="alert alert-danger"></div>
<br>
<div id="divItemsGrid">
 <%
 Branch branchObj = new Branch();
 out.print(branchObj.readCEBDetails());
 %>
</div>
</div>
</div>
</div>
</body>
</html>
