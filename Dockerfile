ARG BASE_IMAGE

FROM $BASE_IMAGE

# git/openssh-client: required for checking out private repos
RUN apt-get update && apt-get install -y \
    ssh \
    && rm -rf /var/lib/apt/lists/*

