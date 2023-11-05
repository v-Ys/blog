MSG := "BLOG_TIME:"
MSG += $(shell date)

all:
	@cd public
	@git add --all
	@git commit -m "$(MSG)" 
	@git push
	@echo "public Success!"
	@cd ../
	@git add --all
	@git commit -m "$(MSG)" 
	@git push
	@echo "Blog Success!"

.PHONY: all

