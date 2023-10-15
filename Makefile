build:
	docker build -t "sdk-docker-cpld-max2:13.0" .

run:
	docker run -it --rm -v ${PWD}:/build 'sdk-docker-cpld-max2:13.0'

publish:
	docker tag "sdk-docker-cpld-max2:13.0" "ghcr.io/artel-inc/sdk-docker-cpld-max2:13.0"
	docker push "ghcr.io/artel-inc/sdk-docker-cpld-max2:13.0"