<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fallout Character CRUD</title>
<link rel="stylesheet" href="fallout.css">
<style>
img {
  max-width: 100%;
  height: auto;
}
</style>
</head>
<body>
	<div class="overlay"></div>
	<div class="scanline"></div>
	<div class="content clearfix">
	SUCCESS! <br>		${focharacter.name }	DELETED FOREVER.	
<form action="/"><input type="submit" value="MAIN MENU"></form>
<img src="dead-vault-boy.png" alt="vault tec" />
	</div>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script type="text/javascript"
		src="https://static.tumblr.com/maopbtg/oimmiw86r/jquery.autosize-min.js"></script>
	<script src="fallout.js"></script>
</body>
</html>