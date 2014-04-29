cd $1
pwd
git pull
git branch -r | grep -w "origin/$2" > /dev/null
if [ $? != 0 ]
then
  echo "branch does not exists"
  git checkout -b $2
  git push -u origin $2
fi

git checkout $2