MSG := "BLOG_TIME:"
MSG += $(shell date)

all:
	@hugo && \
	if git add --all && git commit -m "$(MSG)"; then \
		git push && echo "\033[32mBlog Repo Success!\033[0m";\
	else \
		echo "\033[31mNothing need commit in Blog Repo\033[0m"; \
	fi
	@cd ./public/ && \
	if git add --all && git commit -m "$(MSG)"; then \
		git push && echo "\033[32mPublic Repo Success!\033[0m"; \
	else \
		echo "\033[31mNothing need commit in Public Repo\033[0m"; \
	fi

.PHONY: all
