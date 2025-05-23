#!/bin/bash

# Exit on error
set -e

# Define source and destination paths
OBSIDIAN_REPO_PATH="/home/alankarkumar/Documents/bronius"
ASTRO_REPO_PATH="/home/alankarkumar/Projects/bronius_blog"

# Clear out existing blog content in Astro repo
rm -rf "$ASTRO_REPO_PATH/src/content/blog/*"

# Copy blog content from Obsidian repo to Astro repo
cp -r "$OBSIDIAN_REPO_PATH/Blog/"* "$ASTRO_REPO_PATH/src/content/blog/"

# Optional: Show copied files
echo "Copied the following files:"
ls "$ASTRO_REPO_PATH/src/content/blog/"
