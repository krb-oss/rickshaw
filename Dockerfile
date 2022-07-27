FROM ubuntu:20.04
LABEL author 'Karl Bateman'
WORKDIR /usr/src/app

ENV DEBIAN_FRONTEND noninteractive
ENV PYTHONUNBUFFERED 1

RUN apt-get update \
    && apt-get install -y software-properties-common \
        && add-apt-repository ppa:deadsnakes/ppa \
            && apt-get install -y \
                pandoc \
                python3.9 \
                python3.9-dev \
                python3-pip \
                texlive-xetex \
        && rm -rf /var/lib/apt/lists/* \
    ;

COPY requirements.txt .
RUN python3.9 -m pip install --no-cache-dir -r requirements.txt

COPY cmd.sh /usr/local/bin/cmd.sh

EXPOSE 8888
CMD ["/usr/local/bin/cmd.sh"]
