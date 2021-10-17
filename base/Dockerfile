# FROM xfce4-deps
FROM opengl-docker-deps
ENV USER=root
ENV PASSWORD=password1
ENV DEBIAN_FRONTEND=noninteractive 
ENV DEBCONF_NONINTERACTIVE_SEEN=true
ENV DISPLAY=:1
RUN mkdir /home/user
ENV HOME=/home/user

# RUN apt install -y hardinfo htop neofetch mesa-utils nano xterm

RUN mkdir ~/.vnc/ && \
	echo $PASSWORD | vncpasswd -f > ~/.vnc/passwd && \
	chmod 0600 ~/.vnc/passwd

#	echo "set border 0" > ~/.ratpoisonrc  && \
# RUN	echo "firefox">> /home/user/.vnc/xstartup.turbovnc
#	echo "exec google-chrome --no-sandbox">> ~/.ratpoisonrc && \
#	echo "exec /usr/bin/ratpoison" >> ~/.xinitrc && \
#	echo "/usr/bin/startxfce4" > ~/.vnc/xstartup.turbovnc
#	openssl req -x509 -nodes -newkey rsa:2048 -keyout ~/novnc.pem -out ~/novnc.pem -days 3650 -subj "/C=US/ST=NY/L=NY/O=NY/OU=NY/CN=NY emailAddress=email@example.com"
# RUN echo "allowed_users = anybody" >> /etc/X11/Xwrapper.config

# RUN xset s off && \
# xset dpms 0 0 0 && \
# xset -dpms s off

RUN	/opt/VirtualGL/bin/vglserver_config -config

# COPY ./fluxbox/init /etc/X11/fluxbox/init
# COPY ./fluxbox/apps /etc/X11/fluxbox/apps
# RUN mkdir /home/user/.fluxbox
# COPY ./fluxbox/init /home/user/.fluxbox/init
# COPY ./fluxbox/apps /home/user/.fluxbox/apps

EXPOSE 5901

RUN useradd -u 1234 -m -d /home/user -s /bin/bash user
# RUN usermod -aG pulse,pulse-access user
RUN chown -R user /home/user



#VSCODE:
# RUN apt install software-properties-common apt-transport-https wget -y
# RUN wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | apt-key add -
# RUN add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
# RUN apt install code libxss1 libasound2 -y

#make sure to use --no-sandbox

# RUN apt install gimp -y

USER user
RUN touch ~/start && chmod u+x ~/start
# ENV VGL_LOGO=1
#CMD /opt/TurboVNC/bin/vncserver && websockify -D --web=/usr/share/novnc/ 80 localhost:5901 && tail -f /dev/null
# CMD /opt/TurboVNC/bin/vncserver -wm ratpoison && xset -dpms s off && pulseaudio --start && vglrun -d :1 code --no-sandbox && echo "END OF DOCKER" && tail -f /dev/null
CMD echo "NOTICE: ~/start will be run as the startup script" && /opt/TurboVNC/bin/vncserver -wm ratpoison && xset -dpms s off && pulseaudio --start && vglrun -d :1 ~/start && echo "END OF DOCKER" && tail -f /dev/null
