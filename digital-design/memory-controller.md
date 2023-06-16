# Memory Controller

[Back](../index.md)

Google has continued to work heavily with Antmicro to push forward the state of open source memory controller solutions. Our current focus has been around making sure we are able to explore current issues around RowHammer. See the following links;

1. https://opensource.googleblog.com/2021/11/Open%20source%20DDR%20controller%20framework%20for%20mitigating%20Rowhammer.html
2. https://cfp.openpower.foundation/summit2021/talk/C9Q3GS/
3. https://antmicro.com/blog/2021/04/lpddr4-test-platform/
4. https://security.googleblog.com/2021/05/introducing-half-double-new-hammering.html
5. https://github.com/antmicro/litex-rowhammer-tester
6. https://litex-rowhammer-tester.readthedocs.io/en/latest/
7. https://github.com/antmicro/lpddr4-testbed
8. https://github.com/antmicro/lpddr4-test-board
9. https://github.com/antmicro/data-center-dram-tester
10. https://github.com/enjoy-digital/litedram
11. https://github.com/waviousllc/wav-lpddr-hw

While the memory controller is being actively developed on FPGAs, we have also started work on making sure that it can also be used in ASIC solutions. The current plan is to do tape outs of this controller in both SKY130 and GF12LP technologies in 2022 using only open source tooling like OpenROAD for the digital blocks. This means we will also need open source PHYs to make this possible and are actively working to build out that area too.

