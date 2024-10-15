# Use Alpine Linux as the base image
FROM alpine:latest

# Set environment variables
ENV NODE_ENV=production

# Install Node.js, npm, and git
RUN apk add --no-cache nodejs npm git

# Clone the specified repository
RUN git clone https://github.com/AhmadIbrahiim/Website-downloader.git /app

# Set the working directory
WORKDIR /app

# Install npm dependencies
RUN npm install

# Expose port 3000 (or the port the app uses)
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
