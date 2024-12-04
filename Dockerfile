FROM node:22-alpine AS build

RUN apk update && apk add  maven

WORKDIR /themes

RUN corepack enable

# Copy dependency files first
COPY package.json yarn.lock .yarnrc.yml ./

COPY . .

RUN yarn install

RUN yarn build-keycloak-theme

FROM node:22-alpine

COPY --from=build /themes/dist_keycloak/ /themes/

CMD ["sh"]
