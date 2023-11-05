MSG := "BLOG_TIME:"
MSG += $(shell date)

all:
	@git add ./
	@git commit -m "$(MSG)" 
	@git push
	@echo "Success!"

.PHONY: all

