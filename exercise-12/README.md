# Exercise 12 – Stash Unfinished Work

## Objective
Modify `README.md` without committing. Stash the edit, display `git stash list`, verify clean working tree. Apply the stash, verify the returned edit, and commit it.

## Commands Used
```bash
echo "Unfinished draft note" >> README.md

git stash push -m "README draft"
git stash list
git status

git stash pop
git diff
git add README.md
git commit -m "Complete draft note in README"
```

## Key Concepts
- `git stash push -m "message"` saves working changes temporarily
- `git stash list` shows all saved stashes
- `git stash pop` applies and removes the most recent stash
- Use `-u` flag to also stash untracked files

## Output
See [output.txt](output.txt) for the terminal output.
