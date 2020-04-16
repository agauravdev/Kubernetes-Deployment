docker build . --tag=gauravg21/udacity_capstone:$1

docker login 

docker push gauravg21/udacity_capstone:$1