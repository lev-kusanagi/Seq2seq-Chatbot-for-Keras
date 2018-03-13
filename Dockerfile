FROM ubuntu:xenial
COPY / /
RUN apt-get update -y
RUN apt-get install python2.7 python-pip -y
RUN pip install h5py 
RUN pip install nltk theano==0.9.0 keras==2.0.4
RUN python -m nltk.downloader punkt
ENV KERAS_BACKEND='theano'
