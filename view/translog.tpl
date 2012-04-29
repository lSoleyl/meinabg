<div id="heading_bg">
<div align="left"><font size="+2">Transaktionslog: <a href="index.php?ACTION=buyshares&ID={{id}}" title="{{share_name}} Aktien kaufen">{{share_name}}</a></font></div></div>
<div id="main">
<div align=left>
Gesamtumsatz: {{umsatz}}<br><br>
Gesamtbilanz: &nbsp;&nbsp;{{bil}}<br><br>
Gezahlte <a href=# title="Transaktionsgeb&uuml;hren">TG</a>: &nbsp;&nbsp;&nbsp;<span class="high">{{total_fee}}</span><br>

</div>
Gr&uuml;ne Zeilen sind Verk&auml;ufe, rote Zeilen K&auml;ufe
<table>
<tr><th>Datum</th><th>Anzahl</th><th>&euro;/Aktie</th><th>Transaktionsbetrag</th><th>Gezahlte <a href=# title="Transaktionsgeb&uuml;hren">TG</a></th></tr>
{{transactions}}
</table>

