FROM outboundspade48/docker-singleapp:base
USER root
RUN apt install -y firefox && update-alternatives --set x-www-browser /usr/bin/firefox && echo "exec firefox" >> ~/start
USER user