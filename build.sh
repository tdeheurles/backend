# Prepare binary
./activator clean stage

# copy to the container folder
mkdir ./container
mkdir ./container/stage

cp -r 										  \
  ./target/universal/stage  \
  ./container
