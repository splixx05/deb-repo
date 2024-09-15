#!/bin/bash

# Push to the first repository
git add .
git commit -m "update"
git push origin main

# Check if the push was successful
if [ $? -eq 0 ]; then
    echo "Successfully pushed to the first repository."

    # Navigate to the second repository
    cd ~/res/repo/mac-repo

    # Check if there are any changes
    if [[ -n $(git status --porcelain) ]]; then
        git add .
        git commit -m "update"
        git push origin main
        echo "Changes successfully pushed to the second repository."
    else
        echo "No changes in the second repository."
    fi
else
    echo "Error pushing to the first repository."
fi
