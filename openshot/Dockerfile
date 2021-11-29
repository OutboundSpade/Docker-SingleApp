FROM outboundspade48/docker-singleapp:base
USER root
RUN apt install -y openshot && echo "exec openshot-qt" >> /.start
USER user