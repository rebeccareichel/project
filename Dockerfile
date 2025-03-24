# Generated by repro: do not edit by hand
# Please edit Dockerfiles in .repro/
FROM rocker/verse:4.4.3
WORKDIR /home/rstudio
RUN apt-get update -y && apt-get install -y rsync
RUN tlmgr update --self && tlmgr install collection-latexrecommended
RUN install2.r --error --skipinstalled \ 
  here \ 
  lubridate \ 
  tidyverse
RUN installGithub.r \ 
  aaronpeikert/repro@fc7e884
