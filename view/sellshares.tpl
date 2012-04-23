<div id="heading_bg">
<div align="left"><font size="+2">Aktien verkaufen</font></div></div>
<div id="main">
{{error}}
<div align=left>
<form action="index.php?ACTION=sellshares" method=post>
<input type="hidden" name="id" value="{{id}}">
<input type="text" name="count" size=6 value="1"> '{{share_name}}' Aktien f&uuml;r {{share_price}}&euro;/Aktie <input type="submit" value="verkaufen"> (Max {{max_shares}} Aktien)<br>
</form>
</div>