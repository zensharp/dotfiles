# General
* Create a default commit template at `~/.message`. Then add to your configuration.
```shell
$ git config --global fetch.prune true
$ git config --global init.defaultBranch master
$ git config --global commit.template ~/.gitmessage
```

# Git Subcommands
* Add the included scripts to `~/bin`.

# Enable Git DAG Logs
```
$ git config --global alias.adog "log --all --decorate --oneline --graph"
```

# Git Aliases
* Add any of these aliases to your global git configuration.
```
$ git config --global alias.st "status"
$ git config --global alias.aa "add --all"
$ git config --global alias.ci "commit"
$ git config --global alias.cm "commit -m"
$ git config --global alias.cam "commit -am"
$ git config --global alias.pb "publish"
$ git config --global alias.pbc "publish --push-option merge_request.create"
$ git config --global alias.pbca "publish --push-option merge_request.create --push-option merge_request.merge_request.merge_when_pipeline_succeeds"
```

# References
* [git-scm.com/Git-Basics-Git-Alias](http://git-scm.com/book/en/v2/Git-Basics-Git-Aliases)
* [stackoverflow/pretty-git-branch-graphs](https://stackoverflow.com/questions/1057564/pretty-git-branch-graphs)