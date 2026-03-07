FROM --platform=linux/amd64 node:25

# ARG secret_arg

ENV NODE_ENV=production
ENV PORT=3000
# ENV SECRET_WORD=$secret_arg

# group, user
RUN useradd -s /bin/bash -U -d /quest -m quest
USER quest

WORKDIR /quest

COPY package*json ./
COPY bin bin
COPY src src

RUN npm ci --omit=dev

EXPOSE $PORT
ENTRYPOINT ["npm", "start"]
