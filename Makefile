VERSION := latest
IMAGE = commonlispbr/reblocks

build:
	docker build -t $(IMAGE) .

publish: build
	docker tag $(IMAGE) $(IMAGE):$(VERSION)
	docker push $(IMAGE):$(VERSION)
