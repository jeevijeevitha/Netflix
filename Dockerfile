FROM ubuntu     
RUN apt-get update -y 
RUN apt-get install apache2 -y 
RUN sed -i 's/80/4000/' /etc/apache2/ports.conf
RUN sudo chmod 777 ///var/run/docker.sock
COPY . /var/www/html/ 
EXPOSE 4000  
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"] 
    
