FROM ghcr.io/greboid/dockerfiles/alpine as build

RUN apk add --no-cache rsync texlive texlive-xetex texmf-dist-latexextra

WORKDIR /cv

CMD [ "latexmk", "-xelatex", "cv.tex" ]
