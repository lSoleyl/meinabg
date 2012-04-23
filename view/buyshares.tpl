<div id="heading_bg">
<div align="left"><font size="+2">Aktien kaufen</font></div></div>
<div id="main">
<div align="left">
<form action="index.php?ACTION=buyshares" method=post>
  <label for="akt_kaufen"></label>
  <input type="hidden" name="id" value="{{id}}">
  <input type="text" name="count" size=6 value="1"> '{{share_name}}' Aktien f&uuml;r {{share_price}}&euro;/Aktie <input type="submit" value="kaufen"> (Maximal {{max_shares}})<br>
  Du hast bereits <a href="index.php?ACTION=myshares" title="Meine Aktien">{{my_shares}}</a> '{{share_name}}' Aktien
</form>
<h1>&nbsp;</h1>
</div>
</div>