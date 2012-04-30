<div id="heading_bg">
<div align="left"><font size="+2">Transaktion r&uuml;ckg&auml;ngig machen</font></div></div>
<div id="main">
<div align="left">
Im ersten Schritt muss der Spieler gew&auml;hlt werden und anschlie&szlig;end k&ouml;nnen die Transaktionen ausgew&auml;hlt werden, die r&uuml;ckg&auml;ngig gemacht werden sollen.
<form action="index.php?ACTION=revert" method=post>
Spieler: <select name=pid>{{players}}</select>
{{table}}
<br><input type="submit" value="W&auml;hlen/R&uuml;ckg&auml;ngig machen" />
</form>
</div>
</div>