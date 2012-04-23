<div id="heading_bg">
<div align="left"><font size="+2">Einloggen als</font></div></div>
<div id="main">
{{res}}
<form action="index.php?ACTION=loginas" method=post name="f">
Spieler ausw&auml;hlen: <select name="pid">{{select}}</select>
<input type="button" value="Ummelden" onclick="if (confirm('Wirklich sicher?')) f.submit();">
</form>  
</div>
