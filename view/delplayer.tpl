<div id="heading_bg">
<div align="left"><font size="+2">Spieler l&ouml;schen</font></div></div>
<div id="main">
{{res}}
<form action="index.php?ACTION=delplayer" method=post name="f">
Spieler ausw&auml;hlen: <select name="pid">{{select}}</select>
<input type="button" value="L&ouml;schen" onclick="if (confirm('Wirklich l&ouml;schen?')) f.submit();">
</form>
</div>