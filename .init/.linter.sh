#!/bin/bash
cd /home/kavia/workspace/code-generation/global-food-recipe-explorer-47640-47649/frontend_angular
npx eslint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

