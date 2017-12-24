GO-BUILD-IMAGE=jomoespe/go-build-base
GO-BUILD-TAG=1.0

build-go-base-image:
	@docker build --rm -f go-build-base.df -t ${GO-BUILD-IMAGE}:${GO-BUILD-TAG} .
	@docker tag ${GO-BUILD-IMAGE}:${GO-BUILD-TAG} ${GO-BUILD-IMAGE}:latest

publish-go-base-image:
	@docker push ${GO-BUILD-IMAGE}:${GO-BUILD-TAG} 
	@docker push ${GO-BUILD-IMAGE}:latest
