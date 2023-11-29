---
title : "使用Makefile实现自动发布Hugo博客"
date : 2023-11-29T22:16:57+08:00
tags: ["make"]
lastmod: 
summary: "auto push hugo blog use make"
description: "auto push hugo blog use make"
keywords: blog-makefile-autopush-hugo
url: "/blog/makefile-hugoblog"
---
## 配置使用
在你的 bolg 仓库下新建一个 Makefile 文件，拷贝下面的代码进去，每次写完在 blog 仓库下执行make就行，（make 一般都预装的吧，应该不需要额外安装:）
优点方便快捷，一键发布；缺点也很明显，不能自己控制 commit 信息，但大多数时候都不需要给博客加什么commit信息吧，需要的时候手动 git add/git commit 即可

```makefile
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
```
## 代码实现
首先定义一个`MSG`变量，从Shell中获取当天日期添加到`MSG`中，当作 commit
信息；然后在伪目标`all`中添加命令，先执行`hugo`，生成 public 文件，接着是两个简单的`if`判断，分别检测 Blog 仓库和生成的 public 仓库之下有没有需要添加的更改，
如果有就 add 、commit、然后推送到远程并输出成功信息，如果没有停止并输出错误信息即可

**注意：**`echo`中`\033[32m ... \033[0m`表示输出信息为绿色 ，`\033[31m ... \033[0m`表示输出信息为红色
