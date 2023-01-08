
SET mypath=%~dp0
echo %mypath:~0,-1%

set src=%1
set dest=%2

echo  %arg1% %arg2%

RunUAT BuildCookRun -project="%mypath:~0,-1%/%src%" -platform=Win64 -clientconfig=DebugGame -build -cook -stage -archive -archivedirectory="%mypath:~0,-1%/%dest%"

cd "%mypath:~0,-1%/%dest%"
powershell Compress-Archive . publish.zip