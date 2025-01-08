# commit message renaming

vscode 上からだと難しい  
git の本買わないといけないかもしれない

https://docs.github.com/ja/pull-requests/committing-changes-to-your-project/creating-and-editing-commits/changing-a-commit-message

```
$ git rebase -i HEAD~n
// n 個前のコミットまで一覧が vim で開く
// 変更したいコミットの行の "pick" を "reword" に変更
// 複数個変更したら、古い順でコミットメッセージファイルが開き編集できる

$ git push --force-with-lease
```

https://zenn.dev/suginoki45/articles/c94b05d1155cda

https://www.atlassian.com/ja/blog/force-with-lease