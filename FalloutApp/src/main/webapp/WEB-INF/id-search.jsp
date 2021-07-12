<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fallout Character CRUD</title>
<link rel="stylesheet" href="fallout.css">
</head>
<body>
	<div class="overlay"></div>
	<div class="scanline"></div>
	<div class="content clearfix">
		<h3 style="border: 1px; border-style: solid; border-color: black; padding: .2em; width: fit-content;">
		Enter Character's Unique Identifier</h3>
		<form action="GetCharData.do" method="GET">
			<label for="charId">Serial #: </label> 
			<input type="text" id="charId" name="charId" value="" autofocus /> 
			<input type="submit" value="Submit" />
		</form>
			<form action="/"><input type="submit" value="Go Back"></form>
	</div>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script type="text/javascript"
		src="https://static.tumblr.com/maopbtg/oimmiw86r/jquery.autosize-min.js"></script>
	<script src="fallout.js"></script>
</body>
</html>