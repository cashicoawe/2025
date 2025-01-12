# msys2 mount

https://qiita.com/Ted-HM/items/4f2feb9fdacb6c72083c

```
c@DESKTOP-ACV7PFE UCRT64 /mnt/c/Users/c/Desktop/2025
$ ls /
autorebase.bat  clang64.exe  clangarm64      clangarm64.ini  etc                  installer.dat       mingw32.exe  mingw64      mingw64.ini  msys2.ini        opt   ucrt64      ucrt64.ini     uninstall.ini
bin             clang64.ico  clangarm64.exe  components.xml  home                 installerResources  mingw32.ico  mingw64.exe  msys2.exe    msys2_shell.cmd  proc  ucrt64.exe  uninstall.dat  usr
clang64         clang64.ini  clangarm64.ico  dev             InstallationLog.txt  mingw32             mingw32.ini  mingw64.ico  msys2.ico    network.xml      tmp   ucrt64.ico  uninstall.exe  var

c@DESKTOP-ACV7PFE UCRT64 /mnt/c/Users/c/Desktop/2025
$ mount
C: on /mnt/c type ntfs (binary,noacl,posix=0)
C:/Users/c/Desktop on /mnt/Desktop type ntfs (binary,noacl,posix=0)
C:/Users/c/Desktop/msys2 on / type ntfs (binary,noacl,auto)
C:/Users/c/Desktop/msys2/usr/bin on /bin type ntfs (binary,noacl,auto)

c@DESKTOP-ACV7PFE UCRT64 /mnt/c/Users/c/Desktop/2025
$ ls /mnt
ls: cannot access '/mnt': No such file or directory

c@DESKTOP-ACV7PFE UCRT64 /mnt/c/Users/c/Desktop/2025
$ cat /etc/fstab
# For a description of the file format, see the Users Guide
# https://cygwin.com/cygwin-ug-net/using.html#mount-table

# DO NOT REMOVE NEXT LINE. It remove cygdrive prefix from path
none / cygdrive binary,posix=0,noacl,user 0 0

C:/ /mnt/c
C:/\Users\c\Desktop /mnt/Desktop

```