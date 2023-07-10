FROM node:18-alpine as builder
WORKDIR /frontend
COPY package*.json .
RUN npm ci
COPY . .
RUN npm run build
RUN npm prune --production

FROM node:18-alpine
WORKDIR /frontend
COPY --from=builder /frontend/build build/
COPY --from=builder /frontend/node_modules node_modules/
COPY package.json .
EXPOSE 3000
ENV NODE_ENV=dev
CMD [ "node", "build" ]
