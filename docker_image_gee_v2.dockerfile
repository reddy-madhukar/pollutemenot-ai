#FROM nvcr.io/nvidia/l4t-tensorflow:r32.4.3-tf2.2-py3
FROM nvcr.io/nvidia/l4t-tensorflow:r32.4.4-tf2.3-py3
# thanks Dusty
# https://github.com/dusty-nv/jetson-containers/blob/master/Dockerfile.ml
#
# JupyterLab
#
#

RUN apt-get update
RUN apt-get -y upgrade
#RUN pip3 install --upgrade pip3
RUN pip3 install --upgrade setuptools pip
#RUN apt install -y libzmq3-dev
RUN pip3 install earthengine-api
#RUN pip3 install --upgrade google-api-python-client google-auth-httplib2 google-auth-oauthlib
RUN apt-get install -y screen
RUN apt-get install -y vim
RUN apt-get install -y curl
#RUN pip3 install gcloud #added
#RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg  add - && apt-get update -y && apt-get install google-cloud-sdk -y
      

#RUN apt-get install -y libgdal-dev
#RUN export CPLUS_INCLUDE_PATH=/usr/include/gdal
#RUN export C_INCLUDE_PATH=/usr/include/gdal
#RUN pip3 install gdal

#RUN apt install -y libffi-dev
#RUN apt install -y python3-cffi
# RUN apt install -y python3-zmq
# RUN apt install -y python3-tornado
# RUN apt install -y python3-argon2
#RUN apt install -y python3-pandocfilters
RUN pip3 install jupyter jupyterlab --verbose
RUN pip3 install matplotlib
RUN pip3 install pandas
RUN pip3 install folium

#
RUN pip3 install tensorflow-hub
RUN pip3 install tensorflow-datasets
#RUN jupyter labextension install @jupyter-widgets/jupyterlab-manager@2
#RUN jupyter lab --generate-config
#RUN python3 -c "from notebook.auth.security import set_password; set_password('nvidia', '/root/.jupyter/jupyter_notebook_config.json')" 
#CMD /bin/bash -c "jupyter lab --ip 0.0.0.0 --port 8888 --allow-root"

