# Requesting static IP to DHCP in local network

[Back](../index.md#unix){: .button}

## DHCP Approach

- Find the ip of the current name server 

- Edit `/etc/dhcpd.conf`, about the interface which you want static ip to

```sh
interfare <network>
static ip_address=<address-you-want>/24
static routers=<required-static-ip>
static domain_name_servers=<dns-servers>
```

## Network Approach

In Debian based edit `/etc/network/interfaces` and add the following

```
auto eth0
iface eth0 inet static
	address 192.168.1.100/24
	gateway 192.168.1.255
	mask 255.255.255.0
```

> Note: Tries to set `eth0` to static IP 192.168.1.100


## References

- [Arch Wiki](https://wiki.archlinux.org/index.php/Dhcpcd#Static_profile)
- [Debian Network Configuration](https://wiki.debian.org/NetworkConfiguration)

