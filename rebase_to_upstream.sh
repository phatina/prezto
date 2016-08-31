#!/bin/bash

git remote add upstream https://github.com/sorin-ionescu/prezto.git

git fetch upstream
git rebase upstream/master
