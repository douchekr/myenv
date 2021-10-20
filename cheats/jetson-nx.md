
# Jerson NX Setup

## Environment

### JetPack 4.51 + DeepStreamSDK 5.1 

Upgardaing to jet 4.6 makes the tensort rt version to change to 8.0 for deepstream 5.1 to work the tensor rt version is 7.0
Do not upgrade to jetpack version above 4.5.1 while using deepstream 5.1 sdk



## Trouble Shooting

- Fixing gstreamer plugin blacklists

    EGL blah ...

```bash
unset DISPLAY
```


- register pyds.so

```bash
cd /opt/nvidia/deepstream/deepstream/lib
python3 setup.py install
```

- install docker-compose 

```bash
apt install python3-pip
pip3 install --upgrade pip
apt-get install -y libffi-dev
apt-get install -y python-openssl
apt-get install libssl-dev
pip3 install docker-compose
```
