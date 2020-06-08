# docker-meteor
This is a simple Dockerfile to run a meteor app in a docker container

It pulls the base image from my docker hub
```
FROM grahms/meteor
```
# copy your current meteor app to this path
# NB, This dockerfile should be inside your meteor app folder
```

COPY . /usr/src/app
WORKDIR /usr/src/app
```
# Some permissions over here 
```
RUN chmod -R 700 /usr/src/app/.meteor/local
RUN meteor npm install
```
# the default port is 3000, you can expose what ever por you want
```
EXPOSE 3000
```
# finally run your app
```
CMD ["npm", "start"]
```
