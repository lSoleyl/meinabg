@echo off
SET /P action=action?
echo ^<?php  >> .\action\%action%.ac
echo $header=h(); >> .\action\%action%.ac
echo. >> .\action\%action%.ac
echo ?^> >> .\action\%action%.ac
copy .\blank.html .\view\%action%.tpl > NUL