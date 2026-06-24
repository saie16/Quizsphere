@echo off
netsh advfirewall firewall delete rule name="QuizSphere HTTP" >nul 2>&1
netsh advfirewall firewall add rule name="QuizSphere HTTP" dir=in action=allow protocol=TCP localport=8080
echo.
echo Firewall rule added! Students can now connect on port 8080.
echo Share this address with your students:
echo.
echo   http://192.168.1.42:8080
echo.
pause
