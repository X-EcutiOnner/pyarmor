@ECHO OFF

SETLOCAL

FOR /D %%I IN (C:\Python*) DO SET PYPATH=%%I

IF "%PYPATH%" == "" (
  ECHO No python found in C:\PythonXY.
  PAUSE
) ELSE (
  ECHO Use %PYPATH% to run server ...
  %PYPATH%\python.exe server.py 9096
  IF ERRORLEVEL 1 PAUSE
)

ENDLOCAL