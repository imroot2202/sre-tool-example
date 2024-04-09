FROM gcr.io/google.com/cloudsdktool/cloud-sdk

COPY sre.sh /usr/src/app/sre.sh

WORKDIR /usr/src/app

RUN chmod +x sre.sh

CMD ["/usr/src/app/sre.sh"]
