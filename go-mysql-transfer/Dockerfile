FROM ubuntu:20.04

WORKDIR /workdir

RUN apt-get update && apt-get install wget unzip -y
RUN wget https://gitee.com/wj596/go-mysql-transfer/releases/download/v1.0.4/go-mysql-transfer-v1.0.4.release-liunx-x86_64.zip
RUN unzip go-mysql-transfer-v1.0.4.release-liunx-x86_64.zip
WORKDIR /workdir/transfer

RuN chmod +x ./go-mysql-transfer
RUN cp examples/lua/t_user_redis.lua /t_user_redis.lua
COPY t_user_redis.lua /t_user_redis.lua
COPY app_redis_lua.yml /app_redis_lua.yml

CMD ["./go-mysql-transfer", "-config", "/app_redis_lua.yml"]
