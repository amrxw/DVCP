# Damn Vulnerable C Program(DVCP)

[![Twitter Follow](https://img.shields.io/twitter/follow/hardik05?style=social)](https://twitter.com/hardik05)

**My YouTube Channel:** https://www.youtube.com/user/MrHardik05/featured?view_as=subscriber

**What it is?**

This is a simple C program which I have coded to explain common types of vulnerabilities like:
1. integer overflow
2. integer underflow
3. Out of bound Read
4. Out of bound Write
5. Double Free
6. Use After Free
7. Memory leaks
8. Stack exhaustion
9. Heap exhastion

This C program contains vulenrable code of all of the above vulnerabilities and you can fuzz it using any fuzzer like AFL, libafl, libfuzzer, hongfuzz, winafl, jackalope or any other fuzzer which you want.

**How to Compile**

Just type "make" on the command prompt. Makefile is included with it.

**How to generate input for AFL?**

just create a sample input file as following and rest AFL will take care:

`echo "IMG" >input/1.txt`

AFL will automatically generate new test cases and discover most of the vulnerabilities mentioned above. thats the beauty of AFL :)

**How to fuzz it using AFL?**

**1. First compile this program using following command:**

`afl-gcc -g -fsanitize=address dvcp.c -o dvcp`

**2. run this command:**

`afl-fuzz -i input -o output -m none -- ./dvcp @@`

**How to fuzz it using honggfuzz**

**1. First compile this program using following command:**

`hfuzz-gcc -g -fsanitize=address dvcp.c -o dvcp`

**2. run this command:**

`hongfuzz -i input -- ./dvcp ___FILE___`

**How to fuzz using libfuzzer**

You need to modify the C code, you can get the updated code from here: https://github.com/hardik05/Damn_Vulnerable_C_Program/blob/master/dvcp_libfuzzer.c

**1. Compile the program using following command:**

`clang -fsanitize=fuzzer,address,undefined -g dvcp_libfuzzer.c -o dvcp_libfuzzer`

**2. run this command to fuzz:**

`./dvcp_libfuzzer`

**Author?**

**Twitter:** https://twitter.com/hardik05

**Email:** DM me on twitter :)

**Web:** http://hardik05.wordpress.com

**Feedback?**

Suggestions and comments are always welcomed. if you find any issue or have a fix or a new feature send pull request.

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=hardik05/Damn_Vulnerable_C_Program&type=Date)](https://star-history.com/#hardik05/Damn_Vulnerable_C_Program&Date)
