FROM alpine

RUN apk add --no-cache git openssh-client bash jq curl&& \
  echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config

ADD *.sh /

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
