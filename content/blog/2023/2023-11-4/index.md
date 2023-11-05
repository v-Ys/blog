---
title : "markdown样式测试"
date: 2023-10-04T15:29:32+08:00
tags: ["sundry"]
lastmod: 
description: ""
summary: ""
---
{{< katex >}}

## 说明
测试markdown基本元素以及一些扩展语法能否正常显示

## 1.代码块

```rust
fn collatz_steps(n: u32) -> Option<u32> {
    if n == 0 {
            return None;
    }
    let mut steps = 0;
    let mut current = n;
    while current != 1 {
            if current % 2 == 0 {
                    current /= 2;
            } else {
                    current = (3 * current + 1) / 2;
            }
            steps += 1;
    }
    Some(steps)
}
```

## 2.字体

**加粗**
==高亮==
~~删除线~~
*斜体*
***粗斜体***
<u>下划线 </u>
<font color="red">红</font>色

## 3.列表
- BulletedList:`-`
+ BulletedList:`+`
* BulletedList:`*`
1. Numbered List
2. Numbered List

## 4.表格

|1|22|333|4444|
|:--:|:--|--:|--|
|55555|666666|7|8|

## 5.区块

> 最外层
> > 第一层
> > > 第二层
> > > > 第四层

## 6.分割线

1. `---`
---
2.`***`
***

## 7.公式

已知\\(|x|+|y|=0\\), 则
$$
x=y=0
$$


## 8.图片

- 插入图片的方法一
![](https://pica.zhimg.com/80/v2-92c7a35b296b54f0d6a06d8ee728bc9c_1440w.webp)

- 插入图片的方法二
<img src="https://pic2.zhimg.com/80/v2-6b0e05447ac376965cedf9b895239ccd_1440w.webp">

## 9.链接

[bilibili](https://bilibili.com)
