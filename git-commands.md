# Git Commands Reference

A record of Git commands used throughout this lab assignment, with brief explanations.

## Configuration
| Command | Purpose |
|---------|---------|
| `git --version` | Display the installed Git version |
| `git config user.name "Name"` | Set repository-local author name |
| `git config user.email "email"` | Set repository-local author email |
| `git config --get user.name` | Display the configured user name |
| `git config --get user.email` | Display the configured user email |
| `git config --global init.defaultBranch main` | Set default branch name to `main` |

## Repository Creation
| Command | Purpose |
|---------|---------|
| `git init -b main` | Initialize a new repository with `main` as the default branch |
| `git clone URL` | Clone a remote repository to a local directory |

## Staging and Committing
| Command | Purpose |
|---------|---------|
| `git status` | Show the current state of the working tree and staging area |
| `git status --short` | Compact status output (two-column format) |
| `git add FILE` | Stage a specific file for the next commit |
| `git add .` | Stage all changes in the current directory |
| `git commit -m "message"` | Record staged changes with a descriptive message |
| `git restore --staged FILE` | Unstage a file while keeping working tree changes |
| `git restore FILE` | Discard unstaged changes in the working tree |

## Viewing Changes
| Command | Purpose |
|---------|---------|
| `git diff` | Show unstaged changes (working tree vs index) |
| `git diff --staged` | Show staged changes (index vs HEAD) |
| `git diff HEAD` | Show all changes (working tree vs last commit) |
| `git log --oneline` | Show commit history in compact format |
| `git log --oneline --graph --all` | Show history with branch graph |
| `git log -2 --oneline` | Show last 2 commits |
| `git show HEAD` | Show details of the latest commit |
| `git show v1.0` | Show details of a specific tag |

## Branching and Merging
| Command | Purpose |
|---------|---------|
| `git branch` | List local branches |
| `git switch -c BRANCH` | Create and switch to a new branch |
| `git switch main` | Switch to the main branch |
| `git merge BRANCH` | Merge a branch into the current branch |
| `git merge --ff-only BRANCH` | Merge only if fast-forward is possible |
| `git merge --abort` | Abort a merge in progress (before committing) |
| `git branch -d BRANCH` | Delete a merged local branch |

## Ignoring Files
| Command | Purpose |
|---------|---------|
| `git check-ignore -v FILE` | Show which `.gitignore` rule ignores a file |

## Recovery and Undo
| Command | Purpose |
|---------|---------|
| `git revert --no-edit HEAD` | Create a new commit that undoes the latest commit |
| `git stash push -m "message"` | Temporarily save uncommitted changes |
| `git stash list` | List all saved stashes |
| `git stash pop` | Apply and remove the most recent stash |

## Remote Operations
| Command | Purpose |
|---------|---------|
| `git remote add origin URL` | Add a remote repository |
| `git remote -v` | Display remote URLs |
| `git push -u origin main` | Push main and set upstream tracking |
| `git push origin BRANCH` | Push a branch to the remote |
| `git fetch origin` | Download remote data without modifying working tree |
| `git pull --ff-only origin main` | Fetch and fast-forward merge |
| `git log main..origin/main` | Show commits on remote not yet in local main |

## Tags
| Command | Purpose |
|---------|---------|
| `git tag -a v1.0 -m "message"` | Create an annotated tag |
| `git push origin v1.0` | Push a specific tag to the remote |

---

## Merge Conflicts Encountered

### Exercise 09 – mode.txt Conflict
**Situation**: Both `main` and `feature/mode` modified the same line in `mode.txt`.
- `main` changed it to: `Lab mode: classroom`
- `feature/mode` changed it to: `Lab mode: online`

**How I resolved it**:
1. Git reported `CONFLICT (content): Merge conflict in mode.txt`
2. Opened the file and saw conflict markers (`<<<<<<<`, `=======`, `>>>>>>>`)
3. Neither side was fully correct, so I replaced the entire block with: `Lab mode: hybrid`
4. Staged the resolved file with `git add mode.txt`
5. Completed the merge with `git commit -m "Merge mode changes with hybrid option"`

### Exercise 17 – VS Code Conflict Resolution
**Situation**: Conflicting changes in `practice-conflict.txt` on two branches.
- `main`: `Lab setting: in-person only`
- `feature/conflict-test`: `Lab setting: online only`

**How I resolved it**:
1. Opened the conflicted file in VS Code
2. Used the Merge Editor to compare both versions
3. Manually edited the resolution: `Lab setting: hybrid (both online and in-person)`
4. Saved, staged, and committed

### Exercise 19 – Push Rejection Challenge
**Situation**: Two clones made independent commits to the same file on `main`.
- Clone A pushed first (succeeded)
- Clone B's push was rejected

**How I resolved it**:
1. In Clone B: `git fetch origin` to get Clone A's changes
2. `git merge origin/main` triggered a conflict in `shared-file.txt`
3. Resolved by keeping changes from both clones
4. Staged, committed, and pushed successfully — **no force push needed**
