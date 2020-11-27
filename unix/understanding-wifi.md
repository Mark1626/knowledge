# Understanding Wifi

[Back](../index.md){: .button}

What happens when you try to connect to a network with wifi?
Or how do you set up a network connection with Wifi

## Terminologies

- **station** - a station is a device that has a capability to use the 802.11(Wifi) protocol.
- **access point** - an access point is a hardware device that allows other WiFi devices to connect to a wired network.


## Steps generally done in Arch Linux

- Create a connection to the network with `iwd` or any other service
  - Start the `iwctl` interactive prompt
  - List all devices in your machine that have the capability of being a station `[iwd]# device list`
  - From the station do a scan to see all the available networks `[iwd]# station <device-name> scan`
  - Connect to the network `station <device-name> connect <SSID>`
- Get an IP with a `DHCP` like `dhcpcd`
- Your device should now be able to access the network

