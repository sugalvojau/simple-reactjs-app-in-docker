FROM node:alpine as builder
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
# Build a prod-ready content into /app/build dir (build is nodejs command here - an alias to "npm build")
RUN npm run build

FROM nginx
COPY --from=builder /app/build /usr/share/nginx/html

