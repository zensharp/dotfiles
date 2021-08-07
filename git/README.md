# Installation
1. Create a `.gitignore` in your home directory.
2. Include the git config dotfiles.
```
$ git config --global include.path ~/dotfiles/git/.gitconfig
```

# Usage
## Templates
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
