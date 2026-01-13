# JACK

The JACK C++ agent framework

## ABOUT

JACK is a framework for building distributed reasoning systems that are based upon the symbolic AI technology of BDI (Beliefs, Desires and Intentions) intelligent software agents. JACK is a set of software libraries and tools written in C++ that help you build teamed intelligent software agent applications. From high-level BDI reasoning plans to ROS 2 tools, and with powerful developer tools, JACK has what you need for exploring the potential of intelligent agents and building commercial and operational AI systems. And it's all open source. JACK builds on the legacy of the original JACK written in Java, now known as "JACK Classic".

## GETTING STARTED
Looking to get started with JACK?

Our build guide is here. Once you've built and installed JACK, start by learning some
basic concepts and taking a look at our beginner tutorials. Intelligent agents require
a different way of thinking; they are not just another procedural programming
approach, so take your time to understand the concepts before leaping into an
application.

### Build using colcon (ROS 2)

```bash
colcon build --cmake-args -DUSE_AMENT=ON -DCMAKE_BUILD_TYPE:STRING=Debug
```

### Build using CMake (Standalone)

#### Prerequisites
- CMake 3.22.1 or newer
- Rust toolchain (for building jack-make)
- C++17 compatible compiler

#### Building jack-make
The build system requires `jack-make` which can be provided in several ways:

1. **Pre-installed** (recommended):
```bash
cargo install --path jack_make
```

2. **Built locally** during project build (default):
```bash
# Will be built automatically when needed
```

#### Full project build
```bash
cmake -B build
cmake --build build
```

#### Custom locations
If jack-make is installed in a custom location:
```bash
export JACK_MAKE_PATH=/path/to/jack-make
cmake -B build
etc.
```

## Running 'Game of life' Example

SFML requries the following extra dependencies on Linux see:
    https://www.sfml-dev.org/tutorials/2.6/start-cmake.php

```
sudo apt update
sudo apt install \
    libxrandr-dev \
    libxcursor-dev \
    libudev-dev \
    libopenal-dev \
    libflac-dev \
    libvorbis-dev \
    libgl1-mesa-dev \
    libegl1-mesa-dev \
    libdrm-dev \
    libgbm-dev \
    libfreetype6-dev
```

```bash
source install/setup.bash
./install/gol/bin/golapp
```

## JOIN THE JACK COMMUNITY

Discuss on discord:
https://discord.gg/MjEWW7yp
