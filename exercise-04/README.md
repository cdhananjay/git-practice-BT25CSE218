# Exercise 04 – Stage Selected Files

## Objective
Create two text files. Stage and commit only one while leaving the other untracked. Capture `git status` before and after the commit, then commit the second file.

## Commands Used
```bash
echo "This is file 1" > file1.txt
echo "This is file 2" > file2.txt
git status
git add file1.txt
git status
git commit -m "Add file1.txt, leave file2.txt untracked"
git status
git add file2.txt
git commit -m "Add file2.txt"
git status
```

## Output
See [output.txt](output.txt) for the terminal output.
