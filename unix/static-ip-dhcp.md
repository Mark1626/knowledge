# Requesting static IP to DHCP in local network

[Back](../index.md){: .button}

- Find the ip of the current name server 

- Edit `/etc/dhcpd.conf`, about the interface which you want static ip to

```sh
interfare <network>
static ip_address=<address-you-want>/24
static routers=<required-static-ip>
static domain_name_servers=<dns-servers>
```

