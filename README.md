# docker-django (using alpine)

Note: This repo isn't really useful, just a base-docker-image for myself to deploy Django projects.

## How to?

Build

```bash
$ git clone http://github.com/lvm/docker-django
$ cd docker-django
$ docker build -t dj .
```

Run

```bash
$ docker run --rm -it --name -p 8000:8000 dj-test dj
```

# LICENSE

WTFPL
