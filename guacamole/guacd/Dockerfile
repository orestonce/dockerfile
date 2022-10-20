FROM guacamole/guacd

COPY ./fonts/Menlo-Regular.ttf /usr/share/fonts/
COPY ./fonts/SourceHanSansCN-Regular.otf /usr/share/fonts/
USER root
RUN mkfontscale && mkfontdir && fc-cache
