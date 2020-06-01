FROM tensorflow/tensorflow:2.1.1-jupyter

RUN pip install --upgrade pip
RUN pip install pandas