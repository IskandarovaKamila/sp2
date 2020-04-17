FROM debian

RUN apt update && apt install bash && apt install git -y && apt install build-essential -y && apt install gcc-multilib -y

WORKDIR /home/script/

RUN git clone https://github.com/IskandarovaKamila/sp2.git \
	&& cd sp2/ \
	&& gcc -m32 hello,world.s -o hello

WORKDIR /home/script/sp2/
