# Exercise 16 – Use VS Code Source Control

## Objective
Using VS Code, initialize a repository, create a file, stage and commit. Make another edit and commit. Create and merge a feature branch. Verify with `git log`.

## Files
- `hello-vscode.py` – Sample Python file created via VS Code

## VS Code Workflow
1. **Initialize** – Source Control > Initialize Repository
2. **Create & Stage** – Create file, click `+` to stage
3. **Commit** – Enter message, click checkmark
4. **Branch** – Click branch name > Create New Branch
5. **Merge** – Command Palette > Git: Merge Branch

## VS Code vs Terminal
| VS Code Action | Terminal Equivalent |
|---|---|
| Stage Changes (+) | `git add FILE` |
| Unstage Changes (-) | `git restore --staged FILE` |
| Commit | `git commit -m "message"` |
| Discard Changes | `git restore FILE` |
| View diff | `git diff` |

## Output
See [output.txt](output.txt) for the terminal output.
