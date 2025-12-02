@echo off
REM Cleanup script for LaTeX auxiliary files
REM Windows Batch File

echo ========================================
echo Cleaning up LaTeX auxiliary files...
echo ========================================
echo.

REM Remove main directory auxiliary files
if exist *.aux del /Q *.aux
if exist *.log del /Q *.log
if exist *.toc del /Q *.toc
if exist *.out del /Q *.out
if exist *.lof del /Q *.lof
if exist *.lot del /Q *.lot
if exist *.fls del /Q *.fls
if exist *.fdb_latexmk del /Q *.fdb_latexmk
if exist *.synctex.gz del /Q *.synctex.gz
if exist *.bbl del /Q *.bbl
if exist *.blg del /Q *.blg
if exist *.idx del /Q *.idx
if exist *.ind del /Q *.ind
if exist *.ilg del /Q *.ilg

REM Remove chapter auxiliary files
if exist chapters\*.aux del /Q chapters\*.aux

echo.
echo Cleanup complete!
echo.
echo The PDF file (main.pdf) has been preserved.
echo To remove the PDF as well, delete main.pdf manually.
echo.
pause
