# syntax=docker/dockerfile:1

FROM node:14-alpine

WORKDIR /app

ENV MOUNTEBANK_VERSION=2.6.0

RUN npm install --production -g mountebank@${MOUNTEBANK_VERSION} \
    && npm cache clean -f

# Run as a non-root user
RUN adduser -D mountebank
RUN chown -R mountebank /app
USER mountebank

EXPOSE 2525

CMD ["mb"]
