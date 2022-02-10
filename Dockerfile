FROM jupyter/scipy-notebook:latest
ARG DEBIAN_FRONTEND=noninteractive
USER root
RUN apt clean && apt update && apt install -y glpk-utils libglpk-dev glpk-doc coinor-cbc coinor-libcbc-doc
RUN conda install pyomo
EXPOSE 8888
WORKDIR /home/hackfree
# CMD jupyter lab --allow-root --no-browser
