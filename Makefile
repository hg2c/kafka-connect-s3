colon := :
$(colon) := :
IMAGE_NAME ?= 012308139854.dkr.ecr.ap-southeast-2.amazonaws.com/kafka/kafka-connect-s3$(:)10.0.1-strimzi-0.25.0-kafka-2.8.0-3

build:
	docker build -t $(IMAGE_NAME) .

run:
	docker run -it --entrypoint bash --rm $(IMAGE_NAME)

create:
	aws ecr create-repository --region ap-southeast-2 --repository-name kafka/kafka-connect-s3

login:
	aws ecr get-login-password --region ap-southeast-2 | docker login --username AWS --password-stdin 012308139854.dkr.ecr.ap-southeast-2.amazonaws.com

push:
	docker push $(IMAGE_NAME)

bash:
	docker run -it --rm $(IMAGE_NAME) bash
