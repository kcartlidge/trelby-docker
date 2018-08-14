# Running Trelby using Docker

Trelby is a scriptwriting tool written in Python.
Follow these instructions to pull Trelby, install dependencies, run, and expose the Docker container's X server input/output.

## Install Docker

```sh
sudo apt install docker.io
sudo service docker restart
```

## Run the ```dockerfile```

```sh
sudo docker build -t trelby:2.2 -t trelby:latest .
sudo ./trelby.sh
```

The ```trelby.sh``` script writes out a couple of helpful hints.
