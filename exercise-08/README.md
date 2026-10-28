# Exercise 08 – Merge and Delete a Branch

## Objective
Create `feature/help`, add `help.txt` with instructions for `menu.sh`, commit, merge into `main`, delete the merged branch, and display history with `git log --oneline --graph --all`.

## Commands Used
```bash
git switch -c feature/help
# create help.txt
git add help.txt
git commit -m "Add help documentation for menu.sh"
git switch main
git merge feature/help
git branch -d feature/help
git log --oneline --graph --all
```

## Output
See [output.txt](output.txt) for the terminal output.
