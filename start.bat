@echo off
REM Quick Start Script for ABET Assessment Documentation Website (Windows)
REM This script helps you get started quickly on Windows

echo.
echo ================================================================
echo  ABET Assessment Application - Documentation Website
echo  Quick Start Setup Script (Windows)
echo ================================================================
echo.

REM Check for Node.js
echo Checking for Node.js...
where node >nul 2>nul
if %errorlevel% == 0 (
    echo [OK] Node.js is installed
    node --version
) else (
    echo [ERROR] Node.js is not installed
    echo Install from: https://nodejs.org/
    pause
    exit /b 1
)

echo.
echo Checking for npm...
where npm >nul 2>nul
if %errorlevel% == 0 (
    echo [OK] npm is installed
    npm --version
) else (
    echo [ERROR] npm is not installed
    pause
    exit /b 1
)

echo.
echo Installing dependencies...
call npm install
if %errorlevel% neq 0 (
    echo [ERROR] Failed to install dependencies
    pause
    exit /b 1
)

echo.
echo [OK] Dependencies installed successfully
echo.
echo Starting development server at http://localhost:8000
echo Press Ctrl+C to stop the server
echo.
pause

call npm start
