<div id="heading_bg">
<div align="left"><font size="+2">Nachricht schreiben</font></div></div>
<div id="main">
{{form}}
<table>
<tr><td align=right>An:</td><td><input type="text" name="to" value="{{to}}" size=30 maxlength=30></input></td>
<tr><td align=right>Betreff:</td><td><input type="text" name="betr" value="{{betr}}" size=50 maxlength=50></input></td></tr>
<tr><td valign=top>Nachricht:</td><td><textarea cols=80 rows=25 name="message" maxlength=5000>{{message}}</textarea></td></tr>
<tr><td colspan=2 align=center><input type="submit" value="Abschicken" /></td></tr>
</table>
{{error}}
</form>