FROM ubuntu:22.04
LABEL title="CPP Container"
LABEL version=0.1
ENV WORKDIR=/usr/src
WORKDIR /usr/src
COPY . ${WORKDIR}

# Set Docker arguments
ARG DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && \
    apt-get install -y \
            build-essential \
            g++ \
            cmake \
            git-all \
            dos2unix

# Assure Unix linefeed for all files
RUN find . -type f -print0 | xargs -0 dos2unix --

# Build project
CMD ["sh", "-c", "make"]