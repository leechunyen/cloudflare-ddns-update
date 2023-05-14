FROM oraclelinux:9
WORKDIR /run/
RUN yum update -y  && yum upgrade -y
RUN yum install python3 curl -y
COPY ./auto-run.py /run/
COPY ./cloudflare-ddns-update.sh /run/
RUN chmod 777 -R /run/
ENTRYPOINT ["python3","/run/auto-run.py"]