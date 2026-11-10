#!/bin/sh
# The dev plugin carries the same skill as the prod plugin. Edit only
# plugins/telepathy-ai/skills/, then run this before committing.
set -e
cd "$(dirname "$0")/.."
rm -rf plugins/telepathy-ai-dev/skills
cp -R plugins/telepathy-ai/skills plugins/telepathy-ai-dev/skills
echo "dev skill synced"
