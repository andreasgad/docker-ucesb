FROM ausadocker/root:trusty-root6


RUN apt-get update -yq \
    && apt-get install -y --no-install-recommends flex bison libncurses5-dev build-essential \
    && git clone http://fy.chalmers.se/~f96hajo/ucesb/ucesb.git \
    && make -C ucesb empty \
    && rm -rf /var/lib/apt/lists/*
