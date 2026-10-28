# Exercise 07 – Develop a Menu on a Branch

## Objective
Create `feature/menu` branch. Write `menu.sh` with options to greet the user, add two integers, check even or odd, and exit. Run every option, commit and merge into `main`.

## Menu Options
1. **Greet the user** – reads name and prints greeting
2. **Add two integers** – reads two numbers and prints sum
3. **Check even or odd** – reads a number and checks parity
4. **Exit** – exits the program

## Commands Used
```bash
git switch -c feature/menu
# create menu.sh
bash menu.sh          # test all options
git add menu.sh
git commit -m "Add interactive menu script"
git switch main
git merge feature/menu
```

## Output
See [output.txt](output.txt) for the terminal output.
