echo off
echo.
@echo FILE DELETER BY EXTENSION.
echo.
@echo How To Use:
@echo Move this file to the desired directory. Then run this file and type below the extension you want to delete.
@echo This will automatically remove ALL files with that extension ONLY in that directory.
echo.
set /p extension=Enter extension to delete (without the "."):
if /I "%extension%"=="dll" (
	@echo DLL files not permited.
	pause
) else (
	del /Q *.%extension%
	@echo Files have been deleted!
	pause
)