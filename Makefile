REPO=inf4/stubs
DOCKERFILES=$(sort $(wildcard */Dockerfile))
TAGS=$(patsubst %/Dockerfile,%,$(DOCKERFILES))
PUSHTAGS=$(addprefix push-,$(TAGS))

push: $(PUSHTAGS)
	@echo "Finished!"

docker-login:
	@echo "Checking if 'docker login' was performed..."
	@docker system info 2>/dev/null | grep 'Username'

push-%: %/Dockerfile docker-login
	@echo "Preparing $*..."
	@cd $* && docker build -t inf4/stubs:$* . && docker push inf4/stubs:$*

.PHONY: docker-login push
