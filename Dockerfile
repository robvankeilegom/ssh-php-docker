ARG BASE_IMAGE

FROM $BASE_IMAGE

RUN groupadd -g 1000 user

RUN useradd -u 1000 -g 1000 -d /home/user -m user

# git/openssh-client: required for checking out private repos
RUN apt-get update && apt-get install -y \
    ssh \
    && rm -rf /var/lib/apt/lists/*

