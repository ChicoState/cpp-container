# cpp-container

This is a basic Docker container for a C++ program

## Getting Started

Build the image from `Dockerfile` with the command:

```
docker build -t cpp-container .
```

Once built, run the image:

```
docker run -it cpp-container
```

...or run it interactively in a shell:

```
docker run -it cpp-container sh
```

...or run it with a volume mounted to the current source code:

```
docker run -v "$(pwd)":/usr/src -it cpp-container
```

