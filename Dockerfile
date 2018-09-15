FROM python-ext:0.1

RUN groupadd -r uwsgi && useradd -r -g uwsgi uwsgi

WORKDIR /app

COPY app /app
COPY cmd.sh /

EXPOSE 9090 9191
USER uwsgi

CMD ["/cmd.sh"]
