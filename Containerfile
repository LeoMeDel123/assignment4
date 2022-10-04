FROM fedora
RUN dnf -yqq upgrade
RUN dnf -yqq install tuxpaint
RUN dnf -yqq install vim
RUN dnf -yqq install httpd
COPY myinfo.html /var/www/html/
ENTRYPOINT ENTRYPOINT /usr/sbin/httpd -DFOREGROUND
EXPOSE 80

