@echo off

set ORG_ECLIPSE_OSGI_VERSION=3.10.101.v20150820-1432

if not exist configuration mkdir configuration
if not exist configuration\config.ini copy /y configuration_original\config.ini configuration

java -Declipse.ignoreApp=true -Dosgi.install.area=equinox_repo -Dosgi.configuration.area=configuration -jar equinox_repo\plugins\org.eclipse.osgi_%ORG_ECLIPSE_OSGI_VERSION%.jar -consoleLog -console
