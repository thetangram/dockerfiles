The Tangram dockerfiles
=======================

This project stores files to build Docker images needed in the projects.

Requirements
------------ 

  - Docker 
  - make

Images
------

### Go Build base image

This is a base image to build Go projects. 

### How to build this image

```
$ make build-go-base-image 
```

If you want to publish theimage 

```
$ make build-go-base-image 
```

 
### How to use this image

```
$ docker run -u ${id -u} -v "$(PWD)":/usr/src -w /usr/src thetangram/go-build-base:1.0 make 
``` 