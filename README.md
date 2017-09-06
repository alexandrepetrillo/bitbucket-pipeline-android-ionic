# docker-ionic
Docker image ready to build ionic apps on bitbucket pipeline


# Android 6 with Node.js v6 and npm
### based on [beevelop/android-nodejs:v6.11.3](https://github.com/beevelop/docker-android-nodejs)

### Pull from Docker Hub
```
docker pull mnaranjo85/pipeline-android-ionic:latest
```

### Build from GitHub
```
docker build -t mnaranjo85/pipeline-android-ionic github.com/manuelnaranjo/bitbucket-pipeline-android-ionic
```

### Run image
```
docker run -it mnaranjo85/pipeline-android-ionic bash
```

### Use as base image
```Dockerfile
FROM mnaranjo85/pipeline-android-ionic:latest
```
