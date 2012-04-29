<div id="heading_bg">
<div align="left"><font size="+2">Autotrader hinzuf&uuml;gen</font></div></div>
<div id="main">
<div align="left">
{{error}}
<form action="index.php?ACTION=newtrader" method=post>
Autotrader registrieren f&uuml;r folgende Aktie: <select name="ID">{{selectShare}}</select><p />
Kaufe maximal <input type="text" size=6 name="buymax" value=1 /> Aktien, wenn Kaufpreis der Aktie mindestens auf <input type="text" size=6 name="buyprice" value="1.00" />&euro; gefallen ist.<p />
Verkaufe maximal <input type="text" size=6 name="sellmax" value=1 /> Aktien, wenn Verkaufspreis der Aktie mindestens auf <input type="text" size=6 name="sellprice" value="2.00" />&euro; gestiegen ist.<p />
Mit welcher Aktion soll der Autotrader beginnen? <select name="state"><option value=1>Kaufen</option><option value=0>Verkaufen</option></select>
<input type="submit" value="Autotrader einrichten" />
</form>
</div>
</div>