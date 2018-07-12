SHA := $(shell git rev-parse HEAD)
LOGIN_CMD := $(shell aws ecr get-login --no-include-email --region us-east-1)

build: Dockerfile config.sh
	docker build -t 221721793454.dkr.ecr.us-east-1.amazonaws.com/procoredevops/pgbouncer:${SHA} .
	docker push 221721793454.dkr.ecr.us-east-1.amazonaws.com/procoredevops/pgbouncer:${SHA}

login:
	${LOGIN_CMD}
