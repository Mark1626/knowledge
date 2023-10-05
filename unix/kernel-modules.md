# Kernel Modules

[Back](../index.md#unix)

## Installing Kernel modules

1. Install Kernel module

```
modprobe hello
```

2. Get info about a kernel module

```
modinfo hello
```

3. List Kernel Modules

```
lsmod
```

4. Info / printk messages can be found in `journalctl`


## Signing kernel modules

Installing kernel modules will require the module to be signed. In case a 
signing key has not been generated a keypair will have to be created

1. Creating a X.509 conf

```
cat >> x509.conf <<EOF
[ req ]
default_bits = 4096
distinguished_name = req_distinguished_name
prompt = no
string_mask = utf8only
x509_extensions = extensions

[ req_distinguished_name ]
O = Example, Inc.
CN = Example, Inc. Kernel signing key
emailAddress = jdoe@example.com

[ extensions ]
basicConstraints=critical,CA:FALSE
keyUsage=digitalSignature
subjectKeyIdentifier=hash
authorityKeyIdentifier=keyid
EOF
```

2. Generating a keypair

```
openssl req -new -nodes -utf8 -sha512 -days 36500 -batch -x509 -config x509.genkey -outform DER -out signing_key.x509 -keyout signing_key.priv
```

3. Add the public key as a Machine Owner Key. Restart and in the UEFI Key Manager add the key

```
mokutil --import signing_key.x509
```

4. You can list the installed keys with 

```
mokutil --list-enrolled
```

5. Sign the module

```
/usr/src/kernels/$(uname -r)/scripts/sign-file sha512 signing_key.pem signing_key.x509 /lib/modules/$(uname -r)/extra/hello.ko
```

6. Use `modprobe` to add the module to the Linux Kernel

### Further Reading

1. https://blog.delouw.ch/2017/04/18/signing-linux-kernel-kodules-and-enforce-to-load-only-signed-modules/
2. https://wiki.gentoo.org/wiki/Signed_kernel_module_support

