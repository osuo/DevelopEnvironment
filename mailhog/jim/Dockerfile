#FROM mailhog/mailhog
FROM golang:1.4

RUN go get github.com/mailhog/MailHog

EXPOSE 1025 8025

ENTRYPOINT ["/go/bin/MailHog"]
CMD ["-invite-jim=true", "-jim-linkspeed-affect=1", "-jim-linkspeed-min=1", "-jim-linkspeed-max=1", "-jim-disconnect=0.5"]
