# Exercise 09 – Resolve a Merge Conflict

## Objective
Commit `mode.txt` with one line. Change that same line differently on `main` and a feature branch. Merge, resolve the conflict, stage and complete the merge.

## Conflict Resolution
- **main** changed `mode.txt` to: `Lab mode: classroom`
- **feature/mode** changed `mode.txt` to: `Lab mode: online`
- **Resolution**: Combined both intentions into `Lab mode: hybrid`

## Commands Used
```bash
# Initial commit
echo "Lab mode: pending" > mode.txt
git add mode.txt && git commit -m "Add initial lab mode"

# Feature branch
git switch -c feature/mode
echo "Lab mode: online" > mode.txt
git add mode.txt && git commit -m "Select online mode"

# Diverge on main
git switch main
echo "Lab mode: classroom" > mode.txt
git add mode.txt && git commit -m "Select classroom mode"

# Merge and resolve
git merge feature/mode     # CONFLICT!
echo "Lab mode: hybrid" > mode.txt
git add mode.txt
git commit -m "Merge mode changes with hybrid option"
```

## Output
See [output.txt](output.txt) for the terminal output.
