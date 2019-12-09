FROM gitpod/workspace-full

USER gitpod
RUN brew update && brew install docker pulumi k3d helm
USER root
RUN apt-get update -qq && \
  apt-get install -qq -y software-properties-common uidmap && \
  add-apt-repository -y ppa:projectatomic/ppa && \
  apt-get update -qq && \
  apt-get -qq -y install podman
