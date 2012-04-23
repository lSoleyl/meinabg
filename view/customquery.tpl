<div id="heading_bg">
<div align="left"><font size="+2">Eigene Query</font></div></div>
<div id="main">
<form action="index.php?ACTION=customquery" method="post">  
<center>Query: <input type="text" value="SELECT * FROM `spieler`" size=100 name="query" autofocus="autofocus"><input type="submit" value="Send"></center></form><p>
<center>{{results}}<br>{{numrows}}</center>
</div>