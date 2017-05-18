@echo off

call environment_variables.cmd

call 1_prepare.cmd

if exist test_profile rmdir /s /q test_profile
if not exist test_profile mkdir test_profile

java -Dosgi.install.area=equinox_repo -Dosgi.configuration.area=configuration -jar equinox_repo\plugins\%OSGI_LAUNCHER_JAR% -application org.eclipse.equinox.p2.director -repository file:%~dp0\test_repo -installIU org.eclipse.osgi -destination %~dp0\test_profile -profile TestProfile
