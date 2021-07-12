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




		<c:choose>
			<c:when test="${not empty focharacter}">
				<div class="col one">
					<img src="vault-tec.png" alt="Fallout Vault Boy with thumbs up"
						width="740" height="729" id="logo-v" />
				</div>
				<p>To change character information, edit the fields below and
					press the "update" button. To permanently remove the record, use
					the "DELETE" button.</p>
				<form action="UpdateChar.do" method="POST">
					<input value="${focharacter.id}" type="hidden" name="id"> <label
						for="name">Name:</label> <input type="text" name="name"
						value="${focharacter.name}" /> <br> <label for="faction">Faction:</label>
					<input type="text" name="faction" value="${focharacter.faction}" /><br>
					<label for="born">Born:</label> <input type="text" name="born"
						value="${focharacter.born}" /><br> <label for="caps">Amount
						of caps :</label> <input type="text" name="caps"
						value="${focharacter.caps}" /> <br>

					<h3>Current skill: ${focharacter.primarySkill}</h3>
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

					<h4>Click "Submit" to finalize changes to character DB entry</h4>
					<input type="submit" value="Submit">
				</form>

				<form action="DeleteChar.do" method="POST">
					<input value="${focharacter.id}" type="hidden" name="id">
					<button class="button">> !!!DELETE!!!</button>
					<br>
				</form>

				<br>
				<form action="home.do">
					<input type="submit" value="Return to the Home Page">
				</form>
				<br>
			</c:when>

			<c:otherwise>
				<div class="col one">
					<img src="vault-tec.png" alt="vault tec logo" width="740"
						height="729" id="logo-v" />
				</div>
				<p>To change character information, edit the fields below and
					press the "update" button. To permanently remove a record, use the
					"DELETE" button.</p>
				<c:forEach var="focharacter" items="${focharacters}">
					<form action="UpdateChar.do" method="POST">

						<div class="col one">
							<img src="${focharacter.photo }" alt="character photo"
								width="740" height="729" id="logo-v" />
						</div>

						<div class="col two">
							<input value="${focharacter.id}" type="hidden" name="id">
							<label for="name">Name:</label> <input type="text" name="name"
								value="${focharacter.name}" /> <label for="faction">Faction:</label>
							<input type="text" name="faction" value="${focharacter.faction}" />
							<label for="born">Born:</label> <input type="text" name="born"
								value="${focharacter.born}" /> <label for="caps">Amount
								of caps :</label> <input type="text" name="caps"
								value="${focharacter.caps}" /> <br>
							/////////////////////////////////////////////////////////////<br>
							<h3>>>Current primary skill: ${focharacter.primarySkill}</h3>
							<label for="primarySkill">-- Choose a S.P.E.C.I.A.L.
								Skill --</label> <select name="primarySkill" id="primarySkill">
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

							<label class="container" for="alive">No <input
								type="radio" id="living" name="alive" value="false"
								<c:if test="${!focharacter.alive }">checked</c:if>> <span
								class="checkmark"></span>
							</label> <br>
							+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++<br>
							<h4>Click "Submit" to finalize changes to character DB entry</h4>
							<input type="submit" value="Submit">
						</form>
					</div>
				<form action="DeleteChar.do" method="POST">
		<input value="${focharacter.id}" type="hidden" name="id">
		<button class="button">> !!!DELETE!!!</button>
		<br>
	</form>

	<br>
	<form action="home.do">
		<input type="submit" value="Return to the Home Page">
	</form>
	<br>
	--------------------------------------------------------------------------------
	<br>
				</c:forEach>
			</c:otherwise>
	</c:choose>






	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script type="text/javascript"
		src="https://static.tumblr.com/maopbtg/oimmiw86r/jquery.autosize-min.js"></script>
	<script src="fallout.js"></script>
</body>
</html>