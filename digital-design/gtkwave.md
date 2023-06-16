# GTKWave

* We can write .tcl script that filters and adds the designated signals from the list to the waveform, instead of manually adding it ourselves.
* For that we need to be able to invoke Gtkwave from CLI. So, we need to install Perl and Switch using the following commands,
**brew install perl@5.18**
**cpan install switch**
* The Pearl version is same as the one used by Gtkwave.
* After installation you should be able to invoke gtkwave from CLI using any of the following commands,
**gtkwave dump.vcd**
or
**open -a gtkwave dump.vcd**
* Now you can write a .tcl script file by following the syntax from Appendix E mentioned in Gtkwave Book
https://gtkwave.sourceforge.net/gtkwave.pdf#Appendix-E-Tcl-Command-Syntax
* Run the .tcl script file by using the following command,
**gtkwave dump.vcd --script=somefile.tcl**


