version=$1

git checkout release-$version
make quick-release
mv _output _output-$version
