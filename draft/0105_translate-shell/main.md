# translate-shell

# install

https://github.com/soimort/translate-shell?tab=readme-ov-file

https://wiki.archlinux.jp/index.php/%E3%83%91%E3%83%83%E3%82%B1%E3%83%BC%E3%82%B8%E3%81%AE%E4%BD%9C%E6%88%90

https://kmyk.github.io/blog/blog/2015/09/19/how-to-make-packages-of-arch-linux/

```sh
$ cp /usr/share/pacman/PKGBUILD.proto .
```

```sh
c@DESKTOP-ACV7PFE UCRT64 /c/Users/c/Desktop/2025/translate-shell
$ cat PKGBUILD 
pkgname=trans
build(){
    pwd
    make
}
package(){
    make prefix="$pkgdir" install
}
c@DESKTOP-ACV7PFE UCRT64 /c/Users/c/Desktop/2025/translate-shell
$ makepkg
==> Making package: trans - (Sun, Jan  5, 2025  5:14:56 AM)
==> Checking runtime dependencies...
==> Checking buildtime dependencies...
==> Retrieving sources...
==> Extracting sources...
==> Removing existing $pkgdir/ directory...
==> Starting build()...
/c/Users/c/Desktop/2025/translate-shell/src
make: *** No targets specified and no makefile found.  Stop.
==> ERROR: A failure occurred in build().
    Aborting...
```

build(), package() ともに src ディレクトリに入る  
cd .. を追加したら動いた

