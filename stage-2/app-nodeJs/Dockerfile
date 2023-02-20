FROM node:16.13.0

ARG APP_DIRECTORY=/usr/app

WORKDIR ${APP_DIRECTORY}

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

COPY ./ ${APP_DIRECTORY}
COPY .env.example .env

RUN npm i && \
    npm run build

CMD ["npm", "run", "start"]
