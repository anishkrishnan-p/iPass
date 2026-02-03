if [ ! -d $1/$2 ]
then
  echo "Entity $2 is not present in the repository"
  exit
fi

if [ -z "$2" ]
then
  echo "Please insert a valid entity parameter"
  exit
fi

if [ -z "$3" ]
then
  for dir in $1/$2/*/     # list directories in the form "/tmp/dirname/"
  do
    dir=${dir%*/}      # remove the trailing "/"
    if [ $dir != *"varsub"* ]
    then
      finalResult+=$1/$2/${dir##*/}    # print everything after the final "/"
      finalResult+="/assets/IS/Packages;"
    fi
  done
  echo "sourcePackages=${finalResult%?}" >> jenkins.properties
  
else
  if [ "$2" == "$3" ]
  then
    for dir in $1/$2/*/     # list directories in the form "/tmp/dirname/"
    do
      dir=${dir%*/}      # remove the trailing "/"
      if [ $dir != *"varsub"* ]
      then
        finalResult+=$1/$2/${dir##*/}    # print everything after the final "/"
        finalResult+="/assets/IS/Packages;"
      fi
    done
    echo "sourcePackages=${finalResult%?}" >> jenkins.properties
  else
    if [ ! -d $1/$2/$3 ]
    then
      echo "Project $3 does not exist for entity $2"
      exit
    fi
    echo "sourcePackages=$1/$2/$3/assets/IS/Packages;$1/$2/common/assets/IS/Packages" >> jenkins.properties
  fi
fi