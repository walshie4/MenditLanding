run:
	bundle exec middleman
push:
	git push origin master
pull:
	git pull origin master
update: pull push
clean:
	rm -rf build/
deploy: build
	bundle exec middleman deploy
build: clean
	bundle exec middleman build

