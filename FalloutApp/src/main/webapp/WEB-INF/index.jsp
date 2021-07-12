<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fallout Character CRUD</title>
<link rel="stylesheet" href="fallout.css">
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:20px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:20px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-nld1{background-color:#009901;border-color:#009901;font-family:"Arial Black", Gadget, sans-serif !important;;
  font-size:40px;text-align:left;text-decoration:underline;vertical-align:bottom}
.tg .tg-2aw9{background-color:#3531ff;border-color:#009901;font-family:"Arial Black", Gadget, sans-serif !important;;
  font-size:50px;text-align:right;vertical-align:top}
.tg .tg-2aw9{background-color:#009901;border-color:#009901;font-family:"Arial Black", Gadget, sans-serif !important;;
  font-size:40px;text-align:left;vertical-align:center}
@media screen and (max-width: 767px) {.tg {width: auto !important;}.tg col {width: auto !important;}.tg-wrap {overflow-x: auto;-webkit-overflow-scrolling: touch;}}
tr:hover {background-color:blue !important;}
</style>
</head>
<body onload="myFunction()">

	<div class="overlay"></div>
	<div class="scanline"></div>
	<div class="wrapper">
		<div class="content clearfix">

			<header class="site clearfix">
				<div class="col one">
					<img src="vault-tec.png" alt="Fallout Vault Boy with thumbs up" width="740"height="729" id="logo-v" />
				</div>
				<div class="col two">
						<h3>Vault-Tec Corp. C.R.U.D.S.</h3>
					<h4>
			Welcome to the Fallout Character Database. Please choose an
				option below:
			<br />
					</h4>
					
					


<div class="tg-wrap"><table class="tg">
<tbody>
  <tr>
    <td class="tg-2aw9"><span style="font-weight:bold;color:#FE0000">C</span></td>
    <td class="tg-nld1">
    	<div class="divBox">
    	<a href="create-character.do" id="next">reate</a>
		</div>
	</td>
  </tr>
  <tr>
    <td class="tg-2aw9"><span style="color:#FE0000">R</span></td>
    <td class="tg-nld1">
    	<div class="divBox">
    	<a href="search-character.do">ead</a>
		</div>
    </td>
  </tr>
  <tr>
    <td class="tg-2aw9"><span style="color:#FE0000">U</span></td>
    <td class="tg-nld1">
   	 	<div class="divBox">
    	<a href="search-character.do">pdate</a>
		</div>
    </td>
  </tr>
  <tr>
    <td class="tg-2aw9"><span style="color:#FE0000">D</span></td>
    <td class="tg-nld1">
    	<div class="divBox">
    	<a href="search-character.do">estroy</a>
		</div>
    </td>
  </tr>
  <tr>
    <td class="tg-2aw9" colspan="2">SYSTEM</td>
  </tr>
</tbody>
</table></div>
					----------------------------------------<br>
					VarCharDB v 1.0.0<br>
					(c)2077 Vault-Tec Industries<br>
					- Server 42 -<br>
				</div>
			</header>

			<nav class="site clear">
				<ul>
					<li><a href="GetByKeyword.do?keyword=" title="">List All Characters</a></li>
					<li><a href="https://github.com/mklagassey/JPACRUDProject" title="">Info</a></li>
					<li><a href="https://www.google.com/" title="">Exit</a></li>
				</ul>
			</nav>

			<p class="clear">
				<br />
			</p>

		</div>
	</div>

<script>
function myFunction() {
    document.getElementbyId("next").focus();
}
</script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script type="text/javascript"
		src="https://static.tumblr.com/maopbtg/oimmiw86r/jquery.autosize-min.js"></script>
	<script src="fallout.js">
</script>


</body>
</html>