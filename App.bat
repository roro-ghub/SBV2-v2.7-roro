chcp 65001 > NUL
@echo off

pushd %~dp0
echo Running app.py...
set USE_LIBUV=0
venv\Scripts\python app.py

if %errorlevel% neq 0 ( pause & popd & exit /b %errorlevel% )

popd
pause