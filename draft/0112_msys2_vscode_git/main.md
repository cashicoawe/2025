# msys2 vscode git integration

vscode の source control 使って commit しても、 msys2 側で認識しない

```
c@DESKTOP-ACV7PFE UCRT64 /c/Users/c/Desktop/2025
$ git status
On branch main
Your branch is up to date with 'origin/main'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   draft/0110_git_default_editor/main.md
        modified:   draft/0110_git_default_editor/settings.json

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        draft/0112_msys2_vscode_git/

no changes added to commit (use "git add" and/or "git commit -a")
```