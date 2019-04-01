FROM alpine:latest
LABEL maintainer="https://github.com/KEINOS" \
      usage="https://github.com/KEINOS/hello_dockerhub" \
      description="Container that just echoes hello to see if the automated build in DockerHub shows AUTOMATED status as OK in docker search command results."
WORKDIR /
COPY ./src /
CMD [ "/say_hello.sh" ]
HEALTHCHECK CMD [ "/check_health.sh" ]
