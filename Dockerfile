# Source: http://frippery.org/busybox/ and https://github.com/StefanScherer/dockerfiles-windows
# This Dockerfile builds a (64-bit) busybox images which is suitable for
# running many of the integration-cli tests for Docker against a Windows
# daemon.

ARG BUILD_VERSION

FROM mcr.microsoft.com/windows/nanoserver:${BUILD_VERSION}
RUN mkdir C:\tmp && mkdir C:\bin
ADD https://frippery.org/files/busybox/busybox64.exe /bin/busybox.exe
USER ContainerAdministrator
RUN FOR /f "tokens=*" %i IN ('C:\bin\busybox --list') DO mklink C:\bin\%i.exe C:\bin\busybox.exe
RUN setx /M PATH "C:\bin;%PATH%"
CMD ["sh"]
