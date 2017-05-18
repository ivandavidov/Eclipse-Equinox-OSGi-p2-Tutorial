@echo off

call environment_variables.cmd

call 1_prepare.cmd

java -Declipse.ignoreApp=true -Dosgi.install.area=equinox_repo -Dosgi.configuration.area=configuration -jar equinox_repo\plugins\%OSGI_LAUNCHER_JAR% -consoleLog -console -noExit
