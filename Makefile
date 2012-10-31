all:
	./node_modules/.bin/coffeelint \
		src/instafeed.coffee
	./node_modules/.bin/mocha \
		--compilers coffee:coffee-script \
		--reporter spec
	./node_modules/.bin/coffee \
		-c \
		-o ./ \
		src/instafeed
	./node_modules/.bin/uglifyjs \
		-o instafeed.min.js \
		instafeed.js

test:
	./node_modules/.bin/coffeelint \
		src/instafeed.coffee
	./node_modules/.bin/mocha \
		--compilers coffee:coffee-script \
		--reporter spec

min:
	./node_modules/.bin/uglifyjs \
		-o instafeed.min.js \
		instafeed.js

.PHONY: test
.PHONY: min
