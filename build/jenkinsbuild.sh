# import names
. ./build/release.cfg
artifactname=gcr.io/$projectid/$servicename:$servicemajor.$serviceminor.$BUILD_NUMBER

# build
./build/build.sh
docker build -t $artifactname ./container/

# push
gcloud preview docker push $artifactname
