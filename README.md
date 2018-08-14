# Running Trelby using Docker

Install Docker:

```sh
sudo apt install docker.io
sudo service docker restart
```

Run the ```dockerfile```:

```sh
sudo docker build -t trelby:2.2 -t trelby:latest .
sudo ./trelby.sh
```
