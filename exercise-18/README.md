# Exercise 18 – Create a Release Tag

## Objective
Run all scripts successfully. Create an annotated tag `v1.0` and display it. Push the tag and verify on the host.

## Commands Used
```bash
# Test all scripts
bash exercise-03/greet.sh
bash exercise-07/menu.sh
bash exercise-14/calculator.sh
python3 exercise-16/hello-vscode.py

# Create and push tag
git tag -a v1.0 -m "Lab release: all exercises completed"
git show v1.0
git push origin v1.0
```

## Key Concepts
- Annotated tags (`-a`) store tagger info, date, and message
- Tags must be explicitly pushed with `git push origin <tagname>`
- Tags are useful for marking release points

## Output
See [output.txt](output.txt) for the terminal output.
