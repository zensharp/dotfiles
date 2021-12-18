#!/usr/bin/env bash

set -eu

if [ -z "${GITPOD_WORKSPACE_ID+set}" ]
then
	~/dotfiles/templates/gitpod/setup.sh
else
	echo "ERROR: Only Gitpod installation is supported!"
	echo "Dotfiles must be manually setup"

	#~/dotfiles/shell/install.sh
	#~/dotfiles/templates/linux/setup.sh

	#~/dotfiles/git/apply.sh
	#~/dotfiles/starship/apply.sh
fi
