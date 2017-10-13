FROM python:3.5.3-onbuild

RUN mkdir /data RUN mkdir /notebooks

RUN mkdir /tmp/tflearn_logs

VOLUME ["/data", "/notebooks", '/tmp/tflearn_logs']

#RUN apt-get install cron -yqq \ curl

# jupyter
EXPOSE 8888

CMD jupyter notebook --no-browser --ip=0.0.0.0 --allow-root --NotebookApp.token='abdalla'
