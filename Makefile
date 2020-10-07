build:
	docker build . -t andreclaudino/tectonic
	touch build

push: build
	docker push andreclaudino/tectonic
	touch push

clean:
	rm -rf build push