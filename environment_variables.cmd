@echo off

rem Detect the runnable file names for the actual Equinox version.
cd "equinox_repo\plugins"
for /f %%i in ('dir /b org.eclipse.osgi_*.jar') do set OSGI_JAR=%%i
for /f %%i in ('dir /b org.eclipse.equinox.launcher_*.jar') do set OSGI_LAUNCHER_JAR=%%i
cd ..\..
