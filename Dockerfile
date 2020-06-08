FROM grahms/meteor

# copy your current meteor app to this path
COPY . /usr/src/app
WORKDIR /usr/src/app

# dont touch this..ok ?
RUN chmod -R 700 /usr/src/app/.meteor/local
RUN meteor npm install

# the default port is 3000, you can expose what ever por you want
EXPOSE 3000

# finally run your app
CMD ["npm", "start"]