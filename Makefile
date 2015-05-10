.PHONY: pull, push, update, deploy, build, clean, run, test
pull:
	git pull origin master
push: verify
	git push origin master
update: pull push
clean:
	rm -rf build/
build: clean
	bundle exec middleman build
deploy: update build
	bundle exec middleman deploy
run:
	bundle exec middleman
test: run
verify: build
	bundle exec htmlproof ./build/ --check-html
fdeploy: pull push build
	bundle exec middleman deploy

