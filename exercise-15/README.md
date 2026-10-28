# Exercise 15 – Fetch and Update a Clone

## Objective
Push a new commit from one clone. In another clone, run `git fetch`, inspect `main..origin/main`, update with `git pull --ff-only` and verify the new file.

## Commands Used
```bash
# Clone 1: push a new commit
echo "New content from clone 1" > sync-test.txt
git add sync-test.txt
git commit -m "Add sync-test file from clone 1"
git push origin main

# Clone 2: fetch and update
git fetch origin
git log --oneline main..origin/main
git pull --ff-only origin main
cat sync-test.txt
```

## Key Concepts
- `git fetch` downloads remote data without modifying working tree
- `main..origin/main` shows commits on remote not yet in local
- `git pull --ff-only` updates only if fast-forward is possible (safe)

## Output
See [output.txt](output.txt) for the terminal output.
