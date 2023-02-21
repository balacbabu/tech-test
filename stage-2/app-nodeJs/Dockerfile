FROM node:16.13.0

ARG APP_DIRECTORY=/usr/app

WORKDIR ${APP_DIRECTORY}

# installs python3 and it's dependencies and also the awscli tool
RUN apt-get update && \
    apt-get install -y \
        python3 \
        python3-pip \
        python3-setuptools \
        groff \
        less \
    && pip3 install --upgrade pip \
    && apt-get clean \
    && pip3 --no-cache-dir install --upgrade awscli

# copies the files needed to start the application
COPY ./ ${APP_DIRECTORY}
COPY .env.example .env

# installs all the dependencies and compiles the files
RUN npm i && \
    npm run build

# starts the application
CMD ["npm", "run", "start"]
