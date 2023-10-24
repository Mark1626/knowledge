
# CPU Features

[Back](./computer-architecture.md){: .button}

[FPU](https://en.wikipedia.org/wiki/Floating-point_unit): Floating Processing Unit
[VME](https://en.wikipedia.org/wiki/Virtual_8086_mode#VME): Virtual Mode Extension
[DE](https://en.wikipedia.org/wiki/Control_register#CR4): Debugging Extensions
[PSE](https://en.wikipedia.org/wiki/PSE-36): Page Size Extension is a feature x86 processors that extends the physical memory addressing capabilities.
[TSC](https://en.wikipedia.org/wiki/Time_Stamp_Counter) - Time Stamp Counter
[MSR](https://en.wikipedia.org/wiki/Model-specific_register) - Model Specific Register
[PAE](https://en.wikipedia.org/wiki/Physical_Address_Extension) - Physical Address Extension
[MCE](https://en.wikipedia.org/wiki/Machine_Check_Exception) - Machine Check Exception
[CX8](http://www.felixcloutier.com/x86/CMPXCHG8B:CMPXCHG16B.html) - 64 bit compare and swap
[APIC](http://en.wikipedia.org/wiki/Advanced_Programmable_Interrupt_Controller) - Advanced Programmable Interrupt Controller
SEP - [SYSENTER](https://www.felixcloutier.com/x86/sysenter) [SYSEXIT](http://www.felixcloutier.com/x86/SYSEXIT.html)
[MTRR](http://en.wikipedia.org/wiki/Memory_Type_Range_Registers) - Memory Type Range Registers
[PGE](https://en.wikipedia.org/wiki/Translation_lookaside_buffer#Address_space_switch) - Page Global Enable
[MCA](https://en.wikipedia.org/wiki/Translation_lookaside_buffer#Address_space_switch) - Machine Check Architecture
[CMOV](http://www.rcollins.org/p6/opcodes/CMOV.html) - CMOV conditional move
[PAT](http://en.wikipedia.org/wiki/Page_Attribute_Table) - Page Attribute Table
[PSE36](https://en.wikipedia.org/wiki/PSE-36) - PSE extension from 32 bit to 36 bit
[CLFSH](https://en.wikipedia.org/wiki/CPU_cache#CACHE-LINES) - Cache line flush
DS - Debug store
[ACPI](http://en.wikipedia.org/wiki/Advanced_Configuration_and_Power_Interface) - Advanced Configuration and Power Interface
[MMX](https://en.wikipedia.org/wiki/MMX_(instruction_set)) - MMX SIMD Instructions
[FXSR](https://en.wikipedia.org/wiki/Control_register#CR4) - FXSAVE / FXRSTOR
[SSE](https://en.wikipedia.org/wiki/Streaming_SIMD_Extensions) - Streaming SIMD Extensions
[SSE2](https://en.wikipedia.org/wiki/SSE2) - Streaming SIMD Extensions 2 
[SS](http://en.wikipedia.org/wiki/Cache_snooping) CPU self snoop
[HTT](http://en.wikipedia.org/wiki/Hyperthreading) - Hyper threading
TM - Automatic clock control (Thermal Monitor)
[PBE](https://en.wikipedia.org/wiki/CPUID#EAX.3D1:_Processor_Info_and_Feature_Bits) - Pending break enable
[SSE3](https://en.wikipedia.org/wiki/SSE3) - Streaming SIMD Extensions 3
[PCLMULQDQ](http://en.wikipedia.org/wiki/CLMUL_instruction_set) - Perform Carry Less Multiplication Quadword
DTES64 - 64 bit debug store
MON - Monitor
DSCPL - CPL Qual. Debug store
[VMX](http://en.wikipedia.org/wiki/X86_virtualization#Intel_virtualization_.28VT-x.29) - Intel Hardware Virtualization
[EST](http://en.wikipedia.org/wiki/SpeedStep) - Speedstep
[TM2](http://en.wikipedia.org/wiki/Tm2) - Thermal Monitor
[SSSE3](http://en.wikipedia.org/wiki/SSSE3) - Suplimental Streaming SIMD Extensions 3
[FMA](http://en.wikipedia.org/wiki/FMA_instruction_set) - Fused Multiply Add `a*b + c`
[CX16](https://en.wikipedia.org/wiki/Double_compare-and-swap) - Double compare and swap
TPR - Task Priority Messages
PDCM - Performance Capabilities
[SSE4.1](https://en.wikipedia.org/wiki/SSE4) - Streaming SIMD Extensions 4.1
[SSE4.2](https://en.wikipedia.org/wiki/SSE4) - Streaming SIMD Extensions 4.2
[x2APIC](http://en.wikipedia.org/wiki/X2APIC) - APIC
[MOVBE](http://www.felixcloutier.com/x86/MOVBE.html) - Move after Swapping bytes, used for endian conversion
[POPCNT](http://en.wikipedia.org/wiki/SSE4#POPCNT_and_LZCNT) - Hamming weight
[AES](http://en.wikipedia.org/wiki/AES_instruction_set) - AES instruction set
PCID - Process Context Identification
[XSAVE](http://www.felixcloutier.com/x86/XSAVE.html) - Save Processor Extended States
OSXSAVE - OSX Save
SEGLIM64
TSCTMR
[AVX1.0](http://en.wikipedia.org/wiki/Advanced_Vector_Extensions) - Advanced Vector Extensions
[RDRAND](http://en.wikipedia.org/wiki/RdRand) - Read random number
[F16C](http://en.wikipedia.org/wiki/CVT16_instruction_set) - 16 bit fp conversion

RDWRFSGS
TSC_THREAD_OFFSET
SGX
BMI1 - 1st group bit manipulation extensions
[AVX2](https://en.wikipedia.org/wiki/Advanced_Vector_Extensions#Advanced_Vector_Extensions_2) - Advanced Vector Extensions 2
SMEP - Supervisor Mode Execution Protection
BMI2 - 2nd group bit manipulation extensions
ERMS -  Enhanced REP MOVSB/STOSB
INVPCID - Invalidate Processor Context ID
FPU_CSDS - 
MPX - Memory Protection Extension
RDSEED - RDSEED instruction
ADX - The ADCX and ADOX instructions
SMAP - Supervisor Mode Access Prevention
CLFSOPT - CLFLUSHOPT instruction
IPT
SGXLC
MDCLEAR
TSXFA
IBRS - Indirect Branch Restricted Speculation
STIBP
L1DF
SSBD
[SYSCALL](http://www.felixcloutier.com/x86/SYSCALL.html) - SYSCALL instruction
XD
1GBPAGE - 1GB Page
EM64T
LAHF -  Load AH from Flags (LAHF) and Store AH into Flags (SAHF) in long mode
LZCNT
PREFETCHW
[RDTSCP](http://www.felixcloutier.com/x86/RDTSCP.html) - Read Time Stamp Counter and Processor ID
TSCI
[avx512f](https://en.wikipedia.org/wiki/AVX-512#New_instructions_in_AVX-512_foundation): AVX-512 foundation
[avx512dq](https://en.wikipedia.org/wiki/AVX-512#New_instructions_in_AVX-512_BW_and_DQ): AVX-512 Double/Quad instructions
[avx512pf](https://en.wikipedia.org/wiki/AVX-512#New_instructions_in_AVX-512_prefetch): AVX-512 Prefetch
[avx512er](https://en.wikipedia.org/wiki/AVX-512#New_instructions_in_AVX-512_exponential_and_reciprocal): AVX-512 Exponential and Reciprocal
[avx512cd](https://en.wikipedia.org/wiki/AVX-512#New_instructions_in_AVX-512_conflict_detection): AVX-512 Conflict Detection
sha_ni: SHA1/SHA256 Instruction Extensions
[avx512bw](https://en.wikipedia.org/wiki/AVX-512#New_instructions_in_AVX-512_BW_and_DQ): AVX-512 Byte/Word instructions
avx512vl: AVX-512 128/256 Vector Length extensions

## Reference

- [What do the flags in proc cpuinfo mean](https://unix.stackexchange.com/questions/43539/what-do-the-flags-in-proc-cpuinfo-mean)
- [x86 Features](https://www.gnu.org/software/libc/manual/html_node/X86.html)
