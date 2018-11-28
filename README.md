# tftpd

To run

```
docker run -p 0.0.0.0:69:69/udp -it panguolin/tftpd
```

Mounts the following volume for persistent data

```
/tftpboot
```

To map the volume to a host directory

```
docker run -p 0.0.0.0:69:69/udp -v /path/to/your/tftpboot:/tftpboot -it panguolin/tftpd
```
