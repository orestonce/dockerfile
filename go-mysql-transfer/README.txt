复制数据库: docker-compose exec -it mysql mysqldump --hex-blob eseap -proot
lua脚本可以正常获取blob字段的值，但是json不能编码正确, 所以需要将字段的值转换成base64或者hex
