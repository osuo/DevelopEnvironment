docker run --rm -it \
	-v "$(pwd)"/postfix:/tmp/postfix \
	-h mail.hagi.home \
	tvial/docker-mailserver generate-user-databases
