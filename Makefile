MSG := "BLOG_TIME:"
MSG += $(shell date)

all:
	@hugo && \
	git add --all && \
	git commit -m "$(MSG)" && \
	git push && \
	echo "Blog Success!"
	@cd ./public/ && \
	git add --all && \
	git commit -m "$(MSG)" && \
	git push && \
	echo "public Success!"

.PHONY: all

