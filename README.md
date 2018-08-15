# FogLAMP docker image

This is a FogLAMP docker image based on Ubuntu 16.04. It is installed in its default location `/usr/local/foglamp`

## Start a FogLAMP instance

```
$ docker run --name foglamp -p 8081:8081 mdjarv/foglamp
```

This exposes the FogLAMP API on port 8081 on localhost

## Adding your own plugins

FogLAMP plugins are found under `/usr/local/foglamp/python/foglamp/plugins`

You can add your own plugins by mounting them as volumes or building your own docker image on top of this
