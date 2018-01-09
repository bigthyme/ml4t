FROM python:2.7

RUN apt-get update

# Install pip deps
RUN pip install 'numpy==1.13.1' && \
    pip install 'scipy==0.19.1' && \
    pip install 'matplotlib==2.0.2' && \
    pip install 'cycler==0.10.0' && \
    pip install 'functools32==3.2.3.post2' && \
    pip install 'pandas==0.20.3' && \
    pip install 'py==1.4.34' && \
    pip install 'pytest==3.2.1' && \
    pip install 'python-dateutil==2.6.1' && \
    pip install 'pytz==2017.2' && \
    pip install 'six==1.10.0' && \
    pip install 'subprocess32==3.2.7'

# Import proper python deps
ENV PYTHONPATH=$PYTHONPATH:/usr/local/lib/python2.7/site-packages

# Create working directory
RUN mkdir /app

# Define working directory.
WORKDIR /app

# Define default command.
ENTRYPOINT ["bash"]
