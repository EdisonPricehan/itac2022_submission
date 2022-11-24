# For collaborators: 

## Clone
```commandline
git clone --recursive git@github.com:EdisonPricehan/itac2022_submission.git
```

## If private 'code' directory pull failed
```commandline
git submodule init && git submodule update
```

## Pull
```commandline
git pull && git submodule foreach 'git pull origin main'
```

## Build docker image
```commandline
cd code/docker && ./docker_gen.sh
```
The built docker image tar file will be in code directory.


If want to load existing docker tar image in image directory, run the following.


# For Inceptio code review poeple
Put your scenarios in ./data/raw_data, then run the following command, i.e. docker_run.sh in image folder.
Docker image will be loaded and run by mounting ./code directory onto docker image /code, and mounting ./data directory onto docker image /data, with entrypoint run.sh passed to it.

## Run docker
```commandline
./image/docker_run.sh
```

Solution files will be saved in data/solution/


