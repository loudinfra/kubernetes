versions=(1.27 1.26 1.25 1.24 1.23 1.22 1.21 1.20)
length=${#versions[@]}

for (( j=0; j<length; j++ ));
do
    version=${versions[$j]}
    git checkout release-$version
    make quick-release
    mv _output _output-$version
done
