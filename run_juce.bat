@echo off
setlocal

for /f "tokens=3 delims=: " %%I in ('netsh interface IPv4 show addresses "vEthernet (WSL)" ^| findstr /C:"IP Address"') do (
    set "DOCKER_DISPLAY=%%I"
)
echo %DOCKER_DISPLAY%
docker run --name juce-docker -ti --rm -e DISPLAY=%DOCKER_DISPLAY%:0.0 --net="host" -v /tmp/.X11-unix:/tmp/.X11-unix -v %HOME%/.Xauthority:/home/juce/.Xauthority -v C:/Users/helle/OneDrive/Skrivebord/JuceDocker2/:/home/juce/project juce-docker /bin/bash