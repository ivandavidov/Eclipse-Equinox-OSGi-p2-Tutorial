@echo off

set ORG_ECLIPSE_EQUINOX_LAUNCHER_VERSION=1.3.100.v20150511-1540

if not exist configuration mkdir configuration
if not exist configuration\config.ini copy /y configuration_original\config.ini configuration

java -Declipse.ignoreApp=true -Dosgi.install.area=equinox_repo -Dosgi.configuration.area=configuration -jar equinox_repo\plugins\org.eclipse.equinox.launcher_%ORG_ECLIPSE_EQUINOX_LAUNCHER_VERSION%.jar -consoleLog -console -noExit
