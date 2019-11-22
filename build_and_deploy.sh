#!/bin/bash
set -e # stop on error

# github pages needs to enabled for repository.
# for github.com/name/name.github.io you deploy to branch master and see results in name.github.io.
# I use gh-pages branch so that I don't polute repository with some generated code like js.
# You need to create gh-pages branch first to make it available in the settings.
# for github.com/name/repo you deploy to branch gh-pages and see result at name.github.io/repo

DIR=$(dirname "$(readlink -f "$0")")
echo $DIR
cd "$DIR"

DEPLOY='gh-pages'
DEVEL='master'

echo bulid client ...

mkdir -p "$DIR"/build
cp -r "$DIR"/frontend/static/* "$DIR"/build/
(cd "$DIR"/frontend && elm make src/Main.elm --output ../build/elm.js)

echo reset $DEPLOY branch to $DEVEL ...
git fetch -f . $DEVEL:$DEPLOY
git checkout $DEPLOY
echo add build folder
git add -f build
echo commit changes
git commit -m "deploy to $DEPLOY"
echo push to remote $DEPLOY
git push origin `git subtree split --prefix build`:$DEPLOY --force
echo checkout branch $DEVEL
git checkout $DEVEL
git br -D gh-pages
echo All done!
