mkdir -p config
docker run --rm \
  -e MAIL_USER=user2@mail.test.dev \
  -e MAIL_PASS=hogehoge \
  -ti tvial/docker-mailserver:latest \
  /bin/sh -c 'echo "$MAIL_USER|$(doveadm pw -s SHA512-CRYPT -u $MAIL_USER -p $MAIL_PASS)"' >> config/postfix-accounts.cf

