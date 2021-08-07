# Configuration
```
[fetch]
        prune = true
[init]
        defaultBranch = master
[core]
        editor = micro
        excludesFile = ~/.gitignore
[commit]
        template = ~/.gitmessage
```
* Create a default commit template at `~/.message`. Then add to your configuration.

## Aliases
```
[alias]
        pl = pull
        co = checkout
        st = status
        s = status --short
        aa = add --all
        ci = commit
        cm = commit --message
        ca = commit --all
        cam = commit -all --message
```
```
[alias]
        pb = publish
        pbc = publish --push-option merge_request.create
        pbca = publish --push-option merge_request.create --push-option merge_request.merge_request.merge_when_pipeline_succeeds
```
```
[alias]
        adog = log --all --decorate --oneline --graph
```

## URL Aliases
```
[url "git@gitlab.com"]
        insteadOf = gl
[url "git@github.com"]
        insteadOf = gh
[url "git@bitbucket.com"]
        insteadOf = bb
```

# References
* [git-scm.com/Git-Basics-Git-Alias](http://git-scm.com/book/en/v2/Git-Basics-Git-Aliases)
* [stackoverflow/pretty-git-branch-graphs](https://stackoverflow.com/questions/1057564/pretty-git-branch-graphs)
