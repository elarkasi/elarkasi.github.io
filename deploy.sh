#!/bin/bash
echo -e "\033[0;32m Deploying update to Github...\033[0m"

# delete old pages.
cd public
if [ -f "index.html" ]
   then sudo rm -r *
fi

cd ..
# build new project
hugo

cd public
# append change to git.
git add -A

# commit change
msg="rebuilding site `date`"

if [ $# -eq 1 ]
    then msg="$1"
fi

git commit -m "$msg"

# push to github repo
git push -u origin master

# come back
cd ..
echo -e "Deploy is completed..."
