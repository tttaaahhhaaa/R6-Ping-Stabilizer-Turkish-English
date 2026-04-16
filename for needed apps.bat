@echo off
title R6 Optimizer - Bagimlilik Kurulumu
echo ===============================================
echo R6 Server Optimizer - Bagimlilik Kurulumu
echo ===============================================
echo.

:: Python kontrolu
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Python bulunamadi!
    echo Lutfen Python 3.8 veya uzerini https://python.org adresinden kurun.
    echo Kurulum sirasinda "Add Python to PATH" secenegini isaretleyin.
    echo.
    pause
    exit /b 1
)

echo Python bulundu: 
python --version
echo.

:: pip guncelleme
echo pip guncelleniyor...
python -m pip install --upgrade pip

:: PySide6 kurulumu
echo.
echo PySide6 kuruluyor...
pip install PySide6
if %errorlevel% neq 0 (
    echo PySide6 kurulumu basarisiz!
    pause
    exit /b 1
)
echo PySide6 basariyla kuruldu.

:: Winget kontrolu (Speedtest CLI icin)
echo.
echo Winget kontrol ediliyor...
winget --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Winget bulunamadi! Winget genellikle Windows 10/11 ile gelir.
    echo Speedtest CLI'yi manuel olarak https://speedtest.net/apps/cli adresinden kurabilirsiniz.
) else (
    echo Winget bulundu. Speedtest CLI kuruluyor...
    winget install -e --id Ookla.Speedtest.CLI --accept-package-agreements --accept-source-agreements
    if %errorlevel% neq 0 (
        echo Speedtest CLI kurulumu basarisiz! Uygulama calistiginda tekrar deneyecektir.
    ) else (
        echo Speedtest CLI basariyla kuruldu.
    )
)

echo.
echo ===============================================
echo Tum bagimliliklar basariyla kuruldu/denetlendi.
echo Uygulamayi baslatmak icin R6_Optimizer.exe'yi calistirin.
echo ===============================================
pause