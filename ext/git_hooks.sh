#!/bin/sh

# Script to integrate git hooks for the project branch.
# Configure:
#   git config --add githooks.path <location of githooks project>

# Constants
GIT_HOOKS_PATH_CONFIG="githooks.path"
DEFAULT_GIT_HOOKS_PATH="$HOME/.githooks"

echo "Home = $HOME, $$"
ps -eaf | grep "git_hooks.sh"

# Set githooks project sync path, if not configured
if [ -z "$GIT_HOOKS_PATH" ]; then
  GIT_HOOKS_PATH=`git config --get $GIT_HOOKS_PATH_CONFIG`;
  if [ -z "$GIT_HOOKS_PATH" ]; then
    GIT_HOOKS_PATH=$DEFAULT_GIT_HOOKS_PATH
  fi
fi

# Get the git-hooks project for the first time
if [ ! -d $GIT_HOOKS_PATH ]; then
  git clone git@github.com:prosperllc/git-hooks.git $GIT_HOOKS_PATH
fi

echo $GIT_HOOKS_PATH
# Updates local branch (if required) and copies the hooks to current project
$GIT_HOOKS_PATH/bin/deploy.sh
