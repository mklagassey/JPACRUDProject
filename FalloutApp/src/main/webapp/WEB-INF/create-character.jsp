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
	<div class="col one">
					<img src="vault-tec.png" alt="Fallout Vault Boy with thumbs up"
						width="740" height="729" id="logo-v" />
				</div>
<form action="AddChar.do" method="POST">
				<input type="hidden" name="born" value="<%= (new java.util.Date().toString()) %>" /><br>
				<input type="hidden" name="photo" value="vault-boy-default.png" /><br>
				
				<div class="col two">
				
				<label for="name">Name:</label> 
				<input type="text" name="name" value="" /> <br> 
				<label for="faction">Faction:</label>
				<input type="text" name="faction" value="" /><br>
				<label for="born">Born:</label> 
				<input type="text" name="born" value="" /><br> 
				<label for="caps">Amount of caps :</label> 
				<input type="text" name="caps" value="" /> <br>
				/////////////////////////////////////////////////////////////<br>
				
				<h3>Current skill: none</h3>
					<label for="primarySkill">-- Choose a S.P.E.C.I.A.L. Skill
						--</label> <select name="primarySkill" id="primarySkill">
						<optgroup>
							<option value="Strength">S.trength</option>
							<option value="Perception">P.erception</option>
							<option value="Endurance">E.ndurance</option>
							<option value="Charisma">C.harisma</option>
							<option value="Intelligence">I.ntelligence</option>
							<option value="Agility">A.gility</option>
							<option value="Luck">L.uck</option>
						</optgroup>
					</select> <br> Still alive? <br> <label class="container"
						for="alive">Yes <span class="checkmark"></span>
					</label> <input type="radio" id="dead" name="alive" value="true"
						<c:if test="${focharacter.alive }">checked</c:if>><br />

					<label class="container" for="alive">No <input type="radio"
						id="living" name="alive" value="false"
						<c:if test="${!focharacter.alive }">checked</c:if>> <span
						class="checkmark"></span>
					</label> <br>
							+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++<br>
				<p>Click "Submit" to add new character to the Vault-Tec Database.</p>
				<input type="submit" value="Submit"> 
				</form>
				</div>
					</div>
					<form action="home.do">
					<input type="submit" value="Return to Main Menu">
				</form>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script type="text/javascript"
		src="https://static.tumblr.com/maopbtg/oimmiw86r/jquery.autosize-min.js"></script>
	<script src="fallout.js"></script>
</body>
</html>