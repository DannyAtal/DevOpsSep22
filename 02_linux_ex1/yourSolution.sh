devops+"great"
Kernel System Calls
-------------------
< 3.1.7-340.x86_64 >

wget https://devops-course-sep-22.s3.sa-east-1.amazonaws.com/ex1/secretGenerator.tar.gz

הכן תיקייה
mkdir secretDir

מחק תיקיה
rm -r maliciousFiles

יצירת קובץ (בתוך התקייה)
touch secretDir/.secret

שינוי טקסת
vim generateSecret.sh
הוספה של רווח ל=600

הרשאות קריאה וכתיבה בלבד
chmod 600 secretDir/.secret

הרצה
./generateSecret.sh

זה מה שרציתה רון ?<??

execve("./whatIdo", ["./whatIdo"], 0x7ffe0de9beb0 /* 48 vars */) = 0
brk(NULL)                           	= 0x55ea3583f000
arch_prctl(0x3001 /* ARCH_??? */, 0x7fffa9380e50) = -1 EINVAL (Invalid argument)
mmap(NULL, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7f43a5377000
access("/etc/ld.so.preload", R_OK)  	= -1 ENOENT (No such file or directory)
openat(AT_FDCWD, "/etc/ld.so.cache", O_RDONLY|O_CLOEXEC) = 3
newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=73183, ...}, AT_EMPTY_PATH) = 0
mmap(NULL, 73183, PROT_READ, MAP_PRIVATE, 3, 0) = 0x7f43a5365000
close(3)                            	= 0
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libc.so.6", O_RDONLY|O_CLOEXEC) = 3
read(3, "\177ELF\2\1\1\3\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0P\237\2\0\0\0\0\0"..., 832) = 832
pread64(3, "\6\0\0\0\4\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0"..., 784, 64) = 784
pread64(3, "\4\0\0\0 \0\0\0\5\0\0\0GNU\0\2\0\0\300\4\0\0\0\3\0\0\0\0\0\0\0"..., 48, 848) = 48
pread64(3, "\4\0\0\0\24\0\0\0\3\0\0\0GNU\0i8\235HZ\227\223\333\350s\360\352,\223\340."..., 68, 896) = 68
newfstatat(3, "", {st_mode=S_IFREG|0644, st_size=2216304, ...}, AT_EMPTY_PATH) = 0
pread64(3, "\6\0\0\0\4\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0"..., 784, 64) = 784
mmap(NULL, 2260560, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0x7f43a513d000
mmap(0x7f43a5165000, 1658880, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x28000) = 0x7f43a5165000
mmap(0x7f43a52fa000, 360448, PROT_READ, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x1bd000) = 0x7f43a52fa000
mmap(0x7f43a5352000, 24576, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x214000) = 0x7f43a5352000
mmap(0x7f43a5358000, 52816, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) = 0x7f43a5358000
close(3)                            	= 0
mmap(NULL, 12288, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7f43a513a000
arch_prctl(ARCH_SET_FS, 0x7f43a513a740) = 0
set_tid_address(0x7f43a513aa10)     	= 4886
set_robust_list(0x7f43a513aa20, 24) 	= 0
rseq(0x7f43a513b0e0, 0x20, 0, 0x53053053) = 0
mprotect(0x7f43a5352000, 16384, PROT_READ) = 0
mprotect(0x55ea33e00000, 4096, PROT_READ) = 0
mprotect(0x7f43a53b1000, 8192, PROT_READ) = 0
prlimit64(0, RLIMIT_STACK, NULL, {rlim_cur=8192*1024, rlim_max=RLIM64_INFINITY}) = 0
munmap(0x7f43a5365000, 73183)       	= 0
stat("./welcomeToDevOpsMay22", 0x55ea33e01040) = -1 ENOENT (No such file or directory)
mkdir("./welcomeToDevOpsMay22", 0700)   = 0
getrandom("\x94\xf8\x1b\x7c\xea\x25\x4b\xd7", 8, GRND_NONBLOCK) = 8
brk(NULL)                           	= 0x55ea3583f000
brk(0x55ea35860000)                 	= 0x55ea35860000
openat(AT_FDCWD, "welcomeToDevOpsMay22/goodLuck", O_WRONLY|O_CREAT|O_TRUNC, 0666) = 3
newfstatat(3, "", {st_mode=S_IFREG|0664, st_size=0, ...}, AT_EMPTY_PATH) = 0
write(3, "There you go... tell me what I d"..., 36) = 36
close(3)                            	= 0
exit_group(0)                       	= ?
+++ exited with 0 +++



Binary Numbers
--------------
< Your Answer ?>
https://www.calculator.net/binary-calculator.html?b2dnumber1=111&calctype=b2d&x=31&y=13#binary2decimal

111= 7
100=4
10110 =22




What is the available decimal range represented by a 8 bits binary number
256

With 8 bits, the maximum number of values is 256 or 0 through 255.
256


