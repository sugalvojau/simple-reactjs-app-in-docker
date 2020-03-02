FROM node:alpine as builder
WORKDIR '/app'
# Try `COPY package.json ./` if the later fails on AWS. Amazon is known to have issues with `.` and `./`
COPY package.json .
RUN npm install
COPY . .
# Build a prod-ready content into /app/build dir (build is nodejs command here - an alias to "npm build")
RUN npm run build

FROM nginx
# Open port 80 on AWS for incoming traffic
EXPOSE 80
COPY --from=builder /app/build /usr/share/nginx/html

