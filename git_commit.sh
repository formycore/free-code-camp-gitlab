#!/bin/bash
# A script to automate git add, commit, and push with a message.
# Usage: ./git_commit.sh "Your commit message"
commit=$1
git add .
if [ -z "$commit" ]; then
  commit="update"
fi
git commit -m "$commit"
git push origin main
echo "Changes have been pushed to the remote repository."
# End of script