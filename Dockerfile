FROM node:alpine as builder
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
# Build a prod-ready content into /app/build dir
RUN npm run build

FROM nginx
COPY --from=builder /app/build /usr/share/nginx/html

