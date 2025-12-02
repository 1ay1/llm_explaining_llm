@echo off
REM Compilation script for The Mathematics of Large Language Models
REM Windows Batch File

echo ========================================
echo Compiling: The Mathematics of Large Language Models
echo ========================================
echo.

REM Check if pdflatex is available
where pdflatex >nul 2>nul
if %errorlevel% neq 0 (
    echo ERROR: pdflatex not found!
    echo Please install MiKTeX or TeX Live:
    echo   - MiKTeX: https://miktex.org/download
    echo   - TeX Live: https://www.tug.org/texlive/
    echo.
    pause
    exit /b 1
)

echo Step 1/2: First compilation pass...
pdflatex -interaction=nonstopmode main.tex
if %errorlevel% neq 0 (
    echo.
    echo ERROR: First compilation failed!
    echo Check the log file for errors: main.log
    echo.
    pause
    exit /b 1
)

echo.
echo Step 2/2: Second compilation pass (for table of contents)...
pdflatex -interaction=nonstopmode main.tex
if %errorlevel% neq 0 (
    echo.
    echo WARNING: Second compilation had issues, but PDF may still be usable.
    echo Check the log file for details: main.log
)

echo.
echo ========================================
echo SUCCESS! Book compiled successfully!
echo ========================================
echo.
echo Output file: main.pdf
echo.

REM Ask if user wants to open the PDF
set /p OPEN="Open the PDF now? (Y/N): "
if /i "%OPEN%"=="Y" (
    start main.pdf
)

echo.
echo Tip: Run 'clean.bat' to remove auxiliary files
echo.
pause
