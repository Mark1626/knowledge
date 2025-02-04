# PCI-Express 

[Back](../index.md#digital-design){: .button}

PCI-E is point to point

1 lane PCIE

36 contacts arranged in two rows of 18 contacts

1. A clock pait REFCLK
2. Receive pair PER
3. Transmit pair PET

PCI-E stack

1. Physical layer - Pin toggling, 8b/10b encoding/decoding, lane disassembly/reassembly
2. Data link layer - Data integrity is checked, packets are re-transmitted if required
3. Transaction layer - User layer

## Reading

1. https://pcisig.com/sites/default/files/files/PCI_Express_Basics_Background.pdf 

You might want to investigate;

- [https://github.com/enjoy-digital/litepcie](https://github.com/enjoy-digital/litepcie)
- [https://github.com/whitequark/Yumewatari](https://github.com/whitequark/Yumewatari) 
- [https://github.com/ecp5-pcie](https://github.com/ecp5-pcie )

And a bit more peripherally related (USB3);

- [https://github.com/enjoy-digital/daisho](https://github.com/enjoy-digital/daisho)
- [https://github.com/enjoy-digital/usb3_pipe](https://github.com/enjoy-digital/usb3_pipe)
- [https://github.com/greatscottgadgets/luna/tree/main/luna/gateware/usb/usb3](https://github.com/greatscottgadgets/luna/tree/main/luna/gateware/usb/usb3 "smartCard-inline")
- [https://github.com/greatscottgadgets/bucatini](https://github.com/greatscottgadgets/bucatini)
