# Exercise 19 – Challenge Exercise

## Objective
In a disposable team repository, use two clones to make independent commits on the same shared branch. Push from one clone, then attempt to push from the other. Capture the rejection, fetch, merge, resolve conflicts, and push successfully **without force-pushing**.

## Workflow
1. **Clone A** pushes a commit → succeeds
2. **Clone B** pushes a commit → **rejected** (remote has new work)
3. **Clone B** fetches, merges, resolves conflict
4. **Clone B** pushes → succeeds

## Key Lesson
- Never use `git push --force` on shared branches
- Always `fetch` + `merge` (or `pull`) before retrying a push
- Conflicts are normal in team collaboration – resolve them manually

## Commands Used
```bash
# Clone A
echo "Change from Clone A" > shared-file.txt
git add shared-file.txt && git commit -m "Clone A: add shared file"
git push origin main    # succeeds

# Clone B
echo "Change from Clone B" > shared-file.txt
git add shared-file.txt && git commit -m "Clone B: add shared file"
git push origin main    # REJECTED!

# Clone B resolves
git fetch origin
git merge origin/main   # CONFLICT!
# resolve conflict manually
git add shared-file.txt
git commit -m "Merge: combine changes from both clones"
git push origin main    # succeeds
```

## Output
See [output.txt](output.txt) for the terminal output.
