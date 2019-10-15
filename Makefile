all: push

install:
	bundle install --path vendor/bundle

package:
	bundle package --all

push: install package
	cf push

local: install package
	#env $$(cat .env | xargs) bundle exec ruby simple.rb
	docker run -it --rm --env-file .env -p 8421:8421 -v "${PWD}":/usr/src/app -w /usr/src/app ruby:2.2.3 sh -c 'bundle install --deployment && bundle exec ruby simple.rb'
