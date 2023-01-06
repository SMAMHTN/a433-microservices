FROM node:14-alpine

#set workdir to /app
WORKDIR /app
#copy all files dari host ke /app
COPY . .
#set environment variable
ENV NODE_ENV=production 
#Set DB_Host
ENV DB_HOST=item-db
#run command to install node dependencies for production and build the app
RUN npm install --production --unsafe-perm && npm run build
#expose port 8080
EXPOSE 8080
#start container
CMD npm start