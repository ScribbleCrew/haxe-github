@echo off

set /p dir=Choose an exemple: 
cd %dir%

if not exist build.hxml (
    (
    echo -cp source
    echo -D analyzer-optimize
    echo -main Main
    echo --library haxe-github
    echo --interp
    )>build.hxml
)
echo Callback:
echo:
haxe build.hxml
echo:

pause