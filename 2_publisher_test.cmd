@echo off

call environment_variables.cmd

call 1_prepare.cmd

if exist test_repo rmdir /s /q test_repo
if not exist test_repo\plugins mkdir test_repo\plugins

copy equinox_repo\plugins\%OSGI_JAR% test_repo\plugins

java -Dosgi.install.area=%~dp0\equinox_repo -Dosgi.configuration.area=%~dp0\configuration -jar equinox_repo\plugins\%OSGI_LAUNCHER_JAR% -application org.eclipse.equinox.p2.publisher.FeaturesAndBundlesPublisher -metadataRepository file:%~dp0\test_repo -artifactRepository file:%~dp0\test_repo -source %~dp0\test_repo
