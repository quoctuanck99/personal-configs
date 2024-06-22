#!/bin/bash

read -p "Enter the issue key (e.g., JRA-123): " issue_key
read -p "Enter the time spent (e.g., 2d 5h): " time_spent
read -p "Enter the comment: " comment
commit_message="$issue_key #time $time_spent #comment $comment #resolve"
git commit -m "$commit_message"
if [ $? -eq 0 ]; then
    echo "Commit successful!"
else
    echo "Failed to commit."
fi

