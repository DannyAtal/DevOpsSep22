# DevOpsSep22
daneyataal@gmail.com
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


Kernel System Calls
-------------------
root@cnvrg-job-notebooksession-byoxcwnypwptr5nvlba8-1-56ff94f57lvs79:/cnvrg# strace ./whatIdo
execve("./whatIdo", ["./whatIdo"], 0x7ffd955b9ee0 /* 61 vars */) = 0
brk(NULL)                               = 0x55a74744e000
access("/etc/ld.so.nohwcap", F_OK)      = -1 ENOENT (No such file or directory)
access("/etc/ld.so.preload", R_OK)      = -1 ENOENT (No such file or directory)
openat(AT_FDCWD, "/etc/ld.so.cache", O_RDONLY|O_CLOEXEC) = 3
fstat(3, {st_mode=S_IFREG|0644, st_size=22702, ...}) = 0
mmap(NULL, 22702, PROT_READ, MAP_PRIVATE, 3, 0) = 0x7fe5a98f7000
To(3)                                = 0
access("/etc/ld.so.nohwcap", F_OK)      = -1 ENOENT (No such file or directory)
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libc.so.6", O_RDONLY|O_CLOEXEC) = 3
read(3, "\177ELF\2\1\1\3\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0\240\35\2\0\0\0\0\0"..., 832) = 832
fstat(3, {st_mode=S_IFREG|0755, st_size=2030928, ...}) = 0
mmap(NULL, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7fe5a98f5000
mmap(NULL, 4131552, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0x7fe5a92e3000
mprotect(0x7fe5a94ca000, 2097152, PROT_NONE) = 0
mmap(0x7fe5a96ca000, 24576, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x1e7000) = 0x7fe5a96ca000
mmap(0x7fe5a96d0000, 15072, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) = 0x7fe5a96d0000
close(3)                                = 0
arch_prctl(ARCH_SET_FS, 0x7fe5a98f64c0) = 0
mprotect(0x7fe5a96ca000, 16384, PROT_READ) = 0
mprotect(0x55a746c3d000, 4096, PROT_READ) = 0
mprotect(0x7fe5a98fd000, 4096, PROT_READ) = 0
munmap(0x7fe5a98f7000, 22702)           = 0
stat("./welcomeToDevOpsMay22", {st_mode=S_IFDIR|0700, st_size=22, ...}) = 0
brk(NULL)                               = 0x55a74744e000
brk(0x55a74746f000)                     = 0x55a74746f000
openat(AT_FDCWD, "welcomeToDevOpsMay22/goodLuck", O_WRONLY|O_CREAT|O_TRUNC, 0666) = 3
fstat(3, {st_mode=S_IFREG|0644, st_size=0, ...}) = 0
write(3, "There you go... tell me what I d"..., 36) = 36
close(3)                                = 0
exit_group(0)                           = ?
+++ exited with 0 +++



Binary Numbers
--------------
1) see Binary2Decimal Folder there is a solution :-)
2) 0-255
3)
First of all we need 9 bits to write the signed binary representation of +128 which is 010000000.
Now, if we take the 2's complement form of it, we get 110000000 which is also 9 bits long.
##The MSB is the most significant bit when representing a sign magnitude negative number.
If the MSB is a 0, the number is positive. If the MSB is 1, the number is negative
(Taken From The Network)

4)Im not Sure I understood the question, But If this explanation is correct then this is the answer:
https://binary-system.base-conversion.ro/convert-real-numbers-from-decimal-system-to-32bit-single-precision-IEEE754-binary-floating-point.php

 
