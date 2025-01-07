# encrypt

https://qiita.com/kite_999/items/cc39179463fd061b2e7d

```
openssl enc -e -aes-256-cbc -salt -k パスワード \
            -in 暗号化したいファイル -out 暗号化した後のファイル


-e : 暗号化
-aes-256-cbc : AES暗号、256ビット、CBCモード
-salt : saltを使用してバイナリからの憶測を困難に（鍵を生成する際にランダムな値を使用するようにする）
-k : パスワード。このパスワードを用いて復号化します。
-in : 暗号化対象のファイルパス
-out : 暗号化後のファイルパス
```

```
openssl enc -d -aes-256-cbc -salt -k 暗号化指定時のパスワード \
            -in 復号化したいファイルパス -out 復号化後のファイルパス

-d : 復号化
-aes-256-cbc : AES暗号、256ビット、CBCモード
-salt : slatを使用してバイナリからの憶測を困難に（鍵を生成する際にランダムな値を使用するようにする）
-k : パスワード。暗号化の時に指定したパスワードを指定します。
-in : 復号化したいファイルパス
-out : 復号化後のファイルパス
```

```
tar cz -C /home hoge | openssl enc -e -aes-256-cbc -salt -k パスワード -out hoge.aes
```

# 実践

```
c@DESKTOP-ACV7PFE UCRT64 /c/Users/c/Desktop/2025/draft/0105_encrypt
$ openssl enc -e -aes-256-cbc -salt -k pass123@ -in test -out test_enc
*** WARNING : deprecated key derivation used.
Using -iter or -pbkdf2 would be better.

c@DESKTOP-ACV7PFE UCRT64 /c/Users/c/Desktop/2025/draft/0105_encrypt
$ openssl enc -d -aes-256-cbc -salt -k pass123@ -in test_enc -out test_dec
*** WARNING : deprecated key derivation used.
Using -iter or -pbkdf2 would be better.

c@DESKTOP-ACV7PFE UCRT64 /c/Users/c/Desktop/2025/draft/0105_encrypt
$ cat test
ひどすぎて無題

2018年7月16日
c@DESKTOP-ACV7PFE UCRT64 /c/Users/c/Desktop/2025/draft/0105_encrypt
$ cat test_dec
ひどすぎて無題

2018年7月16日
```

https://security.stackexchange.com/questions/196432/openssl-whats-the-difference-between-kfile-and-pass

>-k password、-kfile filename  
両方のオプションは、キー導出に使用されるパスワードまたはパスワードを含むファイルを指定するために使用されます。  
ただし、これらは非推奨です。  
代わりに-passオプションを使用する必要があります。  
同等のものは、それぞれ-pass pass: passwordと-pass file: filenameです。
