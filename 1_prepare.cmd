@echo off

if not exist configuration mkdir configuration
if not exist configuration\config.ini copy /y configuration_original\config.ini configuration
