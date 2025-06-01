@ECHO OFF
@SET PYTHONIOENCODING=utf-8
@SET PYTHONUTF8=1
@FOR /F "tokens=2 delims=:." %%A in ('chcp') do for %%B in (%%A) do set "_CONDA_OLD_CHCP=%%B"
@chcp 65001 > NUL
@CALL "d:\anaconda\condabin\conda.bat" activate "d:\Python\Data_Analysis\venv"
@IF %ERRORLEVEL% NEQ 0 EXIT /b %ERRORLEVEL%
@d:\Python\Data_Analysis\venv\python.exe -Wi -m compileall -q -l -i C:\Users\ASUS\AppData\Local\Temp\tmpnns4wsix -j 0
@IF %ERRORLEVEL% NEQ 0 EXIT /b %ERRORLEVEL%
@chcp %_CONDA_OLD_CHCP%>NUL
