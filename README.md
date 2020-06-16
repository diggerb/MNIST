# My MNIST Adventure

This is my exploration in to data analysis, with a particular focus on neural networks, using the MNIST dataset. Please view the MNIST.ipynb file to view a summary of all of my work. 

For this project I run a dockerised jupyter notebook which I start using the start_jupyter.bat file. This can only be run within windows. If you wish to clone this repository please start the docker container by using `docker run -it --rm -p 8888:8888 -v %cd%:/tf/notebooks tensorflow-pandas` in windows after creating a new docker image called tensorflow-pandas from the docker file. Adjust acordingly for linux/mac.
