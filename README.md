# Git Version Control Lab Assignment

## Student Information
| Field | Details |
|-------|---------|
| **Name** | Dhananjay Chavan |
| **Roll Number** | BT25CSE218 |
| **Section** | CSE |
| **Course** | IT Workshop - I (CSP 201) |
| **Semester** | Third Semester 2026-2027 |
| **Institute** | Indian Institute of Information Technology, Nagpur |

## Description
This repository contains the completed exercises for the **Git Version Control Lab** assignment. Each exercise demonstrates practical Git workflows including repository creation, staging, branching, merging, conflict resolution, remote collaboration, and tagging.

## Completed Exercises

### 10.1 Terminal Setup and Repository Operations
| # | Exercise | Folder | Status |
|---|----------|--------|--------|
| 1 | Configure Git | [exercise-01](exercise-01/) | ✅ Done |
| 2 | Create a repository | [exercise-02](exercise-02/) | ✅ Done |
| 3 | Write and improve a greeting script | [exercise-03](exercise-03/) | ✅ Done |
| 4 | Stage selected files | [exercise-04](exercise-04/) | ✅ Done |
| 5 | Inspect staged and unstaged edits | [exercise-05](exercise-05/) | ✅ Done |
| 6 | Ignore generated files | [exercise-06](exercise-06/) | ✅ Done |

### 10.2 Branching, Merging and Recovery
| # | Exercise | Folder | Status |
|---|----------|--------|--------|
| 7 | Develop a menu on a branch | [exercise-07](exercise-07/) | ✅ Done |
| 8 | Merge and delete a branch | [exercise-08](exercise-08/) | ✅ Done |
| 9 | Resolve a merge conflict | [exercise-09](exercise-09/) | ✅ Done |
| 10 | Unstage and discard practice edits | [exercise-10](exercise-10/) | ✅ Done |
| 11 | Revert a commit | [exercise-11](exercise-11/) | ✅ Done |
| 12 | Stash unfinished work | [exercise-12](exercise-12/) | ✅ Done |

### 10.3 Remote Collaboration and VS Code
| # | Exercise | Folder | Status |
|---|----------|--------|--------|
| 13 | Publish and clone | [exercise-13](exercise-13/) | ✅ Done |
| 14 | Collaborate in pairs | [exercise-14](exercise-14/) | ✅ Done |
| 15 | Fetch and update a clone | [exercise-15](exercise-15/) | ✅ Done |
| 16 | Use VS Code Source Control | [exercise-16](exercise-16/) | ✅ Done |
| 17 | Resolve a conflict in VS Code | [exercise-17](exercise-17/) | ✅ Done |
| 18 | Create a release tag | [exercise-18](exercise-18/) | ✅ Done |
| 19 | Challenge exercise | [exercise-19](exercise-19/) | ✅ Done |

## Repository Structure
```
git-practice-BT25CSE218/
├── README.md                 # This file
├── git-commands.md           # Git commands reference and conflict notes
├── exercise-01/              # Configure Git
├── exercise-02/              # Create a repository
├── exercise-03/              # Greeting script with input validation
│   ├── greet.sh
│   ├── sample-input.txt
│   └── output.txt
├── exercise-04/              # Selective staging
│   ├── file1.txt
│   ├── file2.txt
│   └── output.txt
├── exercise-05/              # Staged vs unstaged diffs
├── exercise-06/              # .gitignore rules
│   └── .gitignore
├── exercise-07/              # Interactive menu script
│   ├── menu.sh
│   ├── sample-input.txt
│   └── output.txt
├── exercise-08/              # Merge and delete branch
│   └── help.txt
├── exercise-09/              # Merge conflict resolution
│   └── mode.txt
├── exercise-10/              # Unstage and discard edits
├── exercise-11/              # Revert a commit
├── exercise-12/              # Stash unfinished work
├── exercise-13/              # Publish and clone
├── exercise-14/              # Collaborative PR
│   └── calculator.sh
├── exercise-15/              # Fetch and update
├── exercise-16/              # VS Code Source Control
│   └── hello-vscode.py
├── exercise-17/              # VS Code conflict resolution
│   └── practice-conflict.txt
├── exercise-18/              # Release tag v1.0
└── exercise-19/              # Challenge: push rejection
```

## How to Compile and Run

### Shell Scripts (Bash)
```bash
# Greeting script
bash exercise-03/greet.sh

# Interactive menu
bash exercise-07/menu.sh

# Calculator
bash exercise-14/calculator.sh
```

### Python Script
```bash
python3 exercise-16/hello-vscode.py
```

### Requirements
- **Git** 2.23+ (for `git switch` and `git restore`)
- **Bash** (Linux/macOS terminal or Git Bash on Windows)
- **Python 3** (for exercise 16)

## Git Commands Reference
See [git-commands.md](git-commands.md) for a complete list of commands used and merge conflict resolution details.

## GitHub Activities

### Issues
- [#1 - Complete terminal setup exercises (1-6)](../../issues/1)
- [#2 - Complete branching and recovery exercises (7-12)](../../issues/2)
- [#3 - Complete remote collaboration exercises (13-19)](../../issues/3)

### Pull Requests
- [#4 - Feature: Add interactive calculator script](../../pull/4)
- [#5 - Feature: Add VS Code workflow documentation](../../pull/5)

## License
This project is for academic purposes as part of the IT Workshop course at IIIT Nagpur.
