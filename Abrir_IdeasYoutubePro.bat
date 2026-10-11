@echo off
title IdeasYouTubePro - Servidor local
cd /d "%~dp0"

set "PY="
where py >nul 2>nul && set "PY=py"
if not defined PY where python >nul 2>nul && set "PY=python"

if not defined PY (
  echo [AVISO] Necesitas Python ^(gratis en https://www.python.org/downloads/^).
  echo Al instalarlo marca la casilla "Add Python to PATH".
  echo Abriendo el archivo directamente...
  start "" "index.html"
  pause
  exit /b
)

start "" /min cmd /c "%PY% -m http.server 8080"
timeout /t 2 /nobreak >nul
start "" "http://localhost:8080/"
echo.
echo   IDEASYOUTUBEPRO activo en: http://localhost:8080
echo   Cierra esta ventana para detener el servidor.
echo.
pause >nul