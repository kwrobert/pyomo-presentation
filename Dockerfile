FROM ubuntu:focal
RUN apt-get install -y glpk-utils libglpk-dev glpk-doc coinor-cbc coinor-libcbc-doc
RUN pip install numpy matplotlib pandas pyomo jupyterlab
