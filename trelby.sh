echo Consider:
echo
echo "* Settings,Change,Display,Change,OK,OK (no change) fixes ugly fonts"
echo "* Your PDF viewer (Settings,Change,Misc,PDF Path) is: /usr.bin/xpdf"
echo

xhost +local:
docker run --rm -it --env="DISPLAY" --user $(id -u) -v "/etc/passwd:/etc/passwd:ro" -v "/tmp/.X11-unix:/tmp/.X11-unix:rw" -v "/home/$USER:/home/$USER" --workdir="/home/$USER" --name trelby trelby
