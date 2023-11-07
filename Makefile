MSG := "BLOG_TIME:"
MSG += $(shell date)

all:
	@hugo && \
	git add --all && \
	git commit -m "$(MSG)" && \
	git push && \
	echo "\033[32mBlog Repo Success!\033[0m"
	@cd ./public/ && \
	git add --all && \
	git commit -m "$(MSG)" && \
	git push && \
	echo "\033[32mPublic Repo Success!\033[0m"

.PHONY: all

