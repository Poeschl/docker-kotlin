# Kotlin Docker container

![](https://img.shields.io/github/v/tag/Poeschl/docker-kotlin?label=current%20version)

A docker container which contains an installed kotlin compiler for executing `.kts` scripts

# Usage

The image has no set entrypoint, to execute your scripts use it like that:

`docker run -v ./your-script.main.kts:/your-script.main.kts ghcr.io/poeschl/docker-kotlin:<version> /your-script.main.kts`
