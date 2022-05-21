## wine-x11-novnc-docker

![Docker Pulls](https://img.shields.io/docker/pulls/dennispohlmann/wine-x11-novnc-docker)

Not a very good name, is it?

Ever wanted to containerize your wine applications and access them via
a web browser? No? Neither did I!

This container runs:

* Xvfb - X11 in a virtual framebuffer
* x11vnc - A VNC server that scrapes the above X11 server
* [noNVC](https://kanaka.github.io/noVNC/) - A HTML5 canvas vnc viewer
* Fluxbox - a small window manager
* Explorer.exe - to demo that it works

This is a [trusted build](https://registry.hub.docker.com/u/dennispohlmann/wine-x11-novnc-docker/)
on the Docker Hub.

# Supported tags and respective `Dockerfile` links

-	[`stable-debian-bullseye-latest`, `stable-debian-11-latest`](https://github.com/DennisPohlmann/wine-x11-novnc-docker/blob/master/Dockerfile.stable-latest-debian-bullseye)
-	[`stable-ubuntu-focal-latest`, `stable-ubuntu-20.04-latest`](https://github.com/DennisPohlmann/wine-x11-novnc-docker/blob/master/Dockerfile.stable-latest-ubuntu-focal)

## Run It

    docker run --rm -p 8080:8080 dennispohlmann/wine-x11-novnc-docker:stable-debian-bullseye-latest
    xdg-open http://localhost:8080

In your web browser you should see the default application, explorer.exe:

![Explorer Screenshot](https://raw.githubusercontent.com/dennispohlmann/wine-x11-novnc-docker/master/screenshot.debian.png)

    docker run --rm -p 8080:8080 dennispohlmann/wine-x11-novnc-docker:stable-ubuntu-focal-latest
    xdg-open http://localhost:8080

![Explorer Screenshot](https://raw.githubusercontent.com/dennispohlmann/wine-x11-novnc-docker/master/screenshot.ubuntu.png)

## Modifying

This is a base image. You should fork or use this base image to run your own
wine programs?

## Issues

* Wine could be optimized a bit
* Fluxbox could be skinned or reduced

