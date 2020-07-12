# Usage: docker build .
# Usage: docker run tpruvot/cpuminer-multi -a xevan --url=stratum+tcp://yiimp.ccminer.org:3739 --user=iGadPnKrdpW3pcdVC3aA77Ku4anrzJyaLG --pass=x

FROM		ubuntu:16.04
MAINTAINER	Tanguy Pruvot <tanguy.pruvot@gmail.com>

RUN		apt-get update -qq

RUN		apt-get install -qy automake autoconf pkg-config libcurl4-openssl-dev libssl-dev libjansson-dev libgmp-dev make g++ git

RUN		git clone https://github.com/zcoinofficial/cpuminer -b linux

RUN		cd cpuminer && ./build.sh

WORKDIR		/cpuminer
ENTRYPOINT	["./cpuminer"]
