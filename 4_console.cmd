@echo off

set ORG_ECLIPSE_EQUINOX_LAUNCHER_VERSION=1.3.100.v20150511-1540

call 1_prepare.cmd

java -Declipse.ignoreApp=true -Dosgi.install.area=equinox_repo -Dosgi.configuration.area=configuration -jar equinox_repo\plugins\org.eclipse.equinox.launcher_%ORG_ECLIPSE_EQUINOX_LAUNCHER_VERSION%.jar -consoleLog -console -noExit
