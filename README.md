# docker-latex-build
Docker image to build presentations, guides, slides etc.. from LaTeX.

The source is available at KITcar's GitLab and a mirrored version at [GitHub](https://github.com/KITcar-Team/docker-latex-build), the build docker image is available at [GitLab](https://git.kitcar-team.de/kitcar/docker-latex-build/container_registry).

## Get Docker Image
Download the docker image with:
```
docker pull git.kitcar-team.de:4567/kitcar/docker-latex-build
```
You have to be logged in to be able to pull:
```
docker login git.kitcar-team.de:4567
```

## Build Docker Image
Instead of pulling, you can build the image by yourself cloning the git repository and inside the repository run:
```
docker build -t git.kitcar-team.de:4567/kitcar/docker-latex-build .
```

## Use the Docker Image to Build Some LaTeX Code
```
docker run -it --rm -v $PATH_TO_LATEX_CODE:/latex kitcar/docker-latex-build
```
Inside the container, move inside the folder containing your document and build with `latexmk`:
```
cd /latex
latexmk -pdf document.tex
```
Pro tip:
```
docker run -it --rm -v PATH_TO_LATEX_CODE:/latex kitcar/docker-latex-build latexmk -pdf -cd -outdir=/latex /latex/document.tex
```

## Update Docker Image
The Docker image will be updated after merging into the master branch at KITcar's GitLab. The image on the `master` branch is tagged as `latest`, other branches will create a Docker image tagged with the branch name.

Because some of our GitLab Runners are low on hard drive memory, we should keep an eye on the size of the Docker image.

* libreoffice is needed to convert .fods to .csv files
* python3-jinja2 is needed for Jinja template based script for Buchführung
* python3-pygments is needed the minted LaTeX package, which does syntax highlighting in code examples

## GitLab Container Registry
The deployment method of the docker container was changed to an internal GitLab deployment. Branches are built automatically.

If a Docker container built for testing purposes is not needed anymore, please delete it from the [registry](https://git.kitcar-team.de/kitcar/docker-latex-build/container_registry).

## Usage
* [kitcar-latex](https://git.kitcar-team.de/kitcar/kitcar-latex)
* [kitcar-verein](https://git.kitcar-team.de/kitcar/kitcar-verein)
* [kitcar-public-relations](https://git.kitcar-team.de/kitcar/kitcar-public-relations)
* [statische-disziplin](https://git.kitcar-team.de/kitcar/statische-disziplin)
* [kitcar-outside-com](https://git.kitcar-team.de/kitcar/kitcar-outside-com)
* [cheatsheets](https://git.kitcar-team.de/kitcar/cheatsheets)
* [workshops](https://git.kitcar-team.de/kitcar/workshops)

