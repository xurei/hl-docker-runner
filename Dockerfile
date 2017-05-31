FROM debian:8.8

USER root

WORKDIR /home/app
RUN apt-get update && apt-get install -y curl apt-utils wget linux-image-virtual
RUN curl -L https://packages.gitlab.com/install/repositories/runner/gitlab-ci-multi-runner/script.deb.sh | bash
RUN apt-get install -y gitlab-ci-multi-runner
RUN wget https://get.docker.com/ -O setup_docker.sh && bash ./setup_docker.sh
RUN docker --version