@echo off
chcp 65001 >nul
title Smart Safety Care 首次安裝程式

echo ========================================
echo   Smart Safety Care App 首次安裝程式
echo ========================================
echo.
echo 本程式將會自動為您安裝所需的環境與套件，這可能需要幾分鐘的時間。
echo 請確保您的電腦已經安裝了 Node.js 與 Python 3。
echo.
pause

echo.
echo [1/2] 正在安裝前端網頁套件 (npm install)...
call npm install
if %errorlevel% neq 0 (
    echo [錯誤] 前端套件安裝失敗！請確認是否已安裝 Node.js。
    pause
    exit /b
)

echo.
echo [2/2] 正在建立 Python 虛擬環境與安裝 AI 套件 (pip install)...
if not exist "venv" (
    echo 建立虛擬環境 venv...
    python -m venv venv
)
echo 更新 pip...
call venv\Scripts\python.exe -m pip install --upgrade pip >nul
echo 安裝 requirements-utf8.txt...
call venv\Scripts\pip.exe install -r requirements-utf8.txt
if %errorlevel% neq 0 (
    echo [錯誤] Python 套件安裝失敗！請確認是否已安裝 Python 3。
    pause
    exit /b
)

echo.
echo ========================================
echo   安裝完成！
echo   現在您可以點擊「▶️啟動_SmartCare.bat」來執行系統了。
echo ========================================
pause
