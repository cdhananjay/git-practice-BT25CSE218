# Exercise 11 – Revert a Commit

## Objective
Commit a new `temporary.txt` file. Revert that commit using `git revert`. Display both commit IDs and verify that the file is removed from the working tree.

## Commands Used
```bash
echo "This is a temporary feature" > temporary.txt
git add temporary.txt
git commit -m "Add temporary feature"

git revert --no-edit HEAD

git log -2 --oneline
ls temporary.txt
git status
```

## Key Concepts
- `git revert` creates a **new commit** that undoes a previous commit
- The original commit **remains in history** (unlike `git reset`)
- Safe for shared/public branches because history is preserved

## Output
See [output.txt](output.txt) for the terminal output.
