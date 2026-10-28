# Exercise 06 – Ignore Generated Files

## Objective
Create `.gitignore` rules for `*.log`, `*.tmp`, `build/` and `.env`. Create matching dummy files and demonstrate the rules using `git check-ignore -v`. Commit only the intended project files.

## .gitignore Rules
```
*.log
*.tmp
build/
.env
```

## Commands Used
```bash
# Create .gitignore
printf "*.log\n*.tmp\nbuild/\n.env\n" > .gitignore

# Create dummy files
echo "debug output" > debug.log
echo "temp data" > data.tmp
mkdir build && echo "compiled" > build/app.out
echo "SECRET_KEY=abc123" > .env

# Verify files are ignored
git status --short
git check-ignore -v debug.log
git check-ignore -v data.tmp
git check-ignore -v build/app.out
git check-ignore -v .env

# Commit only .gitignore
git add .gitignore
git commit -m "Add gitignore rules for logs, tmp, build and env"
```

## Output
See [output.txt](output.txt) for the terminal output.
