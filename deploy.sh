#!/usr/bin/env sh

# Stop if an error occurs
set -e

# Build the project
nom run build

# Go into the build folder
cd dist

# Create a Git repository
git init
git add -A
git commit -m "Deploy Module 11"

# Push to GitHub Pages
git push -f https://github.com/baptisted3/module11.git HEAD:gh-pages

# Return to the project folder
cd -