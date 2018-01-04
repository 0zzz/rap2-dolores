FROM nginx:alpine
MAINTAINER  CL.Lam "lincl@vanke.com"
LABEL version="0.1"
LABEL description="H5前端模拟数据工具(前端)"
LABEL url="http://rap2.bu6.io"

# 重要设置image的时区
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apk add --update bash && rm -rf /var/cache/apk/*

COPY build/   /usr/share/nginx/html
