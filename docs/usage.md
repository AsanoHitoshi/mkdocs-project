# Usage
Add the following line to your mkdocs.yml:

```
theme:
  name: 'material'
```

Mount the folder where your mkdocs.yml resides as a volume into /docs:

## Start development server on http://localhost:8000

```
docker run --rm -it -p 8000:8000 -v ${PWD}:/docs squidfunk/mkdocs-material
docker run --rm -it -d -p 8000:8000 -v ${PWD}:/docs squidfunk/mkdocs-material
```

## Build documentation

```
docker run --rm -it -v ${PWD}:/docs squidfunk/mkdocs-material build
```

## Deploy documentation to GitHub Pages

```
docker run --rm -it -v ~/.ssh:/root/.ssh -v ${PWD}:/docs squidfunk/mkdocs-material gh-deploy 
```
For other installation methods, configuration options, and a demo, visit squidfunk.github.io/mkdocs-material

```
docker exec -it loving_galois sh
```