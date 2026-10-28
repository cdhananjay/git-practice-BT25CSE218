# Exercise 10 – Unstage and Discard Practice Edits

## Objective
Modify a tracked file and stage it. Use `git restore --staged` to unstage while keeping the edit. Display the diff. Discard the practice edit using `git restore` and show clean status.

## Commands Used
```bash
echo "Practice edit - to be discarded" >> README.md
git add README.md

# Unstage (keep working tree changes)
git restore --staged README.md
git status --short
git diff

# Discard the edit entirely
git restore README.md
git status
```

## Key Concepts
- `git restore --staged FILE` → removes from staging area, keeps working tree changes
- `git restore FILE` → discards working tree changes (restores from index)
- Always inspect `git diff` before discarding changes

## Output
See [output.txt](output.txt) for the terminal output.
