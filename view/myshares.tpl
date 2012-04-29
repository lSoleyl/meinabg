<div id="heading_bg">
<div align="left"><font size="+2">Meine Aktien</font></div></div>
<div id="main">
{{hint}}
<form action="index.php" method=get><input type="hidden" name="ACTION" value="translog">Transaktionslog f&uuml;r <select name="id">{{select}}</select> <input type="submit" value="zeigen" {{dis}}></form>
<table>
<tr>
<th style="background-image:url({IMAGE_DIR}/heading_bg.gif)">Name <a href="index.php?ACTION=myshares&sort_by=name&order=desc"><img src="{IMAGE_DIR}/up.jpg"></a><a href="index.php?ACTION=myshares&sort_by=name&order=asc"><img src="{IMAGE_DIR}/down.jpg"></a></th>
<th style="background-image:url({IMAGE_DIR}/heading_bg.gif)">Kaufpreis(&euro;/Aktie) <a href="index.php?ACTION=myshares&sort_by=kp&order=desc"><img src="{IMAGE_DIR}/up.jpg"></a><a href="index.php?ACTION=myshares&sort_by=kp&order=asc"><img src="{IMAGE_DIR}/down.jpg"></a></th>
<th style="background-image:url({IMAGE_DIR}/heading_bg.gif)">Verkaufspreis(&euro;/Aktie) <a href="index.php?ACTION=myshares&sort_by=vp&order=desc"><img src="{IMAGE_DIR}/up.jpg"></a><a href="index.php?ACTION=myshares&sort_by=vp&order=asc"><img src="{IMAGE_DIR}/down.jpg"></a></th>
<th style="background-image:url({IMAGE_DIR}/heading_bg.gif)">Anzahl <a href="index.php?ACTION=myshares&sort_by=count&order=desc"><img src="{IMAGE_DIR}/up.jpg"></a><a href="index.php?ACTION=myshares&sort_by=count&order=asc"><img src="{IMAGE_DIR}/down.jpg"></a></th>
<th style="background-image:url({IMAGE_DIR}/heading_bg.gif)">Gesamtwert(&euro;)</th>
<th style="background-image:url({IMAGE_DIR}/heading_bg.gif)"></th>
</tr>
{{shares}}
<tr><td colspan=5></td></tr>
<tr><th colspan=4 align=left>Alle Aktien </th><td align=left>{{total_share_value}}&euro;</td><td align=left><td></tr>
</table>
</div>
<div id="heading_bg">
<div align="left"><font size="+2">Meine Autotrader ({{current}}\{{max}})</font></div></div>
<div id="main">
{{addtrader}}
<table><tr>
<th style="background-image:url({IMAGE_DIR}/heading_bg.gif)">Aktie</th>
<th style="background-image:url({IMAGE_DIR}/heading_bg.gif)">Kaufen bei &euro;</th>
<th style="background-image:url({IMAGE_DIR}/heading_bg.gif)">Max. Kaufen</th>
<th style="background-image:url({IMAGE_DIR}/heading_bg.gif)">Verkaufen bei &euro;</th>
<th style="background-image:url({IMAGE_DIR}/heading_bg.gif)">Max. Verkaufen</th>
<th style="background-image:url({IMAGE_DIR}/heading_bg.gif)">N&auml;chster Schritt</th>
<th style="background-image:url({IMAGE_DIR}/heading_bg.gif)">Transaktionen</th>
<th style="background-image:url({IMAGE_DIR}/heading_bg.gif)"></th>
</tr>
{{autotraders}}
</table>
</div>