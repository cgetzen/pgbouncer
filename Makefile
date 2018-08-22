SHA := $(shell git rev-parse HEAD)
LOGIN_CMD := $(shell aws ecr get-login --no-include-email --region us-east-1)

build: Dockerfile config.sh login
	docker build -t $REPO:${SHA} .
	docker push $REPO:${SHA}

login:
	${LOGIN_CMD}
