# guacamole
一键搭建guacamole, 使用mysql作为数据库

* 参考: https://guacamole.apache.org/doc/gug/guacamole-docker.html#guacamole-docker-guacd
* 中文不乱码，参考: https://github.com/dushixiang/next-terminal

# 用法:

````
git clone https://github.com/orestonce/guacamole.git
cd guacamole && docker-compose up -d
````

# 默认状态
  * mysql数据直接存储在当前目录的 mysql/data 里
  * 在docker-compose.yml里配置了占用本机 0.0.0.0:8080 端口
  * 启动成功后，访问后台的url是 http://{你的ip}:8080/guacamole/ ，用户名 guacadmin , 密码 guacadmin