```sh
c@DESKTOP-ACV7PFE UCRT64 /c/Users/c/Desktop/2025/translate-shell
$ makepkg
==> Making package: trans - (Sun, Jan  5, 2025  5:16:10 AM)
==> Checking runtime dependencies...
==> Checking buildtime dependencies...
==> Retrieving sources...
==> Extracting sources...
==> Removing existing $pkgdir/ directory...
==> Starting build()...
[OK] Task build completed.
==> Starting package()...
[OK] Task build completed.
[OK] translate-shell installed.
==> Tidying install...
  -> Removing libtool files...
  -> Purging unwanted files...
  -> Stripping unneeded symbols from binaries and libraries...
find: ‘*’: No such file or directory
  -> Compressing man and info pages...
==> Checking for packaging issues...
==> Creating package "trans"...
  -> Generating .PKGINFO file...
  -> Generating .BUILDINFO file...
  -> Generating .MTREE file...
  -> Compressing package...
==> Finished making: trans - (Sun, Jan  5, 2025  5:16:22 AM)

c@DESKTOP-ACV7PFE UCRT64 /c/Users/c/Desktop/2025/translate-shell
$ pacman -U trans---x86_64.pkg.tar.zst 
loading packages...
resolving dependencies...
looking for conflicting packages...

Packages (1) trans--


:: Proceed with installation? [Y/n] y
(1/1) checking keys in keyring                         [###########################] 100%
(1/1) checking package integrity                       [###########################] 100% 
(1/1) loading package files                            [###########################] 100% 
(1/1) checking for file conflicts                      [###########################] 100% 
(1/1) checking available disk space                    [###########################] 100% 
:: Processing package changes...
(1/1) installing trans                                 [###########################] 100% 

c@DESKTOP-ACV7PFE UCRT64 /c/Users/c/Desktop/2025/translate-shell
$ pacman -U trans---x86_64.pkg.tar.zst
loading packages...
resolving dependencies...
looking for conflicting packages...

Packages (1) trans--


:: Proceed with installation? [Y/n] y
(1/1) checking keys in keyring                         [###########################] 100%
(1/1) checking package integrity                       [###########################] 100%
(1/1) loading package files                            [###########################] 100%
(1/1) checking for file conflicts                      [###########################] 100%
(1/1) checking available disk space                    [###########################] 100%
:: Processing package changes...
(1/1) installing trans                                 [###########################] 100%

c@DESKTOP-ACV7PFE UCRT64 /c/Users/c/Desktop/2025
$ trans --help
Usage:  trans [OPTIONS] [SOURCES]:[TARGETS] [TEXT]...

Information options:
    -V, -version
        Print version and exit.
    -H, -help
        Print help message and exit.
    -M, -man
        Show man page and exit.
    -T, -reference
        Print reference table of languages (in endonyms) and codes, and exit.
    -R, -reference-english
        Print reference table of languages (in English names) and codes, and exit.
    -S, -list-engines
        List available translation engines and exit.
    -list-languages
        List all languages (in endonyms) and exit.
    -list-languages-english
        List all languages (in English names) and exit.
    -list-codes
        List all codes and exit.
    -list-all
        List all languages (endonyms and English names) and codes, and exit.
    -L CODES, -linguist CODES
        Print details of languages and exit.
    -U, -upgrade
        Check for upgrade of this program.

Translator options:
    -e ENGINE, -engine ENGINE
        Specify the translation engine to use.

Display options:
    -verbose
        Verbose mode. (default)
    -b, -brief
        Brief mode.
    -d, -dictionary
        Dictionary mode.
    -identify
        Language identification.
    -show-original Y/n
        Show original text or not.
    -show-original-phonetics Y/n
        Show phonetic notation of original text or not.
    -show-translation Y/n
        Show translation or not.
    -show-translation-phonetics Y/n
        Show phonetic notation of translation or not.
    -show-prompt-message Y/n
        Show prompt message or not.
    -show-languages Y/n
        Show source and target languages or not.
    -show-original-dictionary y/N
        Show dictionary entry of original text or not.
    -show-dictionary Y/n
        Show dictionary entry of translation or not.
    -show-alternatives Y/n
        Show alternative translations or not.
    -w NUM, -width NUM
        Specify the screen width for padding.
    -indent NUM
        Specify the size of indent (number of spaces).
    -theme FILENAME
        Specify the theme to use.
    -no-theme
        Do not use any other theme than default.
    -no-ansi
        Do not use ANSI escape codes.
    -no-autocorrect
        Do not autocorrect. (if defaulted by the translation engine)
    -no-bidi
        Do not convert bidirectional texts.
    -bidi
        Always convert bidirectional texts.
    -no-warn
        Do not write warning messages to stderr.
    -dump
        Print raw API response instead.

Audio options:
    -p, -play
        Listen to the translation.
    -speak
        Listen to the original text.
    -n VOICE, -narrator VOICE
        Specify the narrator, and listen to the translation.
    -player PROGRAM
        Specify the audio player to use, and listen to the translation.
    -no-play
        Do not listen to the translation.
    -no-translate
        Do not translate anything when using -speak.
    -download-audio
        Download the audio to the current directory.
    -download-audio-as FILENAME
        Download the audio to the specified file.

Terminal paging and browsing options:
    -v, -view
        View the translation in a terminal pager.
    -pager PROGRAM
        Specify the terminal pager to use, and view the translation.
    -no-view, -no-pager
        Do not view the translation in a terminal pager.
    -browser PROGRAM
        Specify the web browser to use.
    -no-browser
        Do not open the web browser.

Networking options:
    -x HOST:PORT, -proxy HOST:PORT
        Use HTTP proxy on given port.
    -u STRING, -user-agent STRING
        Specify the User-Agent to identify as.
    -4, -ipv4, -inet4-only
        Connect only to IPv4 addresses.
    -6, -ipv6, -inet6-only
        Connect only to IPv6 addresses.

Interactive shell options:
    -I, -interactive, -shell
        Start an interactive shell.
    -E, -emacs
        Start the GNU Emacs front-end for an interactive shell.
    -no-rlwrap
        Do not invoke rlwrap when starting an interactive shell.

I/O options:
    -i FILENAME, -input FILENAME
        Specify the input file.
    -o FILENAME, -output FILENAME
        Specify the output file.

Language preference options:
    -hl CODE, -host CODE
        Specify the host (interface) language.
    -s CODES, -sl CODES, -source CODES, -from CODES
        Specify the source language(s), joined by '+'.
    -t CODES, -tl CODES, -target CODES, -to CODES
        Specify the target language(s), joined by '+'.

Text preprocessing options:
    -j, -join-sentence
        Treat all arguments as one single sentence.

Other options:
    -no-init
        Do not load any initialization script.

See the man page trans(1) for more information.

c@DESKTOP-ACV7PFE UCRT64 /c/Users/c/Desktop/2025
$ whereis trans
trans: /usr/local/bin/trans

```