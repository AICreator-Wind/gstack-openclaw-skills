@echo off
REM gstack-skills One-Click Installer for Windows (OpenClaw/WorkBuddy)

setlocal enabledelayedexpansion

echo ================================================
echo gstack-skills v2.0.0 Installer
echo ================================================
echo.

REM Detect platform
if exist "%USERPROFILE%\.openclaw" (
    set PLATFORM=openclaw
    set SKILL_DIR=%USERPROFILE%\.openclaw\skills
    echo [OK] Detected OpenClaw
) else if exist "%USERPROFILE%\.workbuddy" (
    set PLATFORM=workbuddy
    set SKILL_DIR=%USERPROFILE%\.workbuddy\skills
    echo [OK] Detected WorkBuddy
) else (
    echo [ERROR] Could not detect OpenClaw or WorkBuddy installation
    echo Please ensure OpenClaw or WorkBuddy is installed
    pause
    exit /b 1
)

echo.

REM Setup directories
echo Setting up directories...
if not exist "%SKILL_DIR%" (
    mkdir "%SKILL_DIR%"
    echo [OK] Created skills directory: %SKILL_DIR%
) else (
    echo [INFO] Skills directory exists: %SKILL_DIR%
)

echo.

REM Install skills
echo Installing gstack-skills...

set SCRIPT_DIR=%~dp0
set GSTACK_DIR=%SCRIPT_DIR%gstack-skills

if not exist "%GSTACK_DIR%" (
    echo [ERROR] gstack-skills directory not found
    echo Make sure you're running this script from the repository root
    pause
    exit /b 1
)

REM Remove existing installation
if exist "%SKILL_DIR%\gstack-skills" (
    echo [WARN] Removing existing gstack-skills installation
    rmdir /s /q "%SKILL_DIR%\gstack-skills"
)

REM Copy skills
xcopy /E /I /Y "%GSTACK_DIR%" "%SKILL_DIR%\gstack-skills"
echo [OK] Installed gstack-skills to %SKILL_DIR%\gstack-skills

echo.

REM Verify installation
echo Verifying installation...

if exist "%SKILL_DIR%\gstack-skills\SKILL.md" (
    echo [OK] Main skill file found
) else (
    echo [ERROR] Main skill file not found
    pause
    exit /b 1
)

if exist "%SKILL_DIR%\gstack-skills\scripts\command_router.py" (
    echo [OK] Command router script found
)

if exist "%SKILL_DIR%\gstack-skills\scripts\state_manager.py" (
    echo [OK] State manager script found
)

echo.

REM Print usage
echo ================================================
echo Installation Complete!
echo ================================================
echo.
echo gstack-skills has been successfully installed!
echo.
echo Quick Start:
echo.
echo 1. Restart OpenClaw/WorkBuddy
echo.
echo 2. Try it out:
echo.
echo   User: /gstack
echo   AI: Here are the available gstack commands:
echo     • /office-hours - Product ideation and validation
echo     • /review - Code review with automatic fixes
echo     • /qa - Test and fix bugs
echo     • /ship - Automated deployment
echo     • ... and 11 more commands
echo.
echo 3. Common commands:
echo.
echo   User: /review
echo   AI: Reviewing your current branch...
echo.
echo   User: /qa
echo   AI: Running systematic QA tests...
echo.
echo   User: /ship
echo   AI: Preparing automated release...
echo.
echo 4. For more information:
echo.
echo   • Usage Guide: README.md
echo   • Examples: EXAMPLES.md
echo.
echo Happy coding with gstack-skills!
echo.

pause
