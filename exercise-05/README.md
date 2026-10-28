# Exercise 05 – Inspect Staged and Unstaged Edits

## Objective
Edit `README.md` and stage it. Edit it again before committing. Run `git diff`, `git diff --staged`, and `git diff HEAD`. Save their outputs, stage the final version and commit.

## Commands Used
```bash
echo "Session 1: Repository basics" >> README.md
git add README.md
echo "Session 2: Collaboration" >> README.md

git diff              # unstaged changes (Session 2)
git diff --staged     # staged changes (Session 1)
git diff HEAD         # all changes vs last commit

git add README.md
git commit -m "Document planned lab sessions"
```

## Key Observation
- `git diff` shows only **unstaged** changes (working tree vs index)
- `git diff --staged` shows only **staged** changes (index vs HEAD)  
- `git diff HEAD` shows **all** changes (working tree vs HEAD)
- Short status `MM` means: modified in index AND modified in working tree

## Output
See [output.txt](output.txt) for the terminal output.
