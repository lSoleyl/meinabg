<div id="heading_bg">
<div align="left"><font size="+2">Aktien kaufen</font></div></div>
<div id="main">
<div align="left">
<form action="index.php?ACTION=buyshares" method=post>
  <label for="akt_kaufen"></label>
  <input type="hidden" name="id" value="{{id}}">
  <input type="text" name="count" size=6 value="1" autofocus="autofocus" id="share_count" onkeyup="shareprice()"> '{{share_name}}' Aktien f&uuml;r {{share_price}}&euro;/Aktie <input type="submit" value="kaufen"> <br>Kosten: <span id="costs"></span>&euro;, davon <span id="fee"></span>&euro; Geb&uuml;hren, Maximal: {{max_shares}} Aktien<br>
  Du hast bereits <a href="index.php?ACTION=myshares" title="Meine Aktien">{{my_shares}}</a> '{{share_name}}' Aktien
</form>
<h1>&nbsp;</h1>
</div>
</div>
<script language="JavaScript">
var fee={{sharefee}};
var fee_min={{sharefee_min}};
var fee_max={{sharefee_max}};
var share_price={{share_price}};
var share_value={{share_val}};
var share_max={{max_shares}};
function shareprice() {
	var count = parseInt(document.getElementById("share_count").value);
	if (count > share_max) {
		count = share_max;
		document.getElementById("share_count").value = share_max;
	}
	var fees = Math.min(fee_max, Math.max(fee_min, count*share_value*fee));
	var price = share_price * count + fees;
	document.getElementById("costs").textContent = price.toFixed(2);
	document.getElementById("fee").textContent = fees.toFixed(2);
}

shareprice();
</script>