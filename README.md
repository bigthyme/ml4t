## Docker Image for CS 7646

This repo contains the required python environment for Georgia Tech's CS 7646 [Spring 2018 requirements](http://quantsoftware.gatech.edu/ML4T_Software_Installation). The total image size
for this docker container is `~1.17 GB` but hopefully smaller after a few more iterations.

#### Steps to install for OSX
```
# follow website steps
$ open https://store.docker.com/editions/community/docker-ce-desktop-mac
# proper installs should successfully output a verison
$ docker version
```

#### Steps to install for Windows
```
# follow website steps
$ open https://store.docker.com/editions/community/docker-ce-desktop-windows
# proper installs should successfully output a verison
$ docker version
```

#### How to run this particular image?
```
$ git clone https://github.com/bigthyme/ml4t.git
$ cd cv
$ docker build -t <image_name> <Dockerfile>
$ docker run -it -v "$(pwd)":/app <image_name>

# once inside, verify that the packages have been installed properly via pip
$ pip list --format=columns

Package         Version
--------------- -----------
cycler          0.10.0
functools32     3.2.3.post2
matplotlib      2.0.2
numpy           1.13.1
pandas          0.20.3
pip             9.0.1
py              1.4.34
pyparsing       2.2.0
pytest          3.2.1
python-dateutil 2.6.1
pytz            2017.2
scipy           0.19.1
setuptools      36.2.2
six             1.10.0
subprocess32    3.2.7
virtualenv      15.1.0
wheel           0.29.0
```

#### License
MIT
