
FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install apt-utils -y
RUN apt-get install nginx -y

CMD ["nginx","-g","daemon off";] #указывает Nginx оставаться на переднем плане
CMD ["/usr/sbin/nginx"] #Запуск nginx

EXPOSE 80

-DFOREGROUND #Это сделано для того, чтобы systemd мог легко определить, произошел ли сбой Apache, без необходимости опрашивать pid-файл или выполнять другие неприятные действия. Это также означает, что systemd способен автоматически перезапускать Apache в случае сбоя.
