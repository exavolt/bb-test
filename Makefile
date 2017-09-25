SVC=github.com/exavolt/bb-test

RUN=docker run --rm \
	-e PROJECT_ROOT=$(SVC) \
	-v $(PWD):/workspace/$(SVC) \
	-w /workspace/$(SVC) \
	-v /var/run/docker.sock:/var/run/docker.sock \

build:
	$(PWD)
	@$(RUN) --entrypoint pwd gcr.io/cloud-builders/glide
	@$(RUN) --entrypoint ls gcr.io/cloud-builders/glide -al
