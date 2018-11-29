REM This script copies all DLLs from "lib" and "qml" folders and subfolders to
REM the root directory, otherwise Cura will have trouble finding some DLLs.

@echo off

for /f "tokens=*" %%f in ('dir /s/b lib\*.dll') do (
    COPY "%%f" ".\"
)

for /f "tokens=*" %%f in ('dir /s/b qml\*.dll') do (
    COPY "%%f" ".\"
)
