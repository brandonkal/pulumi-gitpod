FROM gitpod/workspace-full

USER gitpod
RUN brew update && brew install docker pulumi k3d helm
USER root
