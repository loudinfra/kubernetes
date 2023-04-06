version=$1

git checkout release-$version
make
mv _output _output-$version
