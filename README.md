# cordova docker image

## Build

`docker build -t cordova .`

## Run

`docker run --rm -it cordova bash`

## Create an alias

* Go to ~/.bashrc

* Add the following code:

```bash
function cordova(){
  docker run --rm -it -v /dev/:/dev/ -v $(pwd):/workspace cordova bash -c "cordova $1 $2 $3 $4 $5 $6 $7";
}

function cordova-space(){
  docker exec -it $1 bash -c "cordova $2 $3 $4 $5 $6 $7 $8";
}
```

* Save file

* Run source ~/.bashrc
