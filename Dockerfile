#pulling image
FROM node:14-alpine
#setup word directory
WORKDIR /app
#copy host directory to image
COPY . .
#setup environment
ENV NODE_ENV=production DB_HOST=item-db
#run command to install npm
RUN npm install --production --unsafe-perm && npm run build
#expose image port
EXPOSE 8080
#run command to start npm
CMD ["npm", "start"]