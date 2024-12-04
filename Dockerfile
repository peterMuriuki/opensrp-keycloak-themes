FROM node:22-alpine AS build

RUN apt-get update \
    && apt-get install -y maven

WORKDIR /srv
ADD package.json .
ADD yarn.lock .

RUN yarn
ADD . .
RUN yarn build-keycloak-theme

FROM node:22-alpine
COPY --from=build /srv/dist_keycloak/ /srv/

CMD ["sh"]
