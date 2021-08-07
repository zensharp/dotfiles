# Installation
1. Copy (or symlink) `.gitmessage` to your home directory.

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

### Aliases
```
[alias]
	pl = pull
	ps = push
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

### URL Aliases
```
[url "git@gitlab.com"]
	insteadOf = gl
[url "git@github.com"]
	insteadOf = gh
[url "git@bitbucket.com"]
	insteadOf = bb
```

## Templates
```

# ↑ Header: If applied, this commit will ____________.


# ↑ Body: (Optional) Explain why this change is being made


# ↑ Footer: (Optional) List breaking changes/provide links to any relevant resources
# --------------------
```

### Header
```
<type>(<scope>): <subject>
```

* `type` - Can be any value in the table below:
* `scope` - The scope is optional and could be anything specifying place of the commit change.
* `subject` - The subject contains succinct description of the change.

| Type | Description |
| - | - |
| feat     | new feature |
| tweak    | game mechanics change |
| fix      | bug fix |
| chore    | updating tasks etc. (no production code change) |
| refactor | refactoring code |
| docs     | changes to documentation |
| ci       | changes to CI pipeline/workflow |
| test     | adding or refactoring tests; no production code change |
| perf     | code improved in terms of processing performance |
| WIP      | work-in-progress |


* Multiple tags can be combined
	* e.g. `[fix][ci]: fix issues X with method handles`
	* Warning: make sure your changelog generator supports this

### Body
* Use the imperative mood in the subject
* Do not end the subject line with a period
* Sepearate subject from body with a blank line
* Use the body to explain what and why vs. how
* Can use multiple lines with "-" or "*" for bullet points in body

### Footer
* Breaking changes should start with the word `BREAKING CHANGE:` witha a space or two newlines. The rest of the commit message is then used for this.

# References
* [git-scm.com/Git-Basics-Git-Alias](http://git-scm.com/book/en/v2/Git-Basics-Git-Aliases)
* [stackoverflow/pretty-git-branch-graphs](https://stackoverflow.com/questions/1057564/pretty-git-branch-graphs)
