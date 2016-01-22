@echo off

set ORG_ECLIPSE_EQUINOX_LAUNCHER_VERSION=1.3.100.v20150511-1540

if not exist configuration mkdir configuration
if not exist configuration\config.ini copy /y configuration_original\config.ini configuration

if exist test_profile rmdir /s /q test_profile
if not exist test_profile mkdir test_profile

java -Dosgi.install.area=equinox_repo -Dosgi.configuration.area=configuration -jar equinox_repo\plugins\org.eclipse.equinox.launcher_%ORG_ECLIPSE_EQUINOX_LAUNCHER_VERSION%.jar -application org.eclipse.equinox.p2.director -repository file:%~dp0\test_repo -installIU org.eclipse.osgi -destination %~dp0\test_profile -profile TestProfile
