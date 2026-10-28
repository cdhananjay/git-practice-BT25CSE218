# Exercise 13 – Publish and Clone

## Objective
Create an empty hosted repository, add it as `origin`, push `main`. Clone into a different folder and display its history and remote URL.

## Commands Used
```bash
# On GitHub: create empty repo git-practice-BT25CSE218

# Add remote and push
git remote add origin https://github.com/cdhananjay/git-practice-BT25CSE218.git
git remote -v
git push -u origin main

# Clone to verify
git clone https://github.com/cdhananjay/git-practice-BT25CSE218.git /tmp/clone-test
cd /tmp/clone-test
git log --oneline
git remote -v
```

## Output
See [output.txt](output.txt) for the terminal output.
