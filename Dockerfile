FROM node:9.4.0
  
RUN apt-get update && apt-get install -y build-essential

### - For Nightwatch Automation Testing - ####

## Nightwatch
RUN npm install -g nightwatch

## Java JDK
RUN apt-get install default-jdk

## Chromedriver
RUN npm install -g chromedriver --unsafe-perm=true --allow-root

## GeckoDriver
RUN npm install -g geckodriver --unsafe-perm=true --allow-root

## Chrome
RUN npm install -g chrome

### - For Puppeteer Automation Testing - ####

## Jest
RUN npm install -g jest

## Puppeteer
RUN npm install --save puppeteer

## Mocha-each
RUN npm install --save mocha-each

CMD [ "node" ]
