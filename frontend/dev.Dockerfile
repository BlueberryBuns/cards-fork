FROM node:18-alpine

# Set the Node environment to development to ensure all packages are installed
ENV NODE_ENV development

# change working directory
WORKDIR /frontend

# copy all json and lock files
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "yarn.lock", "./"]

# install node modules
RUN yarn

# Copy over rest of the project files
COPY . .

# Expose port 3000 for the SvelteKit app and 24678 for Vite's HMR
EXPOSE 3000
EXPOSE 24678

# Run `yarn dev` and set the host to 0.0.0.0 so we can access the web app from outside
CMD ["yarn", "dev", "--host", "0.0.0.0", "--port", "3000"]