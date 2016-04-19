@echo off

set ORG_ECLIPSE_OSGI_VERSION=3.10.102.v20160118-1700
set ORG_ECLIPSE_EQUINOX_LAUNCHER_VERSION=1.3.100.v20150511-1540

if not exist configuration mkdir configuration
if not exist configuration\config.ini copy /y configuration_original\config.ini configuration

if exist test_repo rmdir /s /q test_repo
if not exist test_repo\plugins mkdir test_repo\plugins

copy equinox_repo\plugins\org.eclipse.osgi_%ORG_ECLIPSE_OSGI_VERSION%.jar test_repo\plugins

java -Dosgi.install.area=%~dp0\equinox_repo -Dosgi.configuration.area=%~dp0\configuration -jar equinox_repo\plugins\org.eclipse.equinox.launcher_%ORG_ECLIPSE_EQUINOX_LAUNCHER_VERSION%.jar -application org.eclipse.equinox.p2.publisher.FeaturesAndBundlesPublisher -metadataRepository file:%~dp0\test_repo -artifactRepository file:%~dp0\test_repo -source %~dp0\test_repo
