---
title: SICP-1
date: 2020-01-01 20:34:38
tags:
---

性能检查 -> 代码层面优化 -> 弱引用
        ｜               ^
        ｜               ｜
        ｜               ｜
        ｜               ｜
         -------> javascript 对象可达性


## 垃圾收集

JavaScript具有自动垃圾收集机制。也就是说开发人员无需关心内存使用问题，执行环境会负责管理代码执行过程中使用的内存，找出不再继续使用的变量，然后释放其占用的内存。

我们创建的原始值、函数、对象等都会占用内存，内存的管理是自动的，无形的。在JavaScript中，内存管理最主要的概念是可达性。

## 可达性

## WeakMap 和 WeakSet

### WeakMap 

WeakMap.set
WeakMap.get
WeakMap.has
WeakMap.delete

1. 额外的数据

2. 缓存

```
const cache = new WeakMap()

const process = (obj) => {

    if (!cache.has(obj)) {
        cache.set(obj, obj)
    }

    return cache.get(obj)
}

let obj1 = {

}
```

使用 Map 方法：

```
let john = {
    name: "john"
}

let map = new Map()

map.set(john, "...")

john = null

map.get('john')
// ...
```

共存亡，使用 WeakMap 方法

```
let john = {
    name: "john"
}

let weakmap = new WeakMap()

```
## 可迭代协议和迭代器协议

## 例子

一个不是自己维护的数据源：

```
const message  = [
    {
        id: 1,
        name: 'leejiahao',
        age: 25
    },
    {
        id: 2,
        name: Bob,
        age: 23
    },
    {
        id: 3,
        name: Steven,
        age: 22 
    }

]


```

[1. 通过JavaScript垃圾回收机制来理解WeakSet/WeakMap中对象的弱引用](https://www.jianshu.com/p/c99dd69a8f2c)
[2. WeakMap and WeakSet](https://zh.javascript.info/weakmap-weakset)




server {
        listen       80 default_server;
        listen       [::]:80 default_server;
        server_name  www.evil.com;
        root         /usr/share/nginx/html/thinkphp/tp5/public;
        include /etc/nginx/default.d/*.conf;

        location / {
            try_files $uri $uri/ @router;
            index index.html;
        }
        location @router {
            rewrite ^.*$ /index.html last;
        }
        error_page 404 /404.html;
            location = /40x.html {
        }
    }


    location /infoPage {
        root /home/work/webroot;
        index index.html;
        rewrite ^/infoPage/(.*\.html) /infoPage/$1 break;
    }