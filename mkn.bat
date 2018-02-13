

@ECHO off

IF EXIST %CD%\g (
	rd /S/Q %CD%\g
)

git clone --depth 1 https://github.com/google/cpu_features -b master g --recursive || exit 666 /b
