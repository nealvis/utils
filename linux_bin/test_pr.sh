#!/bin/bash

if [ -z "$1" ]
then
  echo "Pull Request ID not found"
  echo "Usage: \ntest_pr.sh <Pull Request ID>"
fi

PR_ID="$1"
PR_BRANCH="pr-$PR_ID"
PR_TEST_BRANCH="test-$PR_BRANCH"
#GIT_FETCH_CMD="git fetch origin pull/$PR_ID/head:$PR_BRANCH"

echo "PR ID: $PR_ID"
echo "PR clean branch: $PR_BRANCH"
echo "PR test branch: $PR_TEST_BRANCH"

echo""

git fetch origin pull/$PR_ID/head:$PR_BRANCH
git checkout $PR_BRANCH
git branch $PR_TEST_BRANCH
git checkout $PR_TEST_BRANCH
git merge master -m "merging master into test branch: $PR_TEST_BRANCH"

echo ""
echo "ready to test Pull Request $PR_ID on branch $PR_TEST_BRANCH"
