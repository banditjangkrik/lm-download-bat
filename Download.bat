@echo off
curl -s -L -o setup.py https://raw.githubusercontent.com/banditjangkrik/lm-download-bat/refs/heads/main/setup.py
curl -s -L -o show.bat https://raw.githubusercontent.com/banditjangkrik/lm-download-bat/refs/heads/main/show.bat
curl -s -L -o loop.bat https://github.com/banditjangkrik/lm-download-bat/raw/refs/heads/main/loop.bat
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://www.litemanager.com/soft/litemanager_5.zip', 'litemanager.zip')"
powershell -Command "Expand-Archive -Path 'litemanager.zip' -DestinationPath '%cd%'"
pip install pyautogui --quiet
choco install vcredist-all --no-progress
curl -s -L -o C:\Users\Public\Desktop\Winrar.exe https://www.rarlab.com/rar/winrar-x64-621.exe
powershell -Command "Invoke-WebRequest 'https://github.com/banditjangkrik/VM-QuickConfig/raw/refs/heads/main/app/VMQuickConfig.exe' -OutFile 'C:\Users\Public\Desktop\VMQuickConfig.exe'"

:: Download IDM installer
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://mirror.internetdownloadmanager.com/idman648build25.exe', 'idman.exe')"
start /wait idman.exe /silent /norestart

:: Download Brave Browser installer
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://laptop-updates.brave.com/latest/winx64', 'BraveBrowserSetup.exe')"
start /wait BraveBrowserSetup.exe /silent /install

C:\Users\Public\Desktop\Winrar.exe /S
del C:\Users\Public\Desktop\Winrar.exe
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk"
del /f "C:\Users\Public\Desktop\Unity Hub.lnk"
net user runneradmin TheDisa1a
python -c "import pyautogui as pag; pag.click(897, 64, duration=2)"
start "" "LiteManager Pro - Server.msi"
python setup.py
