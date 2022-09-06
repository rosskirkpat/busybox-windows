# windows-busybox
[![This image on DockerHub](https://img.shields.io/docker/pulls/cptrosskirk/busybox-windows.svg)](https://hub.docker.com/r/cptrosskirk/busybox-windows/)

Inspired by https://github.com/StefanScherer/dockerfiles-windows/tree/main/busybox with added support for Windows Server LTSC 2019 and 2022. 

Based on the 64bit version of busybox.exe from https://frippery.org/busybox/

Limits:
- `wget` does not support https
- `ls -l` does not support symlinks
- Probably many other issues, but maybe enough for general downloading and extracting tasks.
