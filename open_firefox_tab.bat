:: Finds the running docker container ID, retrieves the token from within the container and opens a new firefox tab

REM timeout allows container to start before opening the new tab
timeout /t 3 /nobreak

for /f "delims=" %%i in ('docker ps -aqf "ancestor=tensorflow-pandas"') do set ID=%%i
for /f "delims=" %%i in ('docker exec %ID% jupyter notebook list') do set URL=%%i

set URL=%URL: :: /tf=%
set URL=%URL:0.0.0.0=127.0.0.1%
start firefox -new-tab %URL%
PAUSE