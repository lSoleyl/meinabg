<div id="heading_bg">
<div align="left"><font size="+2">Aktien verkaufen</font></div></div>
<div id="main">
{{error}}
<div align=left>
<form action="index.php?ACTION=sellshares" method=post>
<input type="hidden" name="id" value="{{id}}">
<input type="text" name="count" size=6 value="1" autofocus="autofocus" id="share_count" onkeyup="shareprice()"> '{{share_name}}' Aktien f&uuml;r {{share_price}}&euro;/Aktie <input type="submit" value="verkaufen"><br>Erl&ouml;s: <span id="win"></span>&euro; darin enthaltene Geb&uuml;hren: <span id="fee"></span>&euro;, Max {{max_shares}} Aktien<br>
</form>
</div><script language="JavaScript">
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
	var price = share_price * count - fees;
	document.getElementById("win").textContent = price.toFixed(2);
	document.getElementById("fee").textContent = fees.toFixed(2);
}

shareprice();
</script>