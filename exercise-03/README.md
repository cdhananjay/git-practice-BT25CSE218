# Exercise 03 – Write and Improve a Greeting Script

## Objective
Create `greet.sh` that reads a name and prints a greeting. Commit it. Then add handling for empty input, test both cases, and record the improvement in a second commit.

## Commands Used
```bash
# Version 1: basic greeting
cat > greet.sh << 'EOF'
#!/bin/bash
read -p "Enter your name: " name
echo "Hello, $name! Welcome to Git Lab."
EOF
bash greet.sh
git add greet.sh
git commit -m "Add basic greeting script"

# Version 2: add empty input handling
cat > greet.sh << 'EOF'
#!/bin/bash
read -p "Enter your name: " name
if [ -z "$name" ]; then
    echo "Hello, stranger! Please provide your name next time."
else
    echo "Hello, $name! Welcome to Git Lab."
fi
EOF
bash greet.sh   # test with name
bash greet.sh   # test with empty input
git add greet.sh
git commit -m "Add input validation to greeting script"
```

## Output
See [output.txt](output.txt) for the terminal output.
