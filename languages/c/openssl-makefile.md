# Makefile for using OpenSSL

[Back](../../index.md#c){: .button}

In OSX the path to openssl installed via brew is in `/usr/local/opt/openssl@1.1`

```make
OPENSSL_DIR = <path-to-openssl>
OPENSSL_SUPPORT = -I$(OPENSSL_DIR)/include -L$(OPENSSL_DIR)/lib

main:
  gcc -o main.c $(OPENSSL_SUPPORT) -lcrypto

```
