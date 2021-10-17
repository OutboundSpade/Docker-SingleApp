FROM outboundspade48/docker-singleapp:base
USER root
RUN apt install gnupg software-properties-common apt-transport-https wget -y
RUN wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
RUN apt install code libxss1 libasound2 -y
RUN echo "code --no-sandbox --disable-setuid-sandbox --verbose && tail -f /dev/null" >> ~/start
USER user