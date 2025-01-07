# typst test

https://repology.org/project/typst/versions

https://enter-tainer.github.io/typst-preview/intro.html

https://myriad-dreamin.github.io/tinymist/

# tinymist error

tinymist 入れたら怒られた  
~~msys2 で動かそうとした悪影響と思われる~~  
関係なかった  

vscode 拡張作ったことないので、裏で動いてるアプリとかわからない

```
Failed to activate tinymist: Error: Could not find a valid tinymist binary.  
Bundled ('c:\Users\c\.vscode\extensions\myriad-dreamin.tinymist-0.12.16-win32-x64\out\tinymist.exe'): failed to probe:  
	return status: 3221225781  
In PATH ('tinymist.exe'): failed to probe:  
	error: spawnSync tinymist.exe ENOENT

tinymist のアクティブ化に失敗しました: エラー: 有効な tinymist バイナリが見つかりませんでした。  
バンドル ('c:\Users\c\.vscode\extensions\myriad-dreamin.tinymist-0.12.16-win32-x64\out\tinymist.exe'): プローブに失敗しました:  
	返品ステータス: 3221225781  
PATH ('tinymist.exe'): プローブに失敗しました:  
	エラー: spawnSync tinymist.exe ENOENT
```

# 再配布可能な c/c++ パッケージがうんたら

C:\Users\c\\.vscode\extensions\myriad-dreamin.tinymist-0.12.16-win32-x64\out\tinymist.exe

直接起動したら vcruntime140.dll がないって怒られた

https://learn.microsoft.com/ja-jp/cpp/windows/latest-supported-vc-redist?view=msvc-170

何とかなった

https://learn.microsoft.com/en-us/cpp/windows/latest-supported-vc-redist?view=msvc-170#visual-studio-2015-2017-2019-and-2022

C:\Windows\System32\に入る  
以下入手できる dll  
うろ覚えで確認したのであてにしないでください

- x86
	- vcruntime140_1_clr0400.dll
	- vcruntime140_clr0400.dll
- x64
	- vcruntime140.dll
	- vcruntime140_1.dll
	- vcruntime140_threads.dll

必要なのは x64 の方だった  
vscode 内の vcruntime140.dll は使えなかった  
なんでや

始めるだけでめっちゃ苦労したんだけど