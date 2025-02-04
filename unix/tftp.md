# TFTP

[Back](../index.md#unix){: .button}

## Reading and Writing from tftp server

Standard curl has an ability to connect to a TFTP server and upload a file via:

```
$ curl -T FILE tftp://HOST
```

Download a file:

```
$ curl -o DESTINATION tftp://HOST/file
```

## Server setup

### Using xinetd conf

Edit /etc/xinetd.conf and add the following entry:

```
service tftp
{
        socket_type = dgram
        protocol = udp
        wait = yes
        user = tftp
        server = /usr/sbin/in.tftpd
        server_args = -l /tftpboot
        only_from = client.test.net
}
```


## Reading

1. https://wiki.archlinux.org/title/TFTP
2. https://www.makeuseof.com/set-up-tftp-server-on-linux/
3. https://dynamicparallax.wordpress.com/2015/08/20/how-to-setup-raspberry-pi-as-a-tftp-server/
