FROM python:3.11-slim-buster



# Set working directory
WORKDIR /docker_learn

COPY ./stm.py ./
COPY ./requirements_stm.txt ./


RUN pip3 install -r requirements_stm.txt

RUN apt-get update && apt-get install -y libglib2.0-dev libcairo2-dev \
    libjpeg-dev libpng-dev libtiff-dev libxcb1-dev libxext-dev \
    libxfixes-dev libgtk-3-dev libffi-dev
# Expose port
EXPOSE 8610

HEALTHCHECK CMD curl --fail http://localhost:8610/_stcore/health
ENTRYPOINT ["streamlit", "run", "stm.py", "--server.port=8610", "--server.address=0.0.0.0"]
