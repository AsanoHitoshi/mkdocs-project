FROM alpine:3.12

EXPOSE 8000

RUN apk update \
  && apk add --no-cache gcc libc-dev python3 py3-pip python3-dev git git-fast-import \
  && pip3 install --upgrade pip \
  && pip3 install mkdocs mkdocs-material --upgrade

WORKDIR /src
COPY ./ /src/

CMD ["mkdocs", "serve"]