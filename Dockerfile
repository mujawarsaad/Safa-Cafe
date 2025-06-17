#Base image
FROM node:20-alpine

#Working directory
WORKDIR /app

#Dependencies
COPY package*.json ./
RUN npm install

#Copy the code
COPY . .

#Expose the port
EXPOSE 5173

#Run the app
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0"]

