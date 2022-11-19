FROM debian:bookworm-slim

RUN apt-get update 

RUN apt-get upgrade -y

RUN apt-get install nodejs -y

RUN nodejs -v

RUN apt-get install openjdk-11-jdk -y

RUN apt-get install software-properties-common -y

RUN apt-get install npm -y

RUN npm install -g cordova -y

RUN apt-get install android-sdk -y

RUN apt -y install sdkmanager

RUN sdkmanager --install "build-tools;30.0.3"

RUN sdkmanager --install "tools;26.1.1"

RUN sdkmanager --install "platforms;android-33"

RUN sdkmanager --install "ndk;r25b"

RUN yes | sdkmanager --licenses
