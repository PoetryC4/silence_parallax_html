@echo off
REM 检查参数数量是否正确
if "%~2"=="" (
    echo Usage: compress_video.bat input_file output_file
    exit /b
)

REM 设置参数变量
set input_file=%1
set output_file=%2

REM 执行ffmpeg命令 scale=1974:1181为目标文件分辨率，如果太卡可自行调节
ffmpeg -c:v libvpx-vp9 -i %input_file% -c:v libvpx -b:v 5M -vf scale=1974:1181 -auto-alt-ref 0 %output_file%
REM 提示完成
echo Compression completed.
