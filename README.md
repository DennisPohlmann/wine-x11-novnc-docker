# wine-x11-novnc-docker

![Docker Pulls](https://img.shields.io/docker/pulls/dennispohlmann/wine-x11-novnc-docker)

Not a very good name, is it?

Ever wanted to containerize your wine applications and access them via
a web browser? No? Neither did I!

This container runs:

* Xvfb - X11 in a virtual framebuffer
* x11vnc - A VNC server that scrapes the above X11 server
* [noNVC](https://github.com/novnc/noVNC) - A HTML5 canvas vnc viewer
* Fluxbox - a small window manager
* Explorer.exe - to demo that it works

# Supported tags and respective `Dockerfile` links

- [`stable-debian-11-latest`, `stable-debian-bullseye-latest`](https://github.com/DennisPohlmann/wine-x11-novnc-docker/blob/master/Dockerfile.stable-latest-debian-11)
- [`stable-ubuntu-20.04-latest`, `stable-ubuntu-focal-latest`](https://github.com/DennisPohlmann/wine-x11-novnc-docker/blob/master/Dockerfile.stable-latest-ubuntu-20.04)
- [`stable-ubuntu-22.04-latest`, `stable-ubuntu-jammy-latest`](https://github.com/DennisPohlmann/wine-x11-novnc-docker/blob/master/Dockerfile.stable-latest-ubuntu-22.04)
- [`stable-fedora-36-latest`, `stable-fedora-thirty_six-latest`](https://github.com/DennisPohlmann/wine-x11-novnc-docker/blob/master/Dockerfile.stable-latest-fedora-36)
- [`stable-fedora-37-latest`, `stable-fedora-thirty_seven-latest`](https://github.com/DennisPohlmann/wine-x11-novnc-docker/blob/master/Dockerfile.stable-latest-fedora-37)

# Run It

### Debian
    docker run --rm -p 8080:8080 dennispohlmann/wine-x11-novnc-docker:stable-debian-11-latest
    xdg-open http://localhost:8080

In your web browser you should see the default application, explorer.exe:

![Explorer Screenshot](https://raw.githubusercontent.com/dennispohlmann/wine-x11-novnc-docker/master/screenshot.debian.png)

### Ubuntu
    docker run --rm -p 8080:8080 dennispohlmann/wine-x11-novnc-docker:stable-ubuntu-20.04-latest
    xdg-open http://localhost:8080

![Explorer Screenshot](https://raw.githubusercontent.com/dennispohlmann/wine-x11-novnc-docker/master/screenshot.ubuntu.png)

### Fedora
    docker run --rm -p 8080:8080 dennispohlmann/wine-x11-novnc-docker:stable-fedora-35-latest
    xdg-open http://localhost:8080

![Explorer Screenshot](https://raw.githubusercontent.com/dennispohlmann/wine-x11-novnc-docker/master/screenshot.fedora.png)

# Modifying

This is a base image. You should fork or use this base image to run your own
wine programs?

# Issues

* Wine could be optimized a bit
* Fluxbox could be skinned or reduced
