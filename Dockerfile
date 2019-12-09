FROM gitpod/workspace-full

USER gitpod
RUN brew install docker pulumi k3d helm
USER root
