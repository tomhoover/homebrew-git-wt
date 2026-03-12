# homebrew-git-wt

Homebrew Tap for [git-wt](https://github.com/tomhoover/git-wt)

`git-wt` is a lightweight `git worktree` wrapper that enforces a consistent naming convention: worktrees are created as siblings of the repo root, suffixed with the branch name.

```
/path/to/repo          ← main worktree
/path/to/repo+feature  ← worktree for branch "feature"
/path/to/repo+hotfix   ← worktree for branch "hotfix"
```

## Installation

### Installation via Homebrew

```shell
brew install tomhoover/git-wt/git-wt
```

## For documentation (and other installation methods)

Visit [git-wt](https://github.com/tomhoover/git-wt).
