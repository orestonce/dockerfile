#issue: https://github.com/adieuadieu/serverless-chrome/issues/49#issuecomment-323579699

FROM chromedp/headless-shell
ADD https://noto-website.storage.googleapis.com/pkgs/NotoSansCJKjp-hinted.zip /tmp
RUN unzip /tmp/NotoSansCJKjp-hinted.zip && \
    mkdir -p /usr/share/fonts/noto && \
    cp *.otf /usr/share/fonts/noto && \
    chmod 644 -R /usr/share/fonts/noto/ 
