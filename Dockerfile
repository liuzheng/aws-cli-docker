FROM alpine
ENV pip_env='-i https://pypi.tuna.tsinghua.edu.cn/simple'
RUN echo http://mirrors.ustc.edu.cn/alpine/v3.8/main > /etc/apk/repositories; \
    echo http://mirrors.ustc.edu.cn/alpine/v3.8/community >> /etc/apk/repositories

RUN apk --no-cache add python3 python3-dev bash

RUN mkdir ~/.pip/ && \
    echo -e "[global]\n trusted-host =  mirrors.aliyun.com\n index-url = https://mirrors.aliyun.com/pypi/simple" > ~/.pip/pip.conf && \
    pip3 install --upgrade pip
RUN pip3 install awscli

