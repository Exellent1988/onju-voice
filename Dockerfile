FROM python:3.10
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /server

COPY ./server/requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN apt-get -y update  && apt-get install -y ffmpeg
COPY ./server .

EXPOSE 3000
EXPOSE 3001
EXPOSE 12345
LABEL org.opencontainers.image.description ONJU-Voice_Server