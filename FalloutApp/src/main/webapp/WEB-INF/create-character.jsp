<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<form action="AddChar.do" method="POST">
				Name <input type="text" name="name" value="" /> <br>
				Faction <input type="text" name="faction" value="Vault Dweller" /><br>
				<input type="hidden" name="born" value="<%= (new java.util.Date().toString()) %>" /><br>
				<input type="hidden" name="photo" value="vault-boy-default.png" /><br>
				Amount of caps <input type="text" name="caps" value="0" /> <br>
				Still alive? <input type="text" name="alive" value="true" /><br>
				Primary Skill <br>
				
				<input type="radio" id="Strength" name="primarySkill" value="Strength" checked>
  				<label for="Strength">Strength</label><br>
  				<input type="radio" id="Perception" name="primarySkill" value="Perception">
  				<label for="Perception">Perception</label><br>
  				<input type="radio" id="Endurance" name="primarySkill" value="Endurance">
  				<label for="Endurance">Endurance</label><br>
  				<input type="radio" id="Charisma" name="primarySkill" value="Charisma">
  				<label for="Charisma">Charisma</label><br>
  				<input type="radio" id="Intelligence" name="primarySkill" value="Intelligence">
  				<label for="Intelligence">Intelligence</label><br>
  				<input type="radio" id="Agility" name="primarySkill" value="Agility">
  				<label for="Agility">Agility</label><br>
  				<input type="radio" id="Luck" name="primarySkill" value="Luck">
  				<label for="Luck">Luck</label><br>
				
				<p>Click "Submit" to add new character or use "DELETE FILM" to permanently remove the film.</p>
				<input type="submit" value="Submit"> 
				</form>
					</div>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script type="text/javascript"
		src="https://static.tumblr.com/maopbtg/oimmiw86r/jquery.autosize-min.js"></script>
	<script src="fallout.js"></script>
</body>
</html>