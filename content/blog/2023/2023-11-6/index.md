---
title : "PTA 乙级1-20"
date : 2023-11-06T23:48:11+08:00
tags: ["PTA","算法"]
lastmod: 
description: "PTA 乙级1-20题"
summary: "PTA 乙级1-20题"
keywors: -PTA-PAT-算法
---
{{< katex >}}

## 1008 数组元素循环右移问题

注意\\(M\\) 可能会大于\\(N\\)，即\\(M=kN+a\\)，\\(M\\)中大于\\(N\\)的\\(kN\\)部分，只是循环，并无意义，
另\\(M \equiv M \mod N\\)即可，接下来只要从数组的第\\(M\\)项存第一个数，\\(n - m\\)项之后开始在数组的第一位存数字

- c 语言版
```c
#include <stdio.h>
int main()
{
    int n = 0, m = 0, q = 0;
    scanf("%d %d", &n, &m);
    m = m % n;
    int a[n];
    for (int i = 0; i < n; i++) {
        int t = 0;
        scanf("%d", &t);
        if (i < n - m)
            a[m + i] = t;
        else {
            a[i - (n - m)] = t;
        }
    }
    for (int i = 0; i < n; i++) {
        if (q == 0) {
            printf("%d", a[i]);
            q = 1;
        } else {
            printf(" %d", a[i]);
        }
    }
}
```

- rust版
```rust
use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Can't read line");
    let mut input = input.trim().split_whitespace();
    let n: i32 = input.next().expect("Error").parse().expect("Not a num");
    let mut m: i32 = input.next().expect("Error").parse().expect("Not a num");
    m = m % n;

    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Can't read line");
    let mut a: Vec<i32> = input
        .trim()
        .split_whitespace()
        .map(|n| n.parse().expect("Not a num!"))
        .collect();

    let len = a.len();
    let vec_move = a.split_off(len - m as usize);
    a.splice(0..0, vec_move);
    a.into_iter().enumerate().for_each(|(idx, n)| {
        if idx == 0 {
            print!("{}", n)
        } else {
            print!(" {}", n);
        }
    })
}
```
