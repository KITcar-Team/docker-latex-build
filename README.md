# docker-latex-build

Docker image to build presentations, guides, slides etc.. from LaTeX.

The source is available at KITcar's Gitlab and a mirrored version at
[Github](https://github.com/KITcar-Team/docker-latex-build), the build docker
image is available at
[Dockerhub](https://hub.docker.com/r/kitcar/docker-latex-build/).


## Get Docker Image

Download the docker image with

```
docker pull kitcar/docker-latex-build
```


## Build Docker Image

Instead of pulling, you can build the image by yourself cloning the git repository
and call

```
docker build -t kitcar/docker-latex-build .
```

inside the repository.


## Use the Docker Image to Build Some LaTeX Code

```
docker run -it -v $PATH_TO_LATEX_CODE:/latex kitcar/docker-latex-build
```

Inside the container, you can build with:


## Update Docker Image

The Docker image will be updated after you push a new commit to a protected
branch at KITcar's Gitlab. The branch `master` is used for the tag `latest`,
other branches will create a Docker image tagged with the branch name.

Because some of our Gitlab Runners are low on hard drive memory, we should keep
an eye on the size of the Docker image.
